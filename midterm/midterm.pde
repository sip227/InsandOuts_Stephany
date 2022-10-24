//Stephany Pena - MIDTERM - A NEON INTERACTIVE EXPERIENCE 

//INSTRUCTIONS
/*
There are three states
Each state says a different line
to hear it, press the mouse
Press 1 for neutral state 
Press 2 for cowboy state
Press 3 for dancefloor

*/
import processing.sound.*;
//SETUP
//SoundFile dance;
SoundFile file;
SoundFile file2;
SoundFile file3;

PImage[] anim = new PImage[2];
PImage dancefloor;

//VARIABLES
int frame =0;
boolean blink = true;

int r;
int b;
int g;

//Timer
int timer =5000;
int currentTime =0;
int savedTime =0;

String state = "neutral";

//FUNCTIONS
//
void blink(){
  for (int i =0; i<anim.length; i++){
    anim [i]=loadImage("defaultframe_" +i+".png");
  }
  
  image(anim[frame],width/2,height/2,400,400);
  if (blink == true){
    if(frame == anim.length-1){
      frame =0;
    }
    else{
      frame++;
    }
  }else{
    if(frame ==0){
      frame = anim.length-1;
    }else{
      frame--;
    }
}
  

}
//
void blink2(){
  for (int i =0; i<anim.length; i++){
    anim [i]=loadImage("gunframe_" +i+".png");
  }
  
  image(anim[frame],width/2,height/2,400,400);
  if (blink == true){
    if(frame == anim.length-1){
      frame =0;
      
    }
    else{
      frame++;
    } 
  }else{
    if(frame ==0){
      frame = anim.length-1;
    }else{
      frame--;
    }
}


}

void sound(){
  file = new SoundFile(this, "I_exist_2.mp3");
  file.play();
}
void sound2(){
  file2 = new SoundFile(this, "OutCowboy.mp3");
  file2.play();
}

void sound3(){
  file3 = new SoundFile(this, "Are_you_there_1.mp3");
  file3.play();
}


//SETUP
void setup(){
  size(600,600);
  frameRate(30);
  background(255);
  imageMode(CENTER);
  
  //dance = new SoundFile(this, "Eaters - Control.mp3");
 
  dancefloor = loadImage("dancefloor.png");
  dancefloor.resize(600,600); 
}

void draw(){
  r = round(random(256));
  g = round(random(256));
  b = round(random(256));
  currentTime=millis();
  if (state == "neutral"){

    clear();
    background(r,g,b);
    blink();
    if (mousePressed){
        if (currentTime - savedTime> timer){
          sound();
        }
        
    }
  }else if (state == "cowboy"){
     clear();
     blink2();
    if (mousePressed){
       if (currentTime - savedTime> timer){
          sound2();
        }
  }
  
}
  else if(state == "dancefloor"){
    clear();
    image(dancefloor,width/2,height/2);
    blink();
    if (mousePressed){
       if (currentTime - savedTime> timer){
          sound3();
        }
  }
  
}   
}
    
//function

void keyPressed(){
  if (key =='1'){
    state = "neutral";
  }
  else if (key == '2'){
    state = "cowboy";
  }
  else if (key=='3'){
    state = "dancefloor";
  
  }
}

/*
NOTES
CREDIT
Control - Eaters https://freemusicarchive.org/search/?quicksearch=&search-genre=Hip-Hop
Art = Luca
Character = Neon
Voice Clips =Neon
Code = MTEC 2280

*/
