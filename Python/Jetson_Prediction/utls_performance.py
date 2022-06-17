import os
import sys
import cv2
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


#=== Data Initialization ===#
def getName(filePath):
    return filePath.split('/')[-1]

def importData(path, debug=False):
    columns = ['Drive', 'Inference_Drive', 'Inference_Object', 'Object']
    data = pd.read_csv(os.path.join(path, 'driving_log.csv'), names=columns)

    data['Drive'] = data['Drive'].apply(getName)              # Replacing the value in the CSV File
    data['Object'] = data['Object'].apply(getName)            # Replacing the value in the CSV File
    print('Total Images Imported', data.shape[0])

    # Debug
    if debug:
        print(data.head())

    return data

#=== Data Separation, Train_Valid Datasets Splitting, and Converting List to Numpy Array ===#
def loadData(path, data, val_size=0, debug=False):
    imageDrive = []
    imageObject = []
    inferenceDrive = []
    inferenceObject = []

    for i in range(len(data)):
        indexedData = data.iloc[i]

        imageDrive.append(os.path.join(path, 'IMG', 'Drive', indexedData[0]))
        imageObject.append(os.path.join(path, 'IMG', 'Object', indexedData[3]))
        inferenceDrive.append(float(indexedData[1]))
        inferenceObject.append(float(indexedData[2]))


    imageDrive = np.asarray(imageDrive)
    imageObject = np.asarray(imageObject)
    inferenceDrive = np.asarray(inferenceDrive)
    inferenceObject = np.asarray(inferenceObject)

    print('Drive Image Path', imageDrive[0])
    print('Object Image Path', imageObject[0])
    print('Drive Data: ', len(imageDrive))
    print('Object Data: ', len(imageObject))

    totalData = (imageDrive, imageObject, inferenceDrive, inferenceObject)

    return totalData




