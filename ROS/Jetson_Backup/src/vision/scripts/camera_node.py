#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image
from cv_bridge  import CvBridge, CvBridgeError

import cv2

cwidth = 1640
cheight = 1232
dispW = 320
dispH = 240
flip = 2
fps = 30
camSet='nvarguscamerasrc !  video/x-raw(memory:NVMM), width='+str(cwidth)+', height='+str(cheight)+', format=NV12, framerate='+str(fps)+'/1 ! nvvidconv flip-method='+str(flip)+' ! video/x-raw, width='+str(dispW)+', height='+str(dispH)+', format=BGRx ! videoconvert ! video/x-raw, format=BGR ! appsink'

vid = cv2.VideoCapture(camSet)
print(vid.isOpened())
bridge = CvBridge()

def main():
    while not rospy.is_shutdown():
        ref, cv_img = vid.read()
        if not ref:
            break

        msg = bridge.cv2_to_imgmsg(cv_img, 'bgr8')
        pub.publish(msg)

    vid.release()

if __name__ == "__main__":
    # ROS INITIALIZATION
    pub = rospy.Publisher("/img", Image, queue_size=1)
    rospy.init_node("webcam", anonymous=True)

    try:
        main()
    except rospy.ROSInterruptException:
        pass






