// week07_3_arduino_blink_blink_blink
//修改自week07_2_arduino_blink_blink  只是再多插兩隻 LED
// use 麵包板,每5洞都是一版,所以用GND接之後
// 小心,有一隻要接地GND,另一隻接13
// 小心,有一隻要接地GND,另一隻接12
// 小心,有一隻要接地GND,另一隻接11
// 小心,有一隻要接地GND,另一隻接10
void setup() {
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT); //把第13隻腳,能送出資料OUTPUT
}

void loop() {
  for(int i=10;i<=13;i++){
  digitalWrite(13,LOW); // 暗掉 (多這一行)
  digitalWrite(i-1,LOW); // 暗掉 (多這一行)
  digitalWrite(i,HIGH); // 發亮
  delay(500);  
  }
}
