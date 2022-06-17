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



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



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


<!-- GETTING STARTED -->
## Demo Video

Below are the demo videos of the prototype using Behavioral Cloning Only and with additional Object Detection Model.

<div align="center">
  <h5>Behavioral Cloning Only Test</h5>
  <a href="https://www.youtube.com/watch?v=A1P0vgLuSRc"><img src="https://img.youtube.com/vi/A1P0vgLuSRc/0.jpg" alt="Behavioral Cloning Only Test"></a>

  <h5>Behavioral Cloning with Object Detection Test</h5>
  <a href="https://www.youtube.com/watch?v=WgdoCgZTnA0"><img src="https://img.youtube.com/vi/WgdoCgZTnA0/0.jpg" alt="Behavioral Cloning Only Test"></a>
</div>

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* npm
  ```sh
  npm install npm@latest -g
  ```

### Installation

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
   ```sh
   git clone https://github.com/github_username/repo_name.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Enter your API in `config.js`
   ```js
   const API_KEY = 'ENTER YOUR API';
   ```




<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_




<!-- ROADMAP -->
## Roadmap

- [ ] Feature 1
- [ ] Feature 2
- [ ] Feature 3
    - [ ] Nested Feature

See the [open issues](https://github.com/github_username/repo_name/issues) for a full list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request




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
