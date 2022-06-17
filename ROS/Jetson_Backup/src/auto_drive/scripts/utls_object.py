import os
import sys
import time
import cv2
import numpy as np
import tensorflow as tf

# from utls_drive import cropImage

np.random.seed(123)

class Detector:
    def __init__(self):
        pass

    def readClasses(self, classesFilePath):
        with open(classesFilePath, 'r') as f:
            self.classesList = f.read().splitlines()

        self.colorList = np.random.uniform(0, 255, size=(len(self.classesList), 3))

        print(len(self.classesList), len(self.colorList))


    def createBoundingBox(self, image, detections):

        object_detected = False
        for detection in detections:
            bbox = int(detection.Bottom), int(detection.Top), int(detection.Left), int(detection.Right)
            classIndex = detection.ClassID
            classLabelText = self.classesList[classIndex]
            objectList = ['car', 'street sign', 'stop sign']

            if classLabelText in objectList:
                object_detected = True

                classConfidence = format((detection.Confidence * 100), '.2f')

                classColor = self.colorList[classIndex]

                displayText = "{}: {}%".format(classLabelText, classConfidence)

                ymin, ymax, xmin, xmax = bbox

                cv2.rectangle(image, (xmin, ymin), (xmax, ymax), color=classColor, thickness=1)
                cv2.putText(image, displayText, (xmin, ymax-10), cv2.FONT_HERSHEY_PLAIN, fontScale=1, color=classColor, thickness=2)

        return image, object_detected




