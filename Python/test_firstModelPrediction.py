import os
import sys
import cv2
import numpy as np
import random
import time
import matplotlib.pyplot as plt
import tensorflow as tf

from datetime import datetime
from utls_drive import circularMeter, throttleMeter, inferenceMeter
from utls_drive import inversePerspective, cropImage, preProcessing
from Model_Training.load_data import importData, loadData

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '0'

# Variable Initialization
dataPath = '/media/flakka/EXT/Datasets/Data2'                   # PATH TO THE DATASET
outputPath = 'Prediction_Test'
playSpeed = 30

global imgList, steeringList, throttList
global countFolder, imgPath
global errorList, inferenceList

actualSteering = 0
actualThrottle = 0
predictSteering = 0
predictThrottle = 0
countFolder = 0

indexList = []
actualSteeringList = []
actualThrottleList = []
predictSteeringList = []
predictThrottleList = []
imgList = []
steeringList = []
throttList = []
errorList = []
inferenceList = []


# SAVE IMAGE TO A FOLDER
def saveData(img):
    global imgList, imgPath

    # CREATING A UNIQUE FILENAME FOR EACH IMAGE
    now = datetime.now()
    timestamp = str(datetime.timestamp(now)).replace('.', '')
    fileName = os.path.join(imgPath, f'Image_{str(timestamp)}.jpg')
    cv2.imwrite(fileName, img)

