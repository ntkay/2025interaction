//week03_5_pin2_BUTTON_digitalRead_digitalWrite
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP); //按鈕Button is num 2 沒按下去就會拉高
  for(int i=3; i<=13;i++){
    pinMode(i,OUTPUT); //都是可以發光、發亮的
  }
}
int now = 3; //現在發亮的是 pin 3
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){ //按下去喽
    now += 1;
    if(now>13) now = 3;
    for(int i=3;i<=13;i++){
      digitalWrite(i,LOW); //全部先清空，變成LOW 不亮
    }
    digitalWrite(now,HIGH); // now負責亮
    delay(500); //休息一下 waiting 0.5sec 才不會蝦運作
  }
}
