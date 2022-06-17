#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image
from cv_bridge  import CvBridge, CvBridgeError

import cv2

bridge = CvBridge()

def callback(data):
    cv_img = bridge.imgmsg_to_cv2(data, "bgr8")
    rospy.loginfo("Image Received...")

    # cv2.imshow("IMG Received", cv_img)
    # cv2.waitKey(1)


def main():
    rospy.spin()


if __name__ == "__main__":
    #ROS INITIALIZATION
    rospy.init_node("image_subscriber", anonymous=True)
    rospy.Subscriber("/img", Image, callback)
    
    try:
        main()

    except rospy.ROSInterruptException:
        pass


