import os
import numpy as np
import pandas as pd
import cv2
from tensorflow.keras.preprocessing import image
from utls_drive import *

path = 'test_ROI-1.jpg'
output = "Result/"

###===== MAIN =====###
def main():
    for i in range(1):
        img = cv2.imread(path)
        cv2.imshow("Original", img)
        cv2.imwrite(output+"Original.png", img)

        naturalImage = img
        laneImage = img

        # Natural Manipulation
        # color = (255, 0, 0)
        # naturalImage = imagePoint(naturalImage, color, 0)
        # cv2.imshow("Natural Image", naturalImage)

        naturalImage = cropImage(naturalImage)
        # cv2.imshow("cropNatural", naturalImage)

        # Lane Image Manipulation
        # color = (255, 0, 0)
        # laneImage = imagePoint(laneImage, color, 1)
        # cv2.imshow("ROI", laneImage)
        # cv2.imwrite(output + "ROI.png", laneImage)

        laneImage = inversePerspective(laneImage)
        # cv2.imshow("inversePerspective", laneImage)
        # cv2.imwrite(output+"IPM2.png", laneImage)

        color = (0, 255, 0)
        laneImage = imagePoint(laneImage, color, 2)
        # cv2.imshow('cropIPM', laneImage)
        # cv2.imwrite(output+"SetCrop.png", laneImage)

        laneImage = cropImage(laneImage)
        # cv2.imshow('cropLane', laneImage)
        # cv2.imwrite(output+"Crop.png", laneImage)


        ## Augmentation of Two images
        # naturalImage, laneImage, str = augmentImage(naturalImage, laneImage, 0)
        # cv2.imshow('augmentedNatural', naturalImage)
        # cv2.imshow('augmentedLane', laneImage)
        # cv2.imwrite(output+f"Flip{i}.png", laneImage)


        ## Preprocessing
        # naturalImage = preProcessing(naturalImage, thres=False)
        # cv2.imshow('processNatural', naturalImage)
        #
        laneImage = preProcessing(laneImage, thres=True)
        cv2.imshow('processLane', laneImage)
        cv2.imwrite(output+"laneImage.png", laneImage)

    cv2.waitKey(0)

if __name__ == '__main__':
    try:
        main()

    except KeyboardInterrupt:
        pass

cv2.destroyAllWindows()







