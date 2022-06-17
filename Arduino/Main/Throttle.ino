void Throttle(float x){
  int forward, backward;

  // Value Mapping
  backward = mapf(x, 0, -1, 0, thr_max);
  forward = mapf(x, 0, 1, 0, thr_max);
  

  // Limiter
  if (forward < 0){
    forward = 0;
  }
  
  if (backward < 0){
    backward = 0;
  }

  if (forward > 255){
    forward = 255;
  }
  
  if (backward > 255){
    backward = 255;
  }



  // DC Motor Enabler
  if (forward == 0 && backward == 0){
    digitalWrite(EN, LOW);
  }

  else{
    digitalWrite(EN, HIGH);
    analogWrite(L_PWM, forward);
    analogWrite(R_PWM, backward);
  }


  // DEBUG
  if (throttle_debug == true){
    Serial.print(" -Throttle- ");
    Serial.print(channel1);
    Serial.print("-");
    Serial.print(x);
    Serial.print(" -Forward- ");
    Serial.print(forward);
    Serial.print(" -Backward- ");
    Serial.print(backward);
  }  
}
