// week08_arduino_G5_C5
void setup() {
  Serial.begin(9600);
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);
  tone(8,784,100);
  delay(100);
  tone(8,523,100);
  delay(100);
}

void serialEvent() {
  // put your main code here, to run repeatedly:
  while (Serial.available()){
    char now = Serial.read();
    if(now=='R'){
      tone(8,784,100);
      delay(100);
      tone(8,523,100);
      delay(100);
    } else { 
      tone(8,523,100);
      delay(100);
      tone(8,784,100);
      delay(100);
    }
  }
}
void loop(){
}
