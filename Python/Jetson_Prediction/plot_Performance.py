import random
from utls_performance import *

# Variable Initialization
dataPath = '/media/flakka/EXT/Monitor/Monitor6'
outputPath = 'Results'
playSpeed = 50


driveIndexList = []
objectIndexList = []
inferenceDriveList = []
inferenceObjectList = []


### === MAIN FUNCTION === ###
def main(display=False, mix=False, limit=False, savePlot=False, saveImage=False):
    inferenceDriveStart = 0
    inferenceObjectStart = 0

    # Limits the Images or Not.
    if limit:
        centerFrame = 2220
        startFrame = centerFrame - 400
        endFrame = centerFrame + 400
        total = endFrame
    else:
        startFrame = 0
        total = len(data[0]) - 1
    init = startFrame


    while startFrame <= total:
        i = startFrame

        ## INDEX RANDOMIZER
        if mix:
            index = random.randint(0, len(data[0])-1)
        else:
            index = i


        ## READ DATA
        imgDrive = cv2.imread(data[0][index])
        imgObject = cv2.imread(data[1][index])
        inferenceDrive = data[2][index]
        inferenceObject = data[3][index]


        ## APPENDING VALUES
        if inferenceDrive != 0:
            driveIndexList.append(inferenceDriveStart)
            inferenceDriveList.append(float(inferenceDrive))
            inferenceDriveStart += 1
        if inferenceObject != 0:
            objectIndexList.append(inferenceObjectStart)
            inferenceObjectList.append(float(inferenceObject))
            inferenceObjectStart += 1


        ## DISPLAY IMAGE
        if display:
            cv2.imshow("Drive", imgDrive)
            cv2.imshow("Object", imgObject)
            cv2.waitKey(playSpeed)

        print("{} out of {} _ Drive Inference: {} _ Object Inference: {}".format(i, total, inferenceDrive, inferenceObject))
        startFrame += 1

    ## PLOTTING THE DRIVE INFERENCE
    ymax = 200
    average = np.median(inferenceDriveList)
    average = str(format(average, '.2f'))

    plt.figure(figsize=(10, 5))
    plt.ylim(0, ymax)
    plt.xlim(0, len(driveIndexList))
    plt.plot(driveIndexList, inferenceDriveList, color="red")
    plt.legend(["Drive Inference Time"])
    plt.xlabel("Image Frames")
    plt.ylabel("FPS")
    plt.text(len(driveIndexList) + 1, ymax * 0.54, "Mean FPS", fontsize=12)
    plt.text(len(driveIndexList) + 1, ymax * 0.46, average, fontsize=12)
    plt.title("Drive Inference Time")
    print(f'Average Inference FPS: {average}')
    if savePlot:
        filename = dataPath.split('/')[-1]
        plt.savefig(f'{outputPath}/inferenceDrive_{str(filename)}.png')
    plt.show()
    plt.close()

    ## PLOTTING THE OBJECT INFERENCE
    ymax = 200
    average = np.median(inferenceObjectList)
    average = str(format(average, '.2f'))

    plt.figure(figsize=(10, 5))
    plt.ylim(0, ymax)
    plt.xlim(0, len(objectIndexList))
    plt.plot(objectIndexList, inferenceObjectList, color="red")
    plt.legend(["Object Inference Time"])
    plt.xlabel("Image Frames")
    plt.ylabel("FPS")
    plt.text(len(objectIndexList), ymax * 0.54, "Mean FPS", fontsize=12)
    plt.text(len(objectIndexList), ymax * 0.46, average, fontsize=12)
    plt.title("Object Inference Time")
    print(f'Average Inference FPS: {average}')
    if savePlot:
        filename = dataPath.split('/')[-1]
        plt.savefig(f'{outputPath}/inferenceObject_{str(filename)}.png')
    plt.show()
    plt.close()


if __name__ == "__main__":

    # LOAD DATA
    data = importData(dataPath, False)
    data = loadData(dataPath, data, False)

    try:
        main(display=False, mix=False, limit=False, savePlot=True)
    except KeyboardInterrupt:
        pass

