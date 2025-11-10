//week10_2_arduino_pin2_switch_8_523_784_delay100
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP); //拉高,變成5V。真的按下去,便0V(GND接地)
  pinMode(8,OUTPUT);
} //pin 2 變成按鈕,可以HIGH高(沒按) 可以低LOW(按)

void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){ //如果pin 2有按下去
    tone(8,523,100); //發出 523 的Do
    delay(100);
    tone(8,784,100); //發出 784 的So
    delay(100);
  }
}
