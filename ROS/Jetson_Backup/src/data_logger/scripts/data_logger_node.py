#!/usr/bin/python3

import cv2
import os
import pandas as pd
from datetime import datetime

import rospy
from arduino_custom.msg import Arduino_out
from sensor_msgs.msg import Image
from cv_bridge  import CvBridge, CvBridgeError

bridge = CvBridge()
fps = 25

global cv_img, steering, throttle, button2
global imgList, steeringList, throttleList
global recording
countFolder = 0
counter = 0

steering = 0
throttle = 0
button2 = False
recording = False
imgList = []
steeringList = []
throttleList = []


#===== DATA COLLECTION FUNCTIONS =====#

# SET OUTPUT DIRECTORY
myDir = '/home/flakka/Models/Autonomous_RC'

# CREATES NEW FOLDER
while os.path.exists(os.path.join(myDir, f'Data{str(countFolder)}')):
    countFolder += 1

newPath = myDir + "/Data" + str(countFolder)
imgPath = newPath + "/IMG"
os.makedirs(newPath)
os.makedirs(imgPath)

# SAVE IMAGE TO A FOLDER
def saveData(img, steering, throttle):
    global imgList, steeringList, throttleList

    # CREATING A UNIQUE FILENAME FOR EACH IMAGE
    now = datetime.now()
    timestamp = str(datetime.timestamp(now)).replace('.', '')
    fileName = os.path.join(imgPath, f'Image_{str(timestamp)}.png')
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


#===== ROS FUNCTIONS =====#

def callbackArduino(data):
    global steering, throttle, button2
    steering = data.steering
    throttle = data.throttle
    button2 = data.button2


def callbackImage(data):
    global cv_img
    cv_img = bridge.imgmsg_to_cv2(data, "bgr8")

    # cv2.waitKey(1)


#===== MAIN FUNCTION =====#
def main():
    global imgList, steeringList, throttleList
    global cv_img, steering, throttle, button2, recording

    rate = rospy.Rate(fps)
    while not rospy.is_shutdown():
        if button2:
            saveData(cv_img, steering, throttle)
            recording = True

        if (not button2) and recording:
            saveLog()
            recording = False

        rospy.loginfo("steering: %f _ throttle: %f _ recording: %i", steering, throttle, recording)
        rate.sleep()

if __name__ == "__main__":
    # ROS INITIALIZATION
    rospy.init_node("data_collector", anonymous=False)
    rospy.Subscriber("/cmd_out", Arduino_out, callbackArduino)
    rospy.Subscriber("/img", Image, callbackImage)

    try:
        main()
    except rospy.ROSInterruptException:
        pass
