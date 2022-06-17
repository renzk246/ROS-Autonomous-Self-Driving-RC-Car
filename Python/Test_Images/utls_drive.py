import os
import sys
import cv2
import numpy as np
import pandas as pd
from math import sqrt, pow
from imgaug import augmenters as iaa


#====== MAPPING VALUE FUNCTION =====##
def translate(value, leftMin, leftMax, rightMin, rightMax):
    # Figure out how 'wide' each range is
    leftSpan = leftMax - leftMin
    rightSpan = rightMax - rightMin

    # Convert the left range into a 0-1 range (float)
    valueScaled = float(value - leftMin) / float(leftSpan)

    # Convert the 0-1 range into a value in the right range.
    return rightMin + (valueScaled * rightSpan)


###===== IMAGE MANIPULATION FUNCTIONS ======###
#=== Image Point ===#
def imagePoint(img, color, choice):

    if choice == 0:
        pts = np.array([[0, 164], [0, 0],
                        [320, 0], [320, 164]],
                       )
    elif choice == 1:
        pts = np.array([[0, 140], [60, 40],
                        [260, 40], [320, 140]]
                       )
    elif choice == 2:
        pts = np.array([[0, 164], [0, 0],
                        [320, 0], [320, 164]],
                       )


    pts = pts.reshape((-1, 1, 2))
    isClosed = True
    thickness = 1
    img = cv2.polylines(img, [pts], isClosed, color, thickness)

    return img

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
    # print(img.shape[1::-1])
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
    # img = img.astype('float32')/255.0
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
    augmentPercent = 0.5

    # if np.random.rand() < augmentPercent:
    #     # Panning
    #     pan = iaa.Affine(translate_percent={'x':(-0.1, 0.1), 'y':(-0.1, 0.1)})
    #     img1 = pan.augment_image(img1)
    #     img2 = pan.augment_image(img2)

    # if np.random.rand() < augmentPercent:
    #     # Zoom
    #     zoom = iaa.Affine(scale=(1, 1.2))
    #     img1 = zoom.augment_image(img1)
    #     img2 = zoom.augment_image(img2)

    # if np.random.rand() < augmentPercent:
    #     # Brightness
    #     brightness = iaa.Multiply(0.7, 1.0)
    #     img1 = brightness.augment_image(img1)
    #     img2 = brightness.augment_image(img2)

    if np.random.rand() < augmentPercent:
        # Flipping
        img1 = cv2.flip(img1, 1)
        img2 = cv2.flip(img2, 1)
        steering = -steering

    return img1, img2, steering



###===== IMG2VALUE DISPLAY =====###
def circularMeter(img, color, steering, txtLabel, txtPos):
    # CIRCULAR METER
    R = 60
    h = int(img.shape[1] / 2)
    k = int(img.shape[0])


    x = int(translate(steering, -1, 1, h-R, h+R))
    y = int((sqrt(pow(R, 2) - pow(x-h, 2)) + k))            # USING CIRCLE GRID FORMULA (x-h)^2 + (y-k)^2 = r^2
    y = int(translate(y, k, (R+k), k, k-R))

    center = (h, k)
    endpoint = (x, y)
    thickness = 5
    img = cv2.line(img, center, endpoint, color, thickness)

    # Put Steering Value in the Image
    font = cv2.FONT_HERSHEY_SIMPLEX
    text = str(format(steering, '.4f'))
    org = (h - 20, (img.shape[0] - R) - txtPos)
    fontScale = 0.5
    thickness = 1
    img = cv2.putText(img, text, org, font,
                      fontScale, color, thickness, cv2.LINE_AA)

    # Put Steering Label in the Image
    font = cv2.FONT_HERSHEY_SIMPLEX
    text = str(txtLabel)
    org = (0, 10+txtPos)
    fontScale = 0.6
    thickness = 1
    img = cv2.putText(img, text, org, font,
                      fontScale, color, thickness, cv2.LINE_AA)
    return img

def steeringMeter(img, color, steering):
    # LINE METER
    point1 = int(img.shape[1] / 2)
    center = (point1, 240)
    point2 = int(translate(steering, -1, 1, 0, img.shape[1]))
    endpoint = (point2, 240)
    thickness = 10
    img = cv2.line(img, center, endpoint, color, thickness)

    # Window name in which image is displayed
    font = cv2.FONT_HERSHEY_SIMPLEX
    text = str(steering)
    org = (140, 230)
    fontScale = 0.5
    thickness = 1
    img = cv2.putText(img, text, org, font,
                      fontScale, color, thickness, cv2.LINE_AA)

    return img

def throttleMeter(img, color, throttle, meterPos, txtPos):
    # LINE METER
    point1 = int(img.shape[0])
    bottom = (img.shape[1] - meterPos, point1)
    point2 = int(translate(throttle, 1, 0, 0, img.shape[0]))
    endpoint = (img.shape[1] - meterPos, point2)
    thickness = 10
    img = cv2.line(img, bottom, endpoint, color, thickness)

    # Window name in which image is displayed
    font = cv2.FONT_HERSHEY_SIMPLEX
    text = str(throttle)
    org = (img.shape[1] - 90, int(img.shape[0]/2) - txtPos)
    fontScale = 0.5
    thickness = 1
    img = cv2.putText(img, text, org, font,
                      fontScale, color, thickness, cv2.LINE_AA)
    return img

def inferenceMeter(img, color, inferenceTime, txtPos):
    # TXT-1 Display
    font = cv2.FONT_HERSHEY_SIMPLEX
    text = "Inference(fps):"
    org = (0, 10+txtPos)
    fontScale = 0.5
    thickness = 1
    img = cv2.putText(img, text, org, font,
                      fontScale, color, thickness, cv2.LINE_AA)

    # TXT-2 Display
    font = cv2.FONT_HERSHEY_SIMPLEX
    text = str(inferenceTime)
    org = (0, 25 + txtPos)
    fontScale = 0.5
    thickness = 1
    img = cv2.putText(img, text, org, font,
                      fontScale, color, thickness, cv2.LINE_AA)

    return img