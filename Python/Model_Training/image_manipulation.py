import numpy as np
import cv2
import random
from imgaug import augmenters as iaa

###===== FUNCTIONS =====####

# InversePerspective
def inversePerspective(img):
    pts1 = np.float32([[0, 140], [60, 40],
                        [260, 40], [320, 140]]
                       )
    pts2 = np.float32([[30, 140], [30, 40],
                        [290, 40], [290, 140]]
                       )
    matrix = cv2.getPerspectiveTransform(pts1, pts2)
    result = cv2.warpPerspective(img, matrix, img.shape[1::-1])
    return result

# Crop/Cut Image
def cropImage(img):
    return img[0:164,:,:]

# Pre-processing Images
def preProcessing(img, thres = False):
    img = cv2.GaussianBlur(img, (3, 3), cv2.BORDER_DEFAULT)
    if thres:
        img = thresholding(img)
    else:
        # img = cv2.cvtColor(img, cv2.COLOR_BGR2YUV)
        None
    img = img.astype('float32')/255.0
    return img

# Line extractor
def thresholding(img):
    img = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
    lowerWhite = np.array([49, 10, 0])
    upperWhite = np.array([114, 138, 255])
    img = cv2.inRange(img, lowerWhite, upperWhite)
    img = cv2.cvtColor(img, cv2.COLOR_GRAY2RGB)
    return img

# Image Augmentation
def augmentImage(img1, img2, steering):
    augmentPercent = 0.3

    if np.random.rand() < augmentPercent:
        # Panning
        pan = iaa.Affine(translate_percent={'x':(-0.1, 0.1), 'y':(-0.1, 0.1)})
        img1 = pan.augment_image(img1)
        img2 = pan.augment_image(img2)

    if np.random.rand() < augmentPercent:
        # Zoom
        zoom = iaa.Affine(scale=(1, 1.2))
        img1 = zoom.augment_image(img1)
        img2 = zoom.augment_image(img2)

    if np.random.rand() < augmentPercent:
        # Brightness
        brightness = iaa.Multiply(0.7, 1.0)
        img1 = brightness.augment_image(img1)
        img2 = brightness.augment_image(img2)

    if np.random.rand() < augmentPercent:
        # Flipping
        img1 = cv2.flip(img1, 1)
        img2 = cv2.flip(img2, 1)
        steering = -steering

    return img1, img2, steering


#===============================================================#
#=== Batch Generator ===#
def batchGenerator(datasets, batchSize, trainFlag=False, inputNumber=0):
    imagePathList, steeringList, throttleList = datasets

    while True:
        naturalImageBatch = []
        laneImageBatch = []
        steeringBatch = []
        throttleBatch = []

        for i in range(batchSize):
            index = random.randint(0, len(imagePathList)-1)
            imgRead = cv2.imread(imagePathList[index])

            # Split into two Image
            naturalImage = imgRead
            laneImage = imgRead

            # Image Manipulation
            naturalImage = cropImage(naturalImage)

            laneImage = inversePerspective(laneImage)
            laneImage = cropImage(laneImage)

            # For Training Data
            if trainFlag:
                # Data Augmentation
                naturalImage, laneImage, steering = augmentImage(naturalImage, laneImage, steeringList[index])
                throttle = throttleList[index]
            # For Validation Data
            else:
                steering = steeringList[index]
                throttle = throttleList[index]

            # Image Manipulation
            naturalImage = preProcessing(naturalImage, thres=False)
            laneImage = preProcessing(laneImage, thres=True)

            naturalImageBatch.append(naturalImage)
            laneImageBatch.append(laneImage)
            steeringBatch.append(steering)
            throttleBatch.append(throttle)

            if inputNumber == 1:
                inputBatch = np.asarray(laneImageBatch)
            elif inputNumber == 2:
                inputBatch = [np.asarray(naturalImageBatch), np.asarray(laneImageBatch)]

        yield (inputBatch,
               {'steering_out': np.asarray(steeringBatch), 'throttle_out': np.asarray(throttleBatch)}
               )
