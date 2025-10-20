// week07_2_arduino_blink_blink
//修改自week07_1_arduino_blink 只是再多插一隻 LED
// 小心,有一隻要接地GND,另一隻接13
// 小心,有一隻要接地GND,另一隻接12
void setup() {
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT); //把第13隻腳,能送出資料OUTPUT
}

void loop() {
  digitalWrite(12,LOW);
  digitalWrite(13,HIGH);
  delay(500);
  digitalWrite(13,LOW);
  digitalWrite(13,HIGH);
  delay(500);
}
