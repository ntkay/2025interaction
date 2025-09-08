//week01-5_mousePressed_mouseX_mouseY_pmouseXY
//結合滑鼠跟鍵盤
void setup(){
  size(500,500);
}
int x = 200,y = 250;
void draw(){
  background(#FFFFAA);
  if(mousePressed){ //不管有沒有壓到四邊形，都移動他
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  }
  rect(x,y,100,50);
}
