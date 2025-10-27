//week08-6_2048_part6_processing_R_L_myPort_write
// 參考week08-5_2048_part5__keyPressed_keyCode_RIGHT_merge
// (1)按方向鍵,板子往那個方向走(只做往右)
import processing.serial.*;
Serial myPort;
color[] c = {#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63,#F76543};//2*1, 2*2, 2*3.....2*6
color[] c2 = {#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5,#FDF8F5};
int [] N = {0,2,4,8,16,32,64};//對應的數字
int [][] B = {{0,0,0,0},{1,2,3,4},{5,0,0,0},{0,0,0,0}};
void keyPressed(){
  if(keyCode==LEFT) myPort.write('L');
  if(keyCode==RIGHT){ //按右
    myPort.write('R');
    for(int i=0;i<4;i++){ //正常的迴圈
      int now = 3;
      for(int j=3;j>=0;j--){ //從右往左,慢慢找
        if(B[i][j]>0){ //找到有板子
          B[i][now] = B[i][j]; //檢查是否要合併merge(與右邊相同)
          //if(now<3 && B[i][now+1]==B[i][now]){ //做一次
          while(now<3 && B[i][now+1]==B[i][now]){ //做很多次
            B[i][now+1]++;
            now++;
          }
          now--; //下一格在這裡
      }
    } //到這裡結束,now的左邊不要放東西,都歸0
    for(int j=now;j>=0;j--){ //剩下的0,都放0表空白
      B[i][j] = 0;
    }
   }
  }
  genTwo();
}
void genTwo(){ //找出陣列0的地方,挑一個變成空白
  int zero = 0; //找一找,有幾個零
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      if(B[i][j]==0) zero++; //找到0的板子
    }
  } //用亂數,決定第幾個0要放2
  int ans = int(random(zero));// ex有10格,找到0~9
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      if(B[i][j]==0){
        if(ans==0){
          B[i][j] = 1; //2的一次方
          return; //結束
        }else ans--; //倒數用掉1格,慢慢找到是哪一格
      }
    }
  }
}
void setup(){
  size(410,410);
  myPort = new Serial(this,"COM5",9600);
}
void draw(){
  background(188,174,162);
  for(int i=0; i<4; i++){ //左手i(對應y座標)
    for(int j=0; j<4; j++){ //右手j(對應x座標)
      int id = B[i][j];//對應的代碼
      fill( c[id] );
      noStroke();//不要有黑框
      rect(j*100+10, i*100+10, 90, 90, 5);//弧角是5
      fill( c2[id] );
      textAlign(CENTER,CENTER);
      textSize(60);
      text(N[id],j*100+55,i*100+55);
    }
  }
}
