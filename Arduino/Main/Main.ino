#include <ros.h>
#include <arduino_custom/Arduino_out.h>
#include <arduino_custom/Arduino_in.h>
#include <Servo_Hardware_PWM.h>


// Object Initialization
Servo myServo1;


// Pins Assignments
#define st 2                                      // Receiver Steering Pin (Channel-1)
#define th 3                                      // Receiver Throttle Pin (Channel-2)
#define sw1 4                                     // Receiver Switch-1 Pin (Channel-3)
#define sw2 5                                     // Receiver Switch-2 Pin (Channel-4)
#define servo 6                                   // Servo PWM Pin
#define EN 7                                      // H-Bridge Controller ENABLE Pin
#define L_PWM 10                                  // H-Bridge Controller L-PWM Pin
#define R_PWM 11                                  // H-Bridge Controller R-PWM Pin
#define LED_R 14                                  // Red LED Pin
#define LED_B 15                                  // Blue LED Pin


// Data Variables
long channel0, channel1, channel2, channel3;      // Reciever Channels Variables
float steering = 0, throttle = 0;
float str_in = 0, thr_in = 0;
bool button1 = false; 
bool button2 = false;


// Limiter
float str_left = 0.75;                             // Maximum Servo Angle Percent Left
float str_right = 0.50;                            // Maximum Servo Angle Percent Right
float thr_percent = 0.50;                          // Maximum Throttle Speed Percent

float str_min = 90*str_left;                       // Minimum Steering Formula
float str_max = 90*str_right;                      // Maximum Steering Formula
float thr_max = 255*thr_percent;                   // Maximum Throttle Formula


// Debug in Serial
bool steering_debug = true;
bool throttle_debug = false;
bool button_debug = false;



// ======= ROS OBJECT INITIALIZATION ======= //
ros::NodeHandle nh;

void callbackArduino( const arduino_custom::Arduino_in& data){
  str_in = data.steering;
  thr_in = data.throttle;
}
ros::Subscriber<arduino_custom::Arduino_in> sub("/cmd_in", callbackArduino);


arduino_custom::Arduino_out msg_out;
ros::Publisher pub("/cmd_out", &msg_out);



// =================== SETUP & MAIN FUNCTION =================== //
void setup() {
  Serial.begin(57600);

  // ROS Initialization
  nh.initNode();
  nh.advertise(pub);
  nh.subscribe(sub);

  // Input Pins Initialization
  pinMode(st, INPUT);
  pinMode(th, INPUT);
  pinMode(sw1, INPUT);
  pinMode(sw2, INPUT);

  // Actuator/LED Pins Initialization
  pinMode(EN, OUTPUT);
  pinMode(L_PWM, OUTPUT);
  pinMode(R_PWM, OUTPUT);
  pinMode(LED_B, OUTPUT);
  pinMode(LED_R, OUTPUT);
  
  myServo1.attach(servo);
}


void loop(){
  
  // Input Pin Reading
  channel0 = pulseIn(st, HIGH);
  channel1 = pulseIn(th, HIGH);
  channel2 = pulseIn(sw1, HIGH);
  channel3 = pulseIn(sw2, HIGH);


  // RC Driving Selector (JETSON OR TRANSMITTER)
  switch (button1)  {
    case 0:
      // Mapping (Steering & Throttle)
      steering = mapf(channel0, 1356, 1856, -1, 1);
      throttle = mapf(channel1, 1175, 1775, 1, -1);
  
      // Stabilizer (Steering & Throttle)
      if (steering >= -0.05 && steering <= 0.05){
        steering = 0.00;
      }
      if (throttle >= -0.05 && throttle <= 0.05){
        throttle = 0.00;
      }
  
      // Value Limiter (Steering & Throttle)
      if (steering < -1){
      steering = -1;
      }
      if (steering > 1){
        steering = 1;
      }
  
      if (throttle < -1){
      throttle = -1;
      }
      if (throttle > 1){
        throttle = 1;
      } 

      // Red LED Indication
      digitalWrite(LED_R, LOW);
    
      break;

    case 1:
      steering = str_in;
      throttle = thr_in;

      // Red LED Indication
      digitalWrite(LED_R, HIGH);
    
      break;
  }


  // Collecting Data Indication (Steering, Throttle, Image)
  switch (button2) {
    case 0:
      // Blue LED Indication
      digitalWrite(LED_B, LOW);
      break;
      
    case 1:
      // Blue LED Indication
      digitalWrite(LED_B, HIGH);
      break;
  }
  


  // Funtion Call
  Steer(steering);                                  // Servo Control
  Throttle(throttle);                               // DC Motor Control
  Button(channel2, channel3);                       // Button


  // ROS Publisher
  msg_out.steering = steering;
  msg_out.throttle = throttle;
  msg_out.button1 = button1;
  msg_out.button2 = button2;
  
  pub.publish(&msg_out);
  nh.spinOnce();

  Serial.println("");

}
