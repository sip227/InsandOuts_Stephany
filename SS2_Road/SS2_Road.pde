//Stephany Pena - On the Road

//variables
float r= 255;
float g= 255;
float b= 255;


void setup(){
  size(1080,720);

}

void draw(){
  background(r,g,b);
  //println(mouseX + "," + mouseY);

  if (mouseX>width/2){
   fill(76);
  
  //road
  rect(0,518, 1080, 220);
  
  fill(0,0,129);
  
 
  //car body
  rect(435, 332, 190, 150, 48, 48, 48, 48);
  
  fill(121);
  rect(317,439, 420, 90 ,16,24,48,72);
  
  
  //wheels
  fill(0);
  ellipse(390, 515, 100,100);
  ellipse(660, 515, 100,100);
  
  //moon
  fill(220,220,220);
  ellipse(890, 95, 175,175);
  
  //windows
  fill(225,235,227);
  triangle(322,440,434,440,454,335);
  triangle(622,440,734,440,609,335);
  
  }
  else if(mouseY>height/2){
  fill(76);
  
  //road
  rect(0,518, 1080, 220);
  
  fill(139,0,0);  
 
  //car roof
  rect(435, 332, 190, 150, 48, 48, 48, 48);
  //car body
  fill(121);
  rect(317,439, 420, 90 ,16,24,48,72);
  
  
  //wheels
  fill(0);
  ellipse(390, 515, 100,100);
  ellipse(660, 515, 100,100);
  
  //moon
  fill(249,215,28);
  ellipse(90, 95, 175,175);
  
  //windows
  fill(225,235,227);
  triangle(322,440,434,440,454,335);
  triangle(622,440,734,440,609,335);
  }
  
  else{
  fill(76);
  
  //road
  rect(0,518, 1080, 220);
  
  fill(1, 50, 32);
  
 
  //car body
  rect(435, 332, 190, 150, 48, 48, 48, 48);

  fill(121);
  rect(317,439, 420, 90 ,16,24,48,72);
  
  
  //wheels
  fill(0);
  ellipse(390, 515, 100,100);
  ellipse(660, 515, 100,100);
  
  //moon
  fill(200,200,200);
  ellipse(485, 95, 175,175);
  
  //windows
  fill(225,235,227);
  triangle(322,440,434,440,454,335);
  triangle(622,440,734,440,609,335);
  
  }
  
  
  
  
  
}

void mousePressed(){
  r = random(0, 90);
  g = random(0,10);
  b = random(75,255);


}
