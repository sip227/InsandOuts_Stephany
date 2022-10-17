//MIDTERM - A MASK INTERACTIVE EXPERIENCE 

//SETUP
PImage maskDefaultStill;
PImage maskDefaultTalk;
//
PImage maskDefaultStillBlink;
PImage maskDefaultTalkBlink;
//
PImage maskGunStill;
PImage maskGunTalk;
//
PImage maskGunStillBlink;
PImage maskGunTalkBlink;

//VARIABLES
int timer = 3000;
int currentTime =0;
int savedTime = 0;

String state = "neutral";


void setup(){
  size(600,600);
  background(255);
  imageMode(CENTER);
  
  // Images
  maskDefaultStill = loadImage("1_DEFAULT_STILL.png");
  maskDefaultStill.resize(400,400);

  maskDefaultTalk = loadImage("2_DEFAULT_TALKING.png");
  maskDefaultTalk.resize(400,400);

  //
  maskDefaultStillBlink = loadImage("3_DEFAULT_STILL_BLINK.png");
  maskDefaultStillBlink.resize(400,400);
  
  maskDefaultTalkBlink =  loadImage("4_DEFAULT_TALKING_BLINK.png");
  maskDefaultTalkBlink.resize(400,400);
  //
  maskGunStill = loadImage("1_GUN_STILL.png");
  maskGunStill.resize(400,400);
  
  maskGunTalk = loadImage("2_GUN_TALKING.png");
  maskGunTalk.resize(400,400);
  //
  maskGunStillBlink = loadImage("3_GUN_STILL_BLINK.png");
  maskGunStillBlink.resize(400,400);
  
  maskGunTalkBlink = loadImage("4_GUN_TALKING_BLINK.png");
  maskGunTalkBlink.resize(400,400);
   
  
}

void draw(){
  if (state == "neutral"){
    image(maskDefaultStill,width/2,height/2);
    if (mousePressed){
        image(maskDefaultStillBlink,width/2,height/2);

    }
  }else if (state == "cowboy"){
     image(maskGunStill,width/2,height/2);
    if (mousePressed){
        image(maskGunStillBlink,width/2,height/2);
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
}

/*
NOTES
- Need to change logic 
contious controlled blinking
include counter and controlled area where the user must click
cowboy stays after switching between states

//POSSIBLE SOLUTIONS
For behaviors
ARRAYS
LOOPS

*/
