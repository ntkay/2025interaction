//week01_3_keypressed_keyCode_LEFT_RIGHT
void setup(){
  size(500,500); 
}
int x = 200,y = 250;// 座標
void draw(){
  background(#FFFFAA); //淡黃色
  rect(x,y,100,50); //座標 畫方塊
  if(keyPressed && keyCode==LEFT) x--;
  if(keyPressed && keyCode==RIGHT) x++;
  if(keyPressed && keyCode==UP) y--;
  if(keyPressed && keyCode==DOWN) y++;
} //使用方向鍵來移動方塊
