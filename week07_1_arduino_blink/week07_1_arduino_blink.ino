// week07_1_arduino_blink
// 安裝好後,select board 要選剛剛裝置管理員得那個,USB-Serial
// 的 COM3 or COM4 or COM5 ,選好後,Board 打字 arduino Uno 選他
void setup() {
  // put your setup code here, to run once:
  pinMode(13,OUTPUT); //把第13隻腳,能送出資料OUTPUT
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(13,HIGH);
  delay(500);
  digitalWrite(13,LOW);
  delay(500);
}
