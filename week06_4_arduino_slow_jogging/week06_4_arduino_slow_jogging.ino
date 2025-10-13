//week06_4_arduino_slow_jogging
void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8,780,100); // you decide your voice Hz pin8 ,780Hz, 60ms
  delay(333); //waiting 1/3sec change next 
  tone(8,320,100); // you decide your voice Hz pin8 ,780Hz, 60ms
  delay(333); //waiting 1/3sec change next 
  //per sec will bi 3 times,60sec will bi 180 times,180BPM(Beat per Minute)
}
