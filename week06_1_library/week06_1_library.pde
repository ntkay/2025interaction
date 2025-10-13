//week06_1_library
//File-Preference
//Sketch_library-ManageLibrary, 找sound
//Files-Examples-library-sound-soundfile-simpleplayback
import processing.sound.*;
SoundFile sound;
void setup(){
  size(500,400);
  sound = new SoundFile(this,"music.mp3");            
  sound.play();
}
void draw(){
  
}
