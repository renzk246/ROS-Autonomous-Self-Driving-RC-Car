import os
import cv2
import numpy as np
import pandas as pd
from Model_Training.load_data import importData, loadData
from utls_drive import *

path = '/media/flakka/EXT/Datasets/Data2'               # PATH TO THE DATASET
playSpeed = 30

frameWidth = 640
frameHeight = 480
cap = cv2.VideoCapture(1)
cap.set(3, frameWidth)
cap.set(4, frameHeight)


def empty(a):
    pass

cv2.namedWindow("HSV")
cv2.resizeWindow("HSV",640,240)
cv2.createTrackbar("BLUR Value","HSV", 0, 4, empty)
cv2.createTrackbar("HUE Min","HSV",0,179,empty)
cv2.createTrackbar("HUE Max","HSV",179,179,empty)
cv2.createTrackbar("SAT Min","HSV",0,255,empty)
cv2.createTrackbar("SAT Max","HSV",255,255,empty)
cv2.createTrackbar("VALUE Min","HSV",0,255,empty)
cv2.createTrackbar("VALUE Max","HSV",255,255,empty)


def main():
    data = importData(path, True)

    for i in range(len(data)):
        blur = cv2.getTrackbarPos("BLUR Value", "HSV")
        h_min = cv2.getTrackbarPos("HUE Min", "HSV")
        h_max = cv2.getTrackbarPos("HUE Max", "HSV")
        s_min = cv2.getTrackbarPos("SAT Min", "HSV")
        s_max = cv2.getTrackbarPos("SAT Max", "HSV")
        v_min = cv2.getTrackbarPos("VALUE Min", "HSV")
        v_max = cv2.getTrackbarPos("VALUE Max", "HSV")
        print(blur, h_min, h_max, s_min, s_max, v_min, v_max)

        if blur == 0:   blurVal = (1, 1)
        elif blur == 1: blurVal = (3, 3)
        elif blur == 2: blurVal = (5, 5)
        elif blur == 3: blurVal = (7, 7)
        elif blur == 4: blurVal = (9, 9)

        img = cv2.imread(os.path.join(path, 'IMG', data["Center"][i]))
        print(img.shape)
        img = inversePerspective(img)
        imgBlur = cv2.GaussianBlur(img, blurVal, cv2.BORDER_DEFAULT)
        imgHsv = cv2.cvtColor(imgBlur,cv2.COLOR_BGR2HSV)

        lower = np.array([h_min,s_min,v_min])
        upper = np.array([h_max,s_max,v_max])
        mask = cv2.inRange(imgHsv,lower,upper)
        result = cv2.bitwise_and(img,img, mask=mask)

        mask = cv2.cvtColor(mask, cv2.COLOR_GRAY2BGR)
        hStack = np.hstack([img,imgBlur,mask,result])
        # cv2.imshow('Original', img)
        # cv2.imshow('HSV Color Space', imgHsv)
        # cv2.imshow('Mask', mask)
        # cv2.imshow('Result', result)
        cv2.imshow('Horizontal Stacking', hStack)

        cv2.waitKey(playSpeed)

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

if __name__ == '__main__':
    main()


cap.release()
cv2.destroyAllWindows()