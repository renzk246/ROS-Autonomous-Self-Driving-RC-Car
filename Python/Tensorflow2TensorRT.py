import os
import sys
import numpy as np
import tensorflow as tf
from tensorflow.python.compiler.tensorrt import trt_convert as trt

outputPath = 'TF-TRT'

def main():
    conversion_params = trt.DEFAULT_TRT_CONVERSION_PARAMS
    conversion_params = conversion_params._replace(max_workspace_size_bytes=(1<<25))
    conversion_params = conversion_params._replace(precision_mode="FP16")
    converter = trt.TrtGraphConverterV2(
        input_saved_model_dir=modelPath,
        conversion_params=conversion_params)
    converter.convert()

    converter.save(outputPath+'/tf-trt_'+modelPath.split('/')[-1])


if __name__ == '__main__':
    # LOADING MODEL
    args = sys.argv
    if len(args) != 2:
        print("No Model Path Specified!!!")
        sys.exit(1)
    modelPath = args[1]

    main()
