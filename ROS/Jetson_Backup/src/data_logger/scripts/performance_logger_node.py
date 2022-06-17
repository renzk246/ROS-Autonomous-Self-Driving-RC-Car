#!/usr/bin/python3

import os
import sys
import cv2
import numpy as np
import pandas as pd
from datetime import datetime

import rospy
from arduino_custom.msg import Arduino_out, Extra
from sensor_msgs.msg import Image
from cv_bridge  import CvBridge, CvBridgeError

bridge = CvBridge()
fps = 20

global cv_img1, cv_img2, inference1, inference2
global imgList1, imgList2, inferenceList1, inferenceList2
global recording, dataLimit, dataCount
countFolder = 0
counter = 0
cv_img1 = []
cv_img2 = []

inference1= 0
inference2 = 0
button2 = False
recording = False
imgList1 = []
imgList2 = []
inferenceList1 = []
inferenceList2 = []

dataLimit = 0
dataCount = 0


#===== DATA COLLECTION FUNCTIONS =====#

# SET OUTPUT DIRECTORY
myDir = '/home/flakka/Models/Autonomous_RC/Monitor'

# CREATES NEW FOLDER
while os.path.exists(os.path.join(myDir, f'Monitor{str(countFolder)}')):
    countFolder += 1

newPath = myDir + "/Monitor" + str(countFolder)
imgPath = newPath + "/IMG"
drivePath = imgPath + "/Drive"
objectPath = imgPath + "/Object"
os.makedirs(newPath)
os.makedirs(imgPath)
os.makedirs(drivePath)
os.makedirs(objectPath)

# SAVE IMAGE TO A FOLDER
def saveData(img1, img2, inference1, inference2):
    global imgList1, imgList2, inferenceList1, inferenceList2

    # CREATING A UNIQUE FILENAME FOR EACH IMAGE
    now = datetime.now()
    timestamp = str(datetime.timestamp(now)).replace('.', '')
    fileName1 = os.path.join(drivePath, f'Drive_{str(timestamp)}.png')
    fileName2 = os.path.join(objectPath, f'Object_{str(timestamp)}.png')

    if np.any(img1):
        cv2.imwrite(fileName1, img1)
    if np.any(img2):
        cv2.imwrite(fileName2, img2)

    # ADDING TO AN ARRAY LIST BEFORE SAVING
    imgList1.append(fileName1)
    imgList2.append(fileName2)
    inferenceList1.append(format(inference1, '.4f'))
    inferenceList2.append(format(inference2, '.4f'))

# SAVE LOG FILE IN CSV
def saveLog():
    global imgList1, imgList2, inferenceList1, inferenceList2
    rawData = {'Drive': imgList1,
               'Object': imgList2,
               'Inference_Drive': inferenceList1,
               'Inference_Object': inferenceList2,
               }

    # Converting Arrays into DataFrames and Saving it into CSV File
    df = pd.DataFrame(rawData)
    df.to_csv(os.path.join(newPath, f'driving_log.csv'),
              index=False,
              header=False)


#===== ROS FUNCTIONS =====#
def callbackArduino(data):
    global button2
    button2 = data.button2

def callbackJetson(data):
    global inference1, inference2
    inference1 = data.inference_drive
    inference2 = data.inference_object

def callbackImageDrive(data):
    global cv_img1
    cv_img1 = bridge.imgmsg_to_cv2(data, "bgr8")

def callbackImageObject(data):
    global cv_img2
    cv_img2 = bridge.imgmsg_to_cv2(data, "bgr8")


#===== MAIN FUNCTION =====#
def main():
    global cv_img1, cv_img2, inference1, inference2, recording, dataCount, dataLimit

    rate = rospy.Rate(fps)
    while not rospy.is_shutdown():
        if button2:
            saveData(cv_img1, cv_img2, inference1, inference2)
            recording = True
            dataCount += 1

        if (not button2) and recording:
            saveLog()
            recording = False

        if dataLimit != 0:
            if dataCount == dataLimit:
                saveLog()
                print("=========================================")
                print(f'Data collection has reached {dataCount}')
                print("=========================================")
                sys.exit(1)


        rospy.loginfo("inference_drive: %f ms _ inference_object: %f ms _ recording: %i _ recorded: %i", inference1, inference2, recording, dataCount)
        rate.sleep()

if __name__ == "__main__":
    # Additional Input Arguments
    args = rospy.myargv(argv=sys.argv)
    if len(args) == 2:
        dataLimit = int(args[1])
        dataCount = 0
        print("===================================")
        print(f'Collecting {dataLimit} of Data')
        print("===================================")

    # ROS INITIALIZATION
    rospy.init_node("performance_logger", anonymous=False)
    rospy.Subscriber("/cmd_out", Arduino_out, callbackArduino)
    rospy.Subscriber("/monitor", Extra, callbackJetson)
    rospy.Subscriber("/img_drive", Image, callbackImageDrive)
    rospy.Subscriber("/img_object", Image, callbackImageObject)

    try:
        main()
    except rospy.ROSInterruptException:
        pass
