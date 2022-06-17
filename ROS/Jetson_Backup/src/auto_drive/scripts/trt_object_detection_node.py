#!/usr/bin/python3

import os
import sys
import time
import jetson.inference
import jetson.utils

import rospy
from arduino_custom.msg import Extra
from sensor_msgs.msg import Image
from cv_bridge  import CvBridge, CvBridgeError

from utls_object import Detector
from utls_drive import cropImage

## == Vairable Initializations == ##
global cv_img
global received_img
received_img = False
steering = 0
throttle = 0
str_multiplier = 1.1
thr_multiplier = 1.0
inferenceTime = 0

bridge = CvBridge()
folderPath = "/home/flakka/Models/Autonomous_RC/"
classFile = '/home/flakka/ros_files/autonomous_rc/src/auto_drive/scripts/coco.names'

## == ROS FUNCTIONS == ##
def callbackImage(data):
    global cv_img, received_img
    cv_img = bridge.imgmsg_to_cv2(data, "bgr8")
    received_img = True


## == MAIN FUNCTIONS == ##
def main():
    global cv_img, steering, throttle
    object_detection = None

    print("#############################")
    print("#                           #")
    print("#         RUNNING!!!        #")
    print("#                           #")
    print("#############################")

    while not rospy.is_shutdown():
        if received_img:
            img = cv_img.copy()
            img = cropImage(img)

            ## CV TO CUDA IMAGE
            bgr_img = jetson.utils.cudaFromNumpy(img, isBGR=True)
            rgb_img = jetson.utils.cudaAllocMapped(width=bgr_img.width, height=bgr_img.height, format='rgb8')
            jetson.utils.cudaConvertColor(bgr_img, rgb_img)
            jetson.utils.cudaDeviceSynchronize()

            ## INFERENCE
            startTime = time.time()
            detections = net.Detect(rgb_img)
            inferenceTime = float(format((time.time() - startTime) ** -1, '.2f'))

            ## CREATING BOUNDING BOX AND LABEL
            imageResult, object_detected = detector.createBoundingBox(img, detections)

            # PUBLISH
            msg1 = Extra()
            msg1.object_detected = object_detected

            msg2 = Extra()
            msg2.inference_object = inferenceTime

            msg3 = bridge.cv2_to_imgmsg(imageResult, 'bgr8')

            pub1.publish(msg1)
            pub2.publish(msg2)
            pub3.publish(msg3)

            rospy.loginfo("inference fps: %f _ detection: %i", inferenceTime, object_detected)

if __name__ == "__main__":
    # ROS INITIALIZATION
    rospy.init_node("object_detection", anonymous=False)
    rospy.Subscriber("/img", Image, callbackImage)
    pub1 = rospy.Publisher("/cmd_obj", Extra, queue_size=1)
    pub2 = rospy.Publisher("/monitor", Extra, queue_size=1)
    pub3 = rospy.Publisher("/img_object", Image, queue_size=2)

    # LOAD JETSON MODEL
    net = jetson.inference.detectNet(network="ssd-mobilenet-v2", threshold=0.5)

    # INITIALIZE DETECTOR OBJECT
    detector = Detector()
    detector.readClasses(classFile)

    try:
        main()
    except rospy.ROSInterruptException:
        pass



