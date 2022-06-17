import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.optimizers import Adam


###===== Tensorflow Models =====###

class Model:
    def __init__(self, imageShape):
        self.imageShape = imageShape

    def firstModel(self):
        # Activation Function
        activation = 'elu'

        # Dropout Rate
        dropRate = 0.1

        # Input Layer
        laneInput = keras.Input(shape=self.imageShape)

        # Lane Input ConvNet
        x = laneInput
        x = layers.Conv2D(24, (5, 5), (2, 2), activation=activation, name='Lane_Conv2D_1')(x)
        x = layers.Dropout(dropRate)(x)
        x = layers.Conv2D(32, (5, 5), (2, 2), activation=activation, name='Lane_Conv2D_2')(x)
        x = layers.Dropout(dropRate)(x)
        x = layers.Conv2D(64, (5, 5), (2, 2), activation=activation, name='Lane_Conv2D_3')(x)
        x = layers.Dropout(dropRate)(x)
        x = layers.Conv2D(64, (5, 5), activation=activation, name='Lane_Conv2D_4')(x)
        x = layers.Dropout(dropRate)(x)
        x = layers.Conv2D(64, (5, 5), activation=activation, name='Lane_Conv2D_5')(x)
        x = layers.Dropout(dropRate)(x)

        x = layers.Flatten(name='Flattened_x')(x)

        # Dense ConvNet
        x = layers.Dense(100, activation=activation)(x)
        x = layers.Dense(50, activation=activation)(x)
        x = layers.Dense(10, activation=activation)(x)

        # Output Layers
        steering_out = layers.Dense(1, activation="linear", name='steering_out')(x)
        throttle_out = layers.Dense(1, activation="linear", name='throttle_out')(x)

        losses = {
            'steering_out': 'mean_squared_error',
            'throttle_out': 'mean_squared_error'
        }

        model = keras.Model(inputs=[laneInput], outputs=[steering_out, throttle_out])
        model.compile(optimizer=Adam(lr=0.0001), loss=losses, metrics=[])

        return model


    def secondModel(self):
        # Activation Function
        activation = 'elu'

        # Input Layers
        naturalInput = keras.Input(shape=self.imageShape)
        laneInput = keras.Input(shape=self.imageShape)

        # Natural Input ConvNet
        x = naturalInput
        x = layers.Conv2D(24, (5, 5), strides=(2, 2), activation=activation, name='Natural_Conv2D_1')(x)
        x = layers.Conv2D(32, (5, 5), strides=(2, 2), activation=activation, name='Natural_Conv2D_2')(x)
        x = layers.Conv2D(64, (5, 5), strides=(2, 2), activation=activation, name='Natural_Conv2D_3')(x)
        x = layers.Conv2D(64, (3, 3), activation=activation, name='Natural_Conv2D_4')(x)
        x = layers.Conv2D(64, (3, 3), activation=activation, name='Natural_Conv2D_5')(x)

        x = layers.Flatten(name="Flattened_x")(x)
        x = layers.Dense(100)(x)


        # Lane Input ConvNet
        y = laneInput
        y = layers.Conv2D(24, (5, 5), strides=(2, 2), activation=activation, name='Lane_Conv2D_1')(y)
        y = layers.Conv2D(32, (5, 5), strides=(2, 2), activation=activation, name='Lane_Conv2D_2')(y)
        y = layers.Conv2D(64, (5, 5), strides=(2, 2), activation=activation, name='Lane_Conv2D_3')(y)
        y = layers.Conv2D(64, (3, 3), activation=activation, name='Lane_Conv2D_4')(y)
        y = layers.Conv2D(64, (3, 3), activation=activation, name='Lane_Conv2D_5')(y)

        y = layers.Flatten(name="Flattened_y")(y)
        y = layers.Dense(100)(y)

        # Concatenated ConvNet
        c = layers.Concatenate(axis=1)([x, y])
        c = layers.Dense(100, activation=activation)(c)
        c = layers.Dense(50, activation=activation)(c)
        c = layers.Dense(10, activation=activation)(c)

        # Output Layers
        steering_out = layers.Dense(1, activation='linear', name='steering_out')(c)
        throttle_out = layers.Dense(1, activation='linear', name='throttle_out')(c)

        losses = {
            'steering_out': 'mean_squared_error',
            'throttle_out': 'mean_squared_error'
        }

        model = keras.Model(inputs=[naturalInput, laneInput], outputs=[steering_out, throttle_out])
        model.compile(optimizer=Adam(lr=0.0001), loss=losses, metrics=[])
        return model



