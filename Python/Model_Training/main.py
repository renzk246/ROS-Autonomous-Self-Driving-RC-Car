import os
import sys
from load_data import *
from image_manipulation import *
from model import Model
from math import ceil

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

# INITIALIZATIONS, DATASETS PATH, & OUTPUT FILENAME			    ## CHANGE THE FOLLOWING ##
path = "/media/flakka/EXT/Datasets/Data3"	                    # PATH TO THE DATASET
modelPath = "Trained_Models"						            # OUTPUT PATH OF THE TRAINED MODEL
filename = 'model2_3'							                # OUTPUT NAME OF THE TRAINED MODEL
inputNumber = 2                                       		    # DECLARE THE INPUT NUMBER OF THE MODEL

# DATA INITIALIZATION
data = importData(path, debug=False)

# BALANCING DATA
data = balanceData(data, 2200, debug=False)

# DATA COLUMN SEPARATION
train_data, val_data = loadData(path, data, val_size=0.2, debug=False)

# IMPORT MODEL
model = Model(imageShape=(164, 320, 3)).secondModel()		    # SELECT MODEL TO USE { [.firstModel()] or [.secondModel()] }. Refer to model.py script.
print(model.summary())

# MODEL TRAINING
batchSize = 64								                    # SPECIFIED BATCH SIZE
epochs = 12								                        # SPECIFIED EPOCH SIZE
train_steps = ceil(len(train_data[0])/batchSize)
valid_steps = ceil(len(val_data[0])/batchSize)

history = model.fit(batchGenerator(train_data, batchSize, trainFlag=True, inputNumber=inputNumber), steps_per_epoch=train_steps,
                    epochs=epochs, validation_data=batchGenerator(val_data, batchSize, trainFlag=False, inputNumber=inputNumber),
                    validation_steps=valid_steps, shuffle=True, callbacks=[])

# SAVING MODEL
model.save(modelPath+"/"+filename)
print('Model Saved')

# PLOTTING RESULT
lossNames = ["loss", "steering_out_loss", "throttle_out_loss"]
plt.style.use("ggplot")
(fig, ax) = plt.subplots(3, 1, figsize=(13, 13))

for (i, l) in enumerate(lossNames):
    # plot the loss for both the training and validation data
    title = "Loss for {}".format(l) if l != "loss" else "Total Loss"
    ax[i].set_ylim([0.0, 0.2])
    ax[i].set_title(title)
    ax[i].set_xlabel("Epoch #")
    ax[i].set_ylabel("Loss")
    ax[i].plot(np.arange(0, epochs), history.history[l], label=l)
    ax[i].plot(np.arange(0, epochs), history.history["val_" + l], label="val_" + l)
    ax[i].legend()
# save the losses figure
plt.tight_layout()
plt.savefig(modelPath + "/" + filename + '.png')
plt.show()



