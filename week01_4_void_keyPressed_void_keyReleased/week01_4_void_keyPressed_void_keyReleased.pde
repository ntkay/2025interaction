//week01_4_void_keyPressed_void_keyReleased
void setup(){
  size(500,500);
}
int x=200,y=250,dx = 0,dy=0;
void draw(){
  background(#FFFFAA);
  rect(x,y,100,50);
  //we can't push two key in same time，make it better
  //if(keyPressed && keyCode==LEFT) x-=3;
  //if(keyPressed && keyCode==RIGHT) y-=3;
  x += dx;
  y += dy;
}

void keyPressed(){//按下鍵的時候，會來這裡
  if(keyCode==LEFT) dx = -3;
  if(keyCode==RIGHT) dx = +3;
  if(keyCode==UP) dy = -3;
  if(keyCode==DOWN) dy = +3;
}
void keyReleased(){//放開鍵的時候
  if(keyCode==LEFT) dx = 0;
  if(keyCode==RIGHT) dx = 0;
  if(keyCode==UP) dy = 0;
  if(keyCode==DOWN) dy = 0;
}
