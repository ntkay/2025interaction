//week10_7_arduino_serial_x_y_to_processing
//fix by week10_5
void setup() {
  Serial.begin(9600);
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);
}

void loop() {
  delay(30); //slowly ,processing 接不完
  int x = analogRead(A2); //把搖桿的X接在A2
  int y = analogRead(A3); //把搖桿的Y接在A3
  Serial.write(x/4);
  Serial.write(y/4);
  if(x>900) tone(8,784,100);
  if(x<100) tone(8,523,100);
  if(y>900) tone(8,659,100);
  if(y<100) tone(8,500,100); //亂寫 
}