###====== MAIN ======###
def main(display=False, mix=False, limit=False, savePlot=False, saveImage=False):
    global countFolder, imgPath
    global errorList

    # Limits the Images or Not.
    if limit:
        centerFrame = 2220
        startFrame = centerFrame - 400
        endFrame = centerFrame + 400
        total = endFrame
    else:
        startFrame = 0
        total = len(data[0])
    init = startFrame

    # If Want to Save the images.
    if saveImage:
        # CREATES NEW FOLDER
        fileName = modelPath.split('/')[-1]

        newPath = outputPath + "/test_" + fileName
        imgPath = newPath + "/IMG"
        os.makedirs(newPath)
        os.makedirs(imgPath)

    # MAIN LOOP
    while startFrame <= total:

        # INITIALIZE STARTING FRAME
        i = startFrame
        if mix:
            index = random.randint(0, len(data[0])-1)
        else:
            index = i

        # READ DATA
        imgRead = cv2.imread(data[0][index])
        actualSteering = data[1][index]
        actualThrottle = data[2][index]

        # ACTUAL VALUE DISPLAY
        color = (255, 0, 0)
        imgDisplay = circularMeter(imgRead, color, actualSteering, "Human Value", 5)
        imgDisplay = throttleMeter(imgDisplay, color, actualThrottle, meterPos=5, txtPos=5)

        # GET STARTING TIME
        startTime = time.time()

        # IMAGE MANIPULATION
        laneImage = np.asarray(imgRead.copy())
        laneImage = inversePerspective(laneImage)
        laneImage = cropImage(laneImage)
        laneImage = preProcessing(laneImage, thres=True)

        laneImage = np.array([laneImage])
        x = tf.constant(laneImage)

        # IMAGE MANIPULATION TIME
        imgTime = float(format(time.time()-startTime, '.4f'))
        startTime = time.time()

        # INFERENCE
        result = infer(input_1 = x)
        predictSteering = float(result['steering_out'][0][0].numpy())
        predictThrottle = float(result['throttle_out'][0][0].numpy())
        predictSteering = float(format(predictSteering, '.4f'))
        predictThrottle = float(format(predictThrottle, '.4f'))

        # PREDICTION TIME
        inferenceTime = (time.time() - startTime) ** -1
        inferenceTime = float(format(inferenceTime, '.2f'))


        # Limiter
        if predictSteering < -1.0:
            predictSteering = -1.0
        elif predictSteering > 1.0:
            predictSteering = 1.0
        if predictThrottle < -1.0:
            predictThrottle = -1.0
        elif predictThrottle > 1.0:
            predictThrottle = 1.0


        # PREDICTED VALUE DISPLAY
        color = (0, 255, 0)
        imgDisplay = circularMeter(imgDisplay, color, predictSteering, "Predicted Value", 20)
        imgDisplay = throttleMeter(imgDisplay, color, predictThrottle, meterPos=20, txtPos=20)

        color = (255, 255, 0)
        imgDisplay = inferenceMeter(imgDisplay, color, inferenceTime, txtPos=40)


        # APPENDING VALUES
        indexList.append(i-init)
        actualSteeringList.append(float(actualSteering))
        actualThrottleList.append(float(actualThrottle))
        predictSteeringList.append(float(predictSteering))
        predictThrottleList.append(float(predictThrottle))
        inferenceList.append(float(inferenceTime))

        # Save Image
        img = imgDisplay
        if saveImage:
            saveData(img)

        # Display Image
        if display:
            cv2.imshow('test', img)
            cv2.waitKey(playSpeed)

        print("{} out of {} _ IMGProcessing: {}s _ Inference FPS: {}".format(i, total, imgTime, inferenceTime))
        startFrame += 1

    # PLOT FOR STEERING ACCURACY RESULT
    plt.figure(figsize=(10, 5))
    plt.ylim(-1.1, 1.1)
    plt.xlim(0, len(indexList))
    plt.plot(indexList, actualSteeringList, color="blue")
    plt.plot(indexList, predictSteeringList, color="green")
    plt.legend(["Human", "Predicted"])
    plt.xlabel("Images")
    plt.ylabel("Steering")
    plt.text(len(indexList) + 1, 1, "Right", fontsize=12)
    plt.text(len(indexList) + 1, -1, "Left", fontsize=12)
    plt.title("Steering Inference")
    if savePlot:
        filename = modelPath.split('/')[-1]
        plt.savefig(f'{outputPath}/steeringAccuracy_{str(filename)}.png')
    plt.show()
    plt.close()

    # PLOT FOR THROTTLE ACCURACY RESULT
    plt.figure(figsize=(10, 5))
    plt.ylim(0, 1.1)
    plt.xlim(0, len(indexList))
    plt.plot(indexList, actualThrottleList, color="blue")
    plt.plot(indexList, predictThrottleList, color="green")
    plt.legend(["Human", "Predicted"])
    plt.xlabel("Images")
    plt.ylabel("Throttle")
    plt.title("Throttle Inference")
    if savePlot:
        filename = modelPath.split('/')[-1]
        plt.savefig(f'{outputPath}/throttleAccuracy_{str(filename)}.png')
    plt.show()
    plt.close()

    # PLOT FOR INFERENCE TIME RESULT
    ymax = 200
    average = np.median(inferenceList)
    average = str(format(average, '.2f'))

    plt.figure(figsize=(10, 5))
    plt.ylim(0, ymax)
    plt.xlim(0, len(indexList))
    plt.plot(indexList, inferenceList, color="red")
    plt.legend(["Inference Time"])
    plt.xlabel("Image Frames")
    plt.ylabel("FPS")
    plt.text(len(indexList) + 1, ymax * 0.54, "Mean FPS", fontsize=12)
    plt.text(len(indexList) + 1, ymax * 0.46, average, fontsize=12)
    plt.title("Inference Time")
    print(f'Average Inference FPS: {average}')
    if savePlot:
        filename = modelPath.split('/')[-1]
        plt.savefig(f'{outputPath}/inferenceTime_{str(filename)}.png')
    plt.show()


if __name__ == '__main__':
    # LOADING MODEL
    args = sys.argv
    if len(args) != 2:
        print("No Model Path Specified!!!")
        sys.exit(1)
    modelPath = args[1]

    model = tf.saved_model.load(modelPath)
    print(list(model.signatures.keys()))
    infer = model.signatures['serving_default']
    print(infer.structured_outputs)

    # IMPORTING DATA
    data = importData(dataPath, False)
    data, nah = loadData(dataPath, data, False)

    try:
        main(display=False, mix=False, limit=True, savePlot=True, saveImage=True)
    except KeyboardInterrupt:
        pass

cv2.destroyAllWindows()






