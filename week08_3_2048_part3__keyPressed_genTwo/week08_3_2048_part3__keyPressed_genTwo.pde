//week08-3_2048_part3__keyPressed_genTwo
//增加不同板子 2,4,8,16,32,64
// (1)把陣列補齊 (2) 按方向鍵,要在空白的地方,變出一個2
color[] c = {#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63,#F76543};//2*1, 2*2, 2*3.....2*6
color[] c2 = {#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5,#FDF8F5};
int [] N = {0,2,4,8,16,32,64};//對應的數字
int [][] B = {{0,0,0,0},{1,2,3,4},{5,0,0,0},{0,0,0,0}};
void keyPressed(){
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
