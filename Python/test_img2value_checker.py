from utls_drive import *
from Model_Training.load_data import importData, loadData

path = '/media/flakka/EXT/Datasets/Data2'                   # PATH TO THE DATASET
adjust = 0
playSpeed = 50

steering = 0
throttle = 0

###====== MAIN ======###
def main():

    for i in range(len(data[0])):
        img = cv2.imread(data[0][i+adjust])
        steering = data[1][i]
        throttle = data[2][i]

        color = (0, 255, 255)
        img = circularMeter(img, color, steering, "", 5)

        color = (255, 0, 255)
        img = throttleMeter(img, color, throttle, meterPos=5, txtPos=5)

        color = (255, 255, 0)
        img = inferenceMeter(img, color, 60.0, txtPos=5)

        cv2.imshow('test', cv2.resize(img, (528, 528)))
        cv2.waitKey(playSpeed)


if __name__ == '__main__':
    data = importData(path, False)
    data, nah = loadData(path, data, False)
    try:
        main()
    except KeyboardInterrupt:
        pass

cv2.destroyAllWindows()