void Button(int x, int y){

  
  if (x >= 1300){
    button1 = true;
  }
  else{
    button1 = false;
  }
  
  if (y >= 1300){
    button2 = true;
  }
  else{
    button2 = false;
  }
  

  // DEBUG
  if (button_debug == true){
    Serial.print(" -Button Values- ");
    Serial.print(x);
    Serial.print(" - ");
    Serial.print(y);
    Serial.print(" -Button1- ");
    Serial.print(button1);
    Serial.print(" -Button2- ");
    Serial.print(button2);
  }
}
