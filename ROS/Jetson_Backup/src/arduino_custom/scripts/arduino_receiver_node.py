#!/usr/bin/env python3

import rospy
from arduino_custom.msg import Arduino_out

def callback(data):
    a = data.message
    b = data.steering
    c = data.throttle
    d = data.button1
    e = data.button2

    rospy.loginfo("%s _ steering: %f _ throttle: %f _ button1: %i _ button2: %i", a, b, c, d, e)


def main():
    rospy.init_node("arduino_receiver_node", anonymous=True)
    rospy.Subscriber("test", Arduino_out, callback)

    rospy.spin()

if __name__ == "__main__":
    try:
        main()

    except rospy.ROSInterruptException:
        pass

