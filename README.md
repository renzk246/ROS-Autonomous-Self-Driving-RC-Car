<!-- PROJECT LOGO -->
<br />
<div align="center">
    <img src="/images/logo.png" alt="Logo" width="80" height="80">

<h2 align="center">ROS BASED SELF-DRIVING RC CAR WITH TENSORRT INTEGRATION
IN REDUCING BEHAVIORAL CLONING LATENCY AND OBJECT
DETECTION FOR COLLISION PREVENTION</h2>

  <p align="center">
    Renzo Llenard Monteadora
    <br />
    <a href="https://www.researchgate.net/publication/361361254_ROS_BASED_SELF-DRIVING_RC_CAR_WITH_TENSORRT_INTEGRATION_IN_REDUCING_BEHAVIORAL_CLONING_LATENCY_AND_OBJECT_DETECTION_FOR_COLLISION_PREVENTION"><strong>Explore the full thesis here»</strong></a>
    <br />
    <br />
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

<div align="center">
  <img src="/Documentations/IMG_20211228_143125.jpg" alt="Prototype" width="320" height="240">
</div>

 A study was conducted to demonstrate a way to increase the performance (latency) of the behavioral cloning model and be able to accommodate additional computer vision task (object detection) even with a small-scale prototype (RC Car) using Jetson Nano. Microprocessor overclocking and utilization of TensorRT were done in the study to increase the performance of the behavioral cloning model in the prototype. Significant reductions in latency were found after doing such procedures. In overclocking, the performance of the behavioral cloning model was increased by 25% depending on the complexity of its CNN architecture, then after the integration of TensorRT, an approximate double (2x) of performance was added. Through the use of the Robot Operating System (ROS), an object detection was integrated into the system to enable collision prevention feature on the prototype, which lessens the performance behavioral cloning model by almost half (½). The study covers every step of the process in completing the autonomous self-driving RC car: from the assembly of the RC Car model; creation and training of the behavioral cloning model; robot operating system (ROS) structure, including object detection integration; overclocking and utilization of TensorRT; until the testing and evaluation of the prototype on a racetrack.



### Built With

* [Tensorflow](https://www.tensorflow.org/)
* [OpenCV](https://opencv.org/)
* [ROS](https://www.ros.org/)
* [TensorRT](https://docs.nvidia.com/deeplearning/frameworks/tf-trt-user-guide/index.html)


<!-- Demo Video -->
## Demo Video

Below are the demo videos of the prototype using Behavioral Cloning Only and with additional Object Detection Model.

<div align="center">
  <h5>Behavioral Cloning Only Test</h5>
  <a href="https://www.youtube.com/watch?v=A1P0vgLuSRc" target="_blank"><img src="https://img.youtube.com/vi/A1P0vgLuSRc/0.jpg" alt="Behavioral Cloning Only Test"></a>

  <h5>Behavioral Cloning with Object Detection Test</h5>
  <a href="https://www.youtube.com/watch?v=WgdoCgZTnA0" target="_blank"><img src="https://img.youtube.com/vi/WgdoCgZTnA0/0.jpg" alt="Behavioral Cloning Only Test"></a>
</div>

<!-- Behavioral Cloning Model -->
### Behavioral Cloning Model

Two convolutional neural networks that were used in the prototype are introduced. It contains an overview regarding how it was constructed in the program using the TensorFlow framework, which can be found in the `model.py` script.

<div align="center">
  <h5>Second Behavioral Cloning Model</h5>
  <img src="/images/1st_CNN.jpg" alt="First Behavioral Cloning Model">

  <h5>Second Behavioral Cloning Model</h5>
  <img src="/images/2nd_CNN.jpg" alt="Second Behavioral Cloning Model">
</div>

<!-- Robot Operating System (ROS) -->
### Robot Operating System (ROS)
In the study, Robot Operating System (ROS) were used as a middleware platform of the prototype. The figure below shows the ROS Map of the system.

<div align="center">
  <h5>Second Behavioral Cloning Model</h5>
  <img src="/images/ros_map.png" alt="ROS MAP">
</div>


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.


<!-- CONTACT -->
## Contact

Renzo Monteadora - [@renzo_llenard](https://twitter.com/renzo_llenard) - renzk246@gmail.com

Project Link: [https://github.com/renzk246/ROS-BASED-SELF-DRIVING-RC-CAR-WITH-TENSORRT-INTEGRATION-IN-REDUCING-BEHAVIORAL-CLONING-LATENCY-AND-O](https://github.com/renzk246/ROS-BASED-SELF-DRIVING-RC-CAR-WITH-TENSORRT-INTEGRATION-IN-REDUCING-BEHAVIORAL-CLONING-LATENCY-AND-O)


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* Ace Virgil D. Villaruz, MSEE - Adviser

<p align="right">(<a href="#top">back to top</a>)</p>
