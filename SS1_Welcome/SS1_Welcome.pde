// Avid Welcome by Stephany Pena

void setup(){
  size(1080,720);
  background(255);
}

void draw(){
  
  //line #1
  stroke(0);
  strokeWeight(2);
  line(300,250,500,300);
  //line #2
  line(700,255,490,300);
   //line #3
  line(359,550,500,395);
    //line #4
  line(650,550,500,395);
 
  
  
  //Body
  
  stroke(#808080);
  strokeWeight(3);
  fill(#B3F5DA);
  rect(425,225,150,250);
  
    //moogle head
  stroke(#fadfad);
  strokeWeight(2);
  fill(#F5B3CE);
  ellipse(500,185,200,200);
  

  
  //triangle  
  stroke(#91bad6);
  strokeWeight(2);
  fill(#b3eff5);
  triangle(450,100,455,10,550,100);

  

}
