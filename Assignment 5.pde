//R= ghost rectangle A= ghost arc E1= Eye1 E2= Ey2
int RAposX = 700;
int RAposY = 530;
int rectWidth = 50;
int rectHeight = 80;
int E1posX = 688;
int E2posX = 712;
int line1posX = 692;
int line2posX = 708;

//Triangle positions
int T1posX = 678;
int T1posXX = 685;
int T2posX = 690;
int T2posXX = 695;
int T3posX = 700;
int T3posXX = 705;
int T4posX = 710;
int T4posXX = 715;
int T4posXXX = 722;

int movementSize = 2;

int textOpacity = 0;

boolean mState = false;

void setup(){
  size(1400, 800);
  background(200, 106, 21);
}

void draw(){
  if (mState == false){
  //Moon
  fill(200, 106, 21);
  rectMode(CENTER);
  stroke(200, 106, 21);
  rect(700, 400, 1400, 1400);
  ellipseMode(CENTER);
  strokeWeight(50);
  stroke(234, 147, 68);
  fill(243, 228, 184);
  ellipse(700, 500, 700, 700);
  
  fill(0, 0, 0, textOpacity);
  textSize(25);
  text("AHHhhh!", 925, 435);
  stroke(0, 0, 0, textOpacity);
  strokeWeight(2);
  line(900, 460, 920, 435);
  if(RAposX > 750 && RAposX < 1050){
    textOpacity = 255;
  } else {
    textOpacity = 0;
  }
  //Ground
  strokeWeight(0);
  rectMode(CORNERS);
  fill(0);
  rect(0, 600, 1400, 800);
  
  //tree base
  stroke(0);
  beginShape();
  vertex(30, 700);
  vertex(120, 700);
  vertex(90, 200);
  vertex(60, 200);
  endShape();
  
  //branches
  strokeWeight(20);
  line(80, 300, 250, 275);
  line(80, 210, 280, 120);
  line(80, 230, 0, 210);
  line(80, 350, 0, 375);
  strokeWeight(10);
  line(180, 280, 230, 230);
  line(130, 290, 215, 330);
  line(240, 275, 290, 250);
  line(90, 330, 130, 335);
  line(120, 190, 160, 120);
  line(145, 190, 220, 200);
  line(105, 195, 130, 230);
  line(190, 160, 240, 100);
  line(280, 123, 330, 125);
  line(80, 280, 20, 285);
  line(50, 350, 10, 345);
  line(65, 205, 40, 150);
  line(50, 225, 15, 250);
  
  //smaller Branches
  strokeWeight(5);
  line(210, 250, 200, 220);
  line(265, 260, 280, 230);
  line(70, 200, 100, 160);
  line(50, 170, 60, 130);
  line(55, 190, 20, 170);
  line(210, 130, 215, 100);
  line(200, 290, 245, 305);
  line(145, 150, 130, 120);
  line(270, 130, 290, 85);
  line(280, 125, 325, 85);
  line(170, 193, 225, 180);
  line(50, 280, 20, 305);
  line(155, 300, 175, 330);
  
  //ghost
  rectMode(CENTER);
  rect(RAposX, RAposY, rectWidth, rectHeight);
  arc(RAposX, 495, 50, 80, PI, TWO_PI);
  triangle(T1posX, 575, T2posX, 575, T1posXX, 585);
  triangle(T2posX, 575, T3posX, 575, T2posXX, 585);
  triangle(T3posX, 575, T4posX, 575, T3posXX, 585);
  triangle(T4posX, 575, T4posXXX, 575, T4posXX, 585);
  //ghost face
  fill(255, 255, 255);
  ellipse(E1posX, 500, 18, 18);
  ellipse(E2posX, 500, 18, 18);
  stroke(255, 255, 255);
  strokeWeight(3);
  line(line1posX, 520, line2posX, 520);
  
  //person
  stroke(0);
  fill(0);
  //head
  ellipse(900, 485, 25, 25);
  //body
  strokeWeight(15);
  line(900, 500, 900, 540);
  strokeWeight(7);
  //legs
  line(895, 540, 890, 595);
  line(905, 540, 910, 595);
  //arms
  line(895, 510, 880, 540);
  line(905, 510, 920, 540);
  
 
  update();
  } else {
    background(0);
    fill(0);
    for (int x=1; x < 50; x++){
       fill(random(255), random(255), random(255));
      textSize(45);
      text("Happy Halloween!    Happy Halloween!    Happy Halloween!", (x + 50), (x * 50));
  }
}
}

void mousePressed(){
  mState = !mState;
}

void update(){
  if(RAposX + (rectWidth/2) > width){
    movementSize = movementSize * -1;
  } else if (RAposX < (rectWidth/2)){
    movementSize = movementSize * -1;
  }
  RAposX = RAposX + movementSize;
  E1posX = E1posX + movementSize;
  E2posX = E2posX + movementSize;
  line1posX = line1posX + movementSize;
  line2posX = line2posX + movementSize;
  T1posX = T1posX + movementSize;
  T1posXX = T1posXX + movementSize;
  T2posX = T2posX + movementSize;
  T2posXX = T2posXX + movementSize;
  T3posX = T3posX + movementSize;
  T3posXX = T3posXX + movementSize;
  T4posX = T4posX + movementSize;
  T4posXX = T4posXX + movementSize;
  T4posXXX = T4posXXX + movementSize;
}
