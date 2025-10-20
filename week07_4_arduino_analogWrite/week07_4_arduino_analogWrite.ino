// week07_4_arduino_analogWrite
void setup() {
  // put your setup code here, to run once:
  pinMode(11,OUTPUT); //第11個pin角,(有PWM功能,可0-255輸出),要輸出
} //這些特別的腳,分別是 No.3 No.5 No.6 No.9 No.10 No.11 共6個腳,都可控制他亮暗的程度
int a=0;
void loop() {
  analogWrite(11,a); //亮的程度,是a的值
  a = (a+1) % 256; //會再亮一點點
  delay(10); //每0.01秒
}
