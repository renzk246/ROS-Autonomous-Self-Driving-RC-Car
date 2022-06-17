import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.utils import shuffle



###===== FUNCTIONS =====####

#=== Data Initialization ===#
def getName(filePath):
    return filePath.split('/')[-1]

def importData(path, debug=False):
    columns = ['Center', 'Steering', 'Throttle']
    data = pd.read_csv(os.path.join(path, 'driving_log.csv'), names=columns)

    # Debug
    if debug:
        print(data.head())
        print(data['Center'][0])
        print(getName(data['Center'][0]))

    data['Center'] = data['Center'].apply(getName)              # Replacing the value in the CSV File (Center Array)
    print('Total Images Imported', data.shape[0])

    # Debug
    if debug:
        print(data.head())

    return data


#=== Balancing Data ===#
def balanceData(data, samples, debug=False):
    nBins = 31
    samplesPerBin = samples
    hist, bins = np.histogram(data['Steering'], nBins)

    # Debug
    if debug:
        center = (bins[:-1] + bins[1:]) * 0.485
        plt.bar(center, hist, width= 0.05)
        plt.plot((-1,1),(samplesPerBin,samplesPerBin))
        plt.xlabel('Steering')
        plt.ylabel('Number of Data')
        plt.show()

    # Removing Data
    removeIndexList = []
    for i in range(nBins):
        binDataList = []
        for j in range(len(data['Steering'])):
            if data['Steering'][j] >= bins[i] and data['Steering'][j] <= bins[i+1]:
                binDataList.append(j)

        binDataList = shuffle(binDataList)
        binDataList = binDataList[samplesPerBin:]
        removeIndexList.extend(binDataList)

    data.drop(data.index[removeIndexList], inplace=True)            # Removing the specified list from the data list

    print('Removed Images: ', len(removeIndexList))
    print('Remaning Images: ', len(data))

    if debug:
        hist, bins = np.histogram(data['Steering'], nBins)
        center = (bins[:-1] + bins[1:]) * 0.485
        plt.bar(center, hist, width= 0.05)
        plt.plot((-1,1),(samplesPerBin,samplesPerBin))
        plt.xlabel('Steering')
        plt.ylabel('Number of Data')
        plt.show()

    return data


#=== Data Separation, Train_Valid Datasets Splitting, and Converting List to Numpy Array ===#
def loadData(path, data, val_size=0, debug=False):
    imagePath_train = []
    imagePath_val = []
    steering_train = []
    steering_val = []
    throttle_train = []
    throttle_val = []

    for i in range(len(data)):
        indexedData = data.iloc[i]

        if np.random.rand() < val_size:
            imagePath_val.append(os.path.join(path, 'IMG', indexedData[0]))
            steering_val.append(float(indexedData[1]))
            throttle_val.append(float(indexedData[2]))
        else:
            imagePath_train.append(os.path.join(path, 'IMG', indexedData[0]))
            steering_train.append(float(indexedData[1]))
            throttle_train.append(float(indexedData[2]))

    imagePath_train = np.asarray(imagePath_train)
    steering_train = np.asarray(steering_train)
    throttle_train = np.asarray(throttle_train)
    imagePath_val = np.asarray(imagePath_val)
    steering_val = np.asarray(steering_val)
    throttle_val = np.asarray(throttle_val)

    # Debug
    if debug:
        # print(imagePath_train, steering_train, throttle_train)
        # print(imagePath_val, steering_val, throttle_val)
        print(len(imagePath_train), len(steering_train), len(throttle_train))
        print(len(imagePath_val), len(steering_val), len(throttle_val))

    print('Path', imagePath_train[0])
    print('Train Data: ', len(imagePath_train))
    print('Validation Data: ', len(imagePath_val))

    train_data = (imagePath_train, steering_train, throttle_train)
    val_data = (imagePath_val, steering_val, throttle_val)

    return train_data, val_data


