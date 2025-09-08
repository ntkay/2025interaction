//week01-2 keypressed
//week01_2_keyPressed_textSize_text_key
void setup(){
  size(500,500); 
}
void draw(){
  if(keyPressed){ //use keyboard to interact
    background(#FF0000); //red background
    textSize(80); //big word
    text(""+key, 100, 100);
  }
}
