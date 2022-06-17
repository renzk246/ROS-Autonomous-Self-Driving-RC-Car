import os
import sys
import cv2
import numpy as np
import pandas as pd
from datetime import datetime

# PATH & SETTING
dataPath = 'Data0'
adjustedValue = 0
imageFormat = '.jpg'

# VARIABLES INITIALIZATIONS
global imgList, steeringList, throttleList

imgList = []
steeringList = []
throttleList = []
countFolder = 0

#=== Data Path Initialization ===#
def getName(filePath):
    return filePath.split('/')[-1]

def importImage(path, debug=False):
    columns = ['Center', 'Steering', 'Throttle']
    data = pd.read_csv(os.path.join(path, 'driving_log.csv'), names=columns)

    # Debug
    if debug:
        print(data.head())
        print(data['Center'][0])
        print(getName(data['Center'][0]))

    data['Center'] = data['Center'].apply(getName)              # Replacing the value in the CSV File (Center Array)
    print('Total Images Imported', data.imageShape[0])

    # Debug
    if debug:
        print(data.head())

    return data

#=== Data Separation ===#
def loadData(path, data, debug=False):
    imagePath = []
    steering = []
    throttle = []

    for i in range(len(data)):
        indexedData = data.iloc[i]

        imagePath.append(os.path.join(path, 'IMG', indexedData[0]))
        steering.append(float(indexedData[1]))
        throttle.append(float(indexedData[2]))

    imagePath = np.asarray(imagePath)
    steering = np.asarray(steering)
    throttle = np.asarray(throttle)

    # Debug
    if debug:
        print(imagePath, steering, throttle)
        print(len(imagePath), len(steering), len(throttle))

    data = (imagePath, steering, throttle)
    return data

# SAVE IMAGE TO A FOLDER
def saveData(img, steering, throttle):
    global imgList, steeringList, throttleList
    global imgPath

    # CREATING A UNIQUE FILENAME FOR EACH IMAGE
    now = datetime.now()
    timestamp = str(datetime.timestamp(now)).replace('.', '')
    fileName = os.path.join(imgPath, f'Image_{str(timestamp)}'+imageFormat)
    cv2.imwrite(fileName, img)

    # ADDING TO AN ARRAY LIST BEFORE SAVING
    imgList.append(fileName)
    steeringList.append(format(steering, '.4f'))
    throttleList.append(format(throttle, '.4f'))

# SAVE LOG FILE IN CSV
def saveLog():
    global imgList, steeringList, throttleList
    rawData = {'Image': imgList,
               'Steering': steeringList,
               'Throttle': throttleList,
               }

    # Converting Arrays into DataFrames and Saving it into CSV File
    df = pd.DataFrame(rawData)
    df.to_csv(os.path.join(newPath, f'driving_log.csv'),
              index=False,
              header=False)


###====== MAIN ======###
def main():
    # Loads and Separates Data
    data = importImage(dataPath, False)
    data = loadData(dataPath, data, False)
    total = len(data[0])

    for i in range(total):
        img = cv2.imread(data[0][i+adjustedValue])
        steering = data[1][i]
        throttle = data[2][i]

        saveData(img, steering, throttle)
        print(f'{i} out of {total - adjustedValue}')

        if i == (total - (adjustedValue+1)):
            print('Stopped')
            break

    saveLog()
    print('Process Complete...')

if __name__ == '__main__':
    # Set the Current Directory
    outputPath = os.getcwd()
    print(outputPath)

    # Creates a New Folder
    while os.path.exists(os.path.join(outputPath, f'{dataPath}_{str(countFolder)}-{str(adjustedValue)}')):
        countFolder += 1

    newPath = outputPath + f'/{dataPath}_{str(countFolder)}-{str(adjustedValue)}-{imageFormat.split(".")[-1]}'
    imgPath = newPath + "/IMG"
    os.makedirs(newPath)
    os.makedirs(imgPath)

    try:
        main()

    except KeyboardInterrupt:
        print("Program Interrupted")
        pass
