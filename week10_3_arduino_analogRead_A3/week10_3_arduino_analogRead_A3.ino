// week10_3_arduino_analogRead_A3
//把joystick 的Y的線,經由麵包版幫忙,接到Makeruno pin 3
// (不能接其他,因為要接有~的小蟲符號,)
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP);
  //pinMode(3,INPUT);
  pinMode(8,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int now = analogRead(A3);
  if(now>800){
    tone(8,523,100);
    delay(100);
    tone(8,784,100);
    delay(200);
  }else if(now<200){
    tone(8,784,100);
    delay(100);
    tone(8,523,100);
    delay(200);
  }
}
