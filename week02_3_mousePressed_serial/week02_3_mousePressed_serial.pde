//week02_3_mousePressed_serial
import processing.serial.*; //第一行,使用USB的serial
Serial myPort; //第二行,宣告USB的Serial變數import
void mousePressed(){
  myPort.write(' ');//第4行,mouse按下時,就送出
}
void setup(){
  size(400,400);
  myPort = new Serial(this, "COM4",9600); //第三行,準備好
} //剛剛你在Arduino裡設定COM多少,就多少
void draw(){
 if(mousePressed) background(#FF0000);
 else background(#00FF00);
}
