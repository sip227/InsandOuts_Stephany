/*Ocean Immersive Experience
Stephany Pena
***USER INSTRUCTIONS***


*/
//Import
import processing.serial.*;
import processing.sound.*;

SoundFile ocean1;
SoundFile ocean2;
SoundFile ocean3;


Serial myPort;
int value =0;

PFont f;
PImage blobfish;

//variables
String typing = "";
String name = "";


void setup(){
  size(600,600);
  f = createFont("Arial", 16);
  //Sounds
  ocean1 = new SoundFile(this,"ocean-wave-1.mp3");
  ocean2 = new SoundFile(this,"ocean-wave-2.mp3");
  ocean3 = new SoundFile(this,"ocean-wave-2.mp3");
  
  //Images
  blobfish =loadImage("blobfish.png");
  
  //processing reading
  String[] portList = Serial.list();
  printArray(portList);
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  
}


void draw(){
  background(0,157,196);
  int indent =25;
  textFont(f);
  fill(0);
  text("Please enter a name down below: ", indent, 20);
  text("Input Name: " + typing, indent, 480);
  text("Name: " + name, indent, 500);
  
  image(blobfish, 200,200);
  
  if(myPort.available()>0){
    value = myPort.read();
  }
  
  if (value > 2400){
    ocean1.loop();
  }
  else if (value > 3200){
    ocean2.loop();
  }
  else if (value > 4800){
    ocean3.loop();
  }
  
  }
  
 void keyPressed(){
  if (key == '\n'){
    name = typing;
    
    typing = "";
  }
  else{
    typing = typing + key;
  }
  
 }
