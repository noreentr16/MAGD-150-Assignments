//movement speed of character
float movementSize = 1;

int head = 20;

//character positions
float posX = 370;
int posY = 500;
float posX2 = 375;
float posX4 = 400;
float posX3 = 365;
boolean leg = true;
boolean mState = false;

//variables for the leg opacities to make it appear as if character's legs are moving
int legOpac = 255;
int legOpac2 = 0;
int legOpac3 = 255;

float posXarm = 380;

float posXarm2 = 360;
int ground = 560;
int textOpac1 = 255;
int textOpac2 = 0;

//setup background to change colors for interaction
int backcolor1 = 255;
int backcolor2 = 255;
int backcolor3 = 255;
void setup(){
  size (1400, 800);
    frameRate(10);
}

void draw(){
//first scene
  if (mState == false){
  
  stroke(0);
  background(backcolor3, backcolor2, backcolor1);
  
  //ground
  fill(0);
  rectMode(CORNERS);
  rect(0, ground, 1400, 800);
  rect(0, 0, 1400, 200);
  
  //person
  
  //head
  strokeWeight(1);
  fill(0);
  ellipse(posX, posY, head, head);
  
  //instructions
  fill(255);
  textSize(20);
  text("Type 'b/B' for blue, 'g/G for green, r/R for red", 100, 50);
  //thought
  fill(0, 0, 0, textOpac1);
  textSize(30);
  text("Hungry!!", posX4, 390);
  fill(0, 0, 0, textOpac2);
  text("YUM!", posX4, 390);
  //legs
  
  line(posX, 510, posX, 535);
  stroke(0, 0, 0, legOpac3);
  line(posX, 535, posX2, ground);
  stroke(0, 0, 0, legOpac2);
  line(posX, 535, posX, ground);
  stroke(0, 0, 0, legOpac);
  line(posX, 535, posX3, ground);
 
  //arms
  
  stroke(0);
  line(posX, 520, posXarm, 538);
  stroke(0); 
  line(posX, 520, posXarm2, 538);
  //burger
  strokeWeight(0);
  stroke(255, 0, 0);
  fill(215, 141, 32);
  //Buns
  arc(700, 530, 60, 60, PI, TWO_PI);
  arc(700, 545, 60, 30, 0, PI);
  rectMode(CENTER);
  //Ketchup
  fill(184, 1, 1);
  rect(700, 530, 60, 4);
  //lettuce
  fill(37, 154, 20);
  rect(700, 534, 72, 4);
  //Meat 
  fill(87, 63, 21);
  rect(700, 540, 60, 10);
  update(); 
  legMovement();
  textChange();
  } else {
    drawPizza();
    fill(random(255), random(255), random(255));
    textSize(100);
    text("PIZZA", random(1400), random(800));
  }
}
void keyPressed(){
//set up a non case sensitve interaction to change screen to be blue
  if (key == 'b' || key == 'B') {
  backcolor1 = 255;
  backcolor2 = 0;
  backcolor3 = 0;
  //set up a non case sensitve interaction to change screen to be green
  } else if (key == 'g' || key == 'G') {
    backcolor1 = 0;
    backcolor2 = 255;
    backcolor3 = 0;
    //set up a non case sensitve interaction to change screen to be red
  } else if (key =='r' || key == 'R') {
    backcolor3 = 255;
    backcolor2 = 0;
    backcolor1 = 0;
  }
}

//mouse click changes the scene
void mousePressed(){
  background(255);
  mState = !mState;
}
void textChange(){

  if(posX > 650 && posX < 750){
    textOpac1 = 0;
    textOpac2 = 255;
  } else {
    textOpac1 = 255;
    textOpac2 = 0;
  }
}
//execute legs illusion of movement
void legMovement(){
  if (posX % 2 == 0){
    legOpac = 0;
    legOpac2 = 255;
  } else{ 
    legOpac = 255;
    legOpac2 = 0;
  }
}
//character's movement
void update(){
  if(posX + (head/2) > width){
    movementSize = movementSize * -1;
  } else if (posX < (head/2)){
    movementSize = movementSize * -1;
  }
  //carry all pieces of char with movement
  posX = posX + movementSize;
  posX2 = posX2 + movementSize;
  posX3 = posX3 + movementSize;
  posX4 = posX4 + movementSize;
  posXarm = posXarm + movementSize;
  posXarm2 = posXarm2 + movementSize;
}
//second scene- random location of generated pizza forms
void drawPizza(){
  int centerX = round(random(width));
  int centerY = round(random(height));
  rectMode(CENTER);
  fill(190, 125, 18);
  rect(centerX, centerY, 100, 10);
  fill(226, 202, 27);
  beginShape();
    vertex((centerX-50), (centerY+5));
    vertex((centerX+50), (centerY+5));
    vertex((centerX), centerY+150);
    endShape();
    fill(255, 0, 0);
  ellipse((centerX-10), (centerY+50), 18, 18);
  ellipse((centerX+20), (centerY+30), 18, 18);
  ellipse((centerX), (centerY+90), 18, 18);
  ellipse((centerX-30), (centerY+20), 18, 18);
  
}   
