#!/usr/bin/python3

import sys
import time
import cv2
import numpy as np
import tensorflow as tf
from math import floor

import rospy
from arduino_custom.msg import Arduino_in, Extra
from sensor_msgs.msg import Image
from cv_bridge  import CvBridge, CvBridgeError

from utls_drive import circularMeter, throttleMeter, inferenceMeter
from utls_drive import inversePerspective, cropImage, preProcessing


## == Vairable Initializations == ##
global cv_img
global received_img
global object_detected

received_img = False
object_detected = False
steering = 0
throttle = 0
str_multiplier = 1.0
thr_multiplier = 1.0
inferenceTime = 0
thr_time = 0
check_time = 0
pause_time = 2

bridge = CvBridge()
folderPath = "/home/flakka/Models/Autonomous_RC"


## == ROS FUNCTIONS == ##
def callbackImage(data):
    global cv_img, received_img
    cv_img = bridge.imgmsg_to_cv2(data, "bgr8")
    received_img = True

def callbackObject(data):
    global object_detected
    object_detected = data.object_detected


## == MAIN FUNCTIONS == ##
def main():
    global cv_img, steering, throttle
    thr_time = 0

    print("#############################")
    print("#                           #")
    print("#         RUNNING!!!        #")
    print("#                           #")
    print("#############################")

    while not rospy.is_shutdown():
        if received_img:
            imgDisplay = cv_img.copy()

            # IMAGE MANIPULATION
            laneImage = np.asarray(cv_img.copy())
            laneImage = inversePerspective(laneImage)
            laneImage = cropImage(laneImage)
            laneImage = preProcessing(laneImage, thres=True)

            laneImage = np.array([laneImage])
            x = tf.constant(laneImage)

            # IMAGE MANIPULATION TIME
            startTime = time.time()

            # INFERENCE
            result = infer(input_1=x)
            predictSteering = float(result['steering_out'][0][0].numpy())
            predictThrottle = float(result['throttle_out'][0][0].numpy())
            predictSteering = float(format(predictSteering, '.4f'))
            predictThrottle = float(format(predictThrottle, '.4f'))

            # PREDICTION TIME
            inferenceTime = (time.time() - startTime) ** -1
            inferenceTime = float(format(inferenceTime, '.2f'))

            # ADJUST
            steering = predictSteering * str_multiplier
            throttle = predictThrottle * thr_multiplier

            # LIMITER
            if steering > 1: steering = 1
            elif steering < -1: steering = -1

            if throttle > 1: throttle = 1
            elif throttle < -1: throttle = -1

            # IF THERE IS OBJECT DETECTED
            if object_detected: thr_time = time.time()

            check_time = floor(time.time() - thr_time)
            if check_time <= pause_time: throttle = 0

            # PREDICTED VALUE DISPLAY
            color = (0, 255, 255)
            imgDisplay = circularMeter(imgDisplay, color, steering, "", txtPos=5)
            imgDisplay = cv2.putText(imgDisplay, "Steering", (0, 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 1, cv2.LINE_AA)

            color = (255, 0, 255)
            imgDisplay = throttleMeter(imgDisplay, color, throttle, meterPos=5, txtPos=5)
            imgDisplay = cv2.putText(imgDisplay, "Throttle", (0, 25), cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 1, cv2.LINE_AA)

            color = (255, 255, 0)
            imgDisplay = inferenceMeter(imgDisplay, color, inferenceTime, txtPos=40)

        else:
            steering = 0
            throttle = 0

        # PUBLISH
        msg1 = Arduino_in()
        msg1.steering = steering
        msg1.throttle = throttle

        msg2 = Extra()
        msg2.inference_drive = inferenceTime

        msg3 = bridge.cv2_to_imgmsg(imgDisplay, 'bgr8')

        pub1.publish(msg1)
        pub2.publish(msg2)
        pub3.publish(msg3)

        rospy.loginfo("steering: %f _ throttle: %f _ inference fps: %f", steering, throttle, inferenceTime)


if __name__ == "__main__":
    # ROS INITIALIZATION
    rospy.init_node("auto_drive", anonymous=False)
    rospy.Subscriber("/img", Image, callbackImage)
    rospy.Subscriber("/cmd_obj", Extra, callbackObject)
    pub1 = rospy.Publisher("/cmd_in", Arduino_in, queue_size=1)
    pub2 = rospy.Publisher("/monitor", Extra, queue_size=1)
    pub3 = rospy.Publisher("/img_drive", Image, queue_size=2)

    # Additional Input Arguments
    args = rospy.myargv(argv=sys.argv)
    if len(args) != 2:
        print("No Model Path Specified!!!")
        sys.exit(1)
    modelPath = args[1]

    # LOADING MODEL
    model = tf.saved_model.load(folderPath + modelPath)
    print(list(model.signatures.keys()))
    infer = model.signatures['serving_default']
    print(infer.structured_outputs)

    try:
        main()
    except rospy.ROSInterruptException:
        pass



