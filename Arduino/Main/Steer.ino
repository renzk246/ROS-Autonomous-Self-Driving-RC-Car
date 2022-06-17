void Steer(float x){
  int a;
  
//  // Mapping
//  a = mapf(x, -1, 1, str_max, str_min);

  a = 0;

  // Value Mapping
  if (x < 0){
    a = mapf(x, 0, -1, 0, str_min);
  }
  else if (x > 0){
    a = mapf(x, 0, 1, 0, str_max);
    a *= -1;
  }

  a = 90 + a;
  myServo1.write(a);

  // DEBUG
  if (steering_debug == true){
    Serial.print(" -Steering- ");
    Serial.print(channel0);
    Serial.print("-");
    Serial.print(x);
    Serial.print("-");
    Serial.print(a);
  }
}
