from Model_Training.load_data import importData, loadData
from utls_drive import *

path = '/media/flakka/EXT/Datasets/Data2'                   # PATH TO THE DATASET
playSpeed = 20

###===== MAIN =====###
def main():

    for i in range(len(data[0])):
        img = cv2.imread(data[0][i])
        cv2.imshow("Original", img)

        naturalImage = img
        laneImage = img

        # Natural Manipulation
        color = (255, 0, 0)
        naturalImage = imagePoint(naturalImage, color, 0)
        cv2.imshow("Natural Image", naturalImage)

        naturalImage = cropImage(naturalImage)
        cv2.imshow("cropNatural", naturalImage)


        # Lane Image Manipulation
        color = (255, 0, 0)
        laneImage = imagePoint(laneImage, color, 1)
        cv2.imshow("ROI", laneImage)

        laneImage = inversePerspective(laneImage)
        cv2.imshow("inversePerspective", laneImage)

        color = (0, 255, 0)
        laneImage = imagePoint(laneImage, color, 2)
        cv2.imshow('cropIPM', laneImage)

        laneImage = cropImage(laneImage)
        cv2.imshow('cropLane', laneImage)



        # Augmentation of Two images
        naturalImage, laneImage, str = augmentImage(naturalImage, laneImage, 0)
        cv2.imshow('augmentedNatural', naturalImage)
        cv2.imshow('augmentedLane', laneImage)

        # Preprocessing
        naturalImage = preProcessing(naturalImage, thres=False)
        cv2.imshow('processNatural', naturalImage)

        laneImage = preProcessing(laneImage, thres=True)
        cv2.imshow('processLane', laneImage)
        cv2.waitKey(playSpeed)

if __name__ == '__main__':
    data = importData(path, False)
    data, nah = loadData(path, data, False)

    try:
        main()

    except KeyboardInterrupt:
        pass

cv2.destroyAllWindows()







