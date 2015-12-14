//my theme is an arcade style game based on the idea of color
//array for bullets
ArrayList <Bullet> bullets = new ArrayList <Bullet> ();
//creating vectors for the controllable player element
PVector player, playerSpeed;
PVector ellipseCenter;
float maxSpeed = 3;

//timer functions
Timer myTimer;
boolean timeState = true;

//image loadings
PImage crosshairs;
PImage screen;
PImage colorful;

boolean mState = false; 

float distance = 0; 
int radius; 

// creatutre sphere locations
int sphere2x = 1000;
int sphere2y = 500;

int sphere3x = 300;
int sphere3y = 700;

int sphere4x = 150;
int sphere4y = 350;

int sphere5x = 800;
int sphere5y = 155;

int sphere6x = 1200;
int sphere6y = 100;

int sphere7x = 450;
int sphere7y = 260;

int sphere8x = 640;
int sphere8y = 600;

//booleans for hits
boolean hit = false;
boolean hit2 = false;
boolean hit3 = false;
boolean hit4 = false;
boolean hit5 = false;
boolean hit6 = false;
boolean hit7 = false;
boolean hit8 = false;

void setup() {
  size(1400, 800);
  crosshairs = loadImage ("Crosshairs.png"); 
  screen = loadImage ("https://cloud.githubusercontent.com/assets/16195601/11788616/95a2cf8a-a257-11e5-8f08-9f2d5b80f2d0.jpg");
  colorful = loadImage ("Colorful.jpg");
  player = new PVector(width/2, height/2);
  myTimer = new Timer(9000);
  playerSpeed = new PVector();
  ellipseCenter = new PVector(100, 100);
  radius = 80;
  noCursor();
  noStroke();
  smooth();
}
 
void draw() {
//change state  
  if (mState == false){
    if(mousePressed){
      mState = !mState;
  }
  
  //startup screen
   background(255);
   //black for behind image
   fill(0);
   rect(0, 0, 2000, 2000);
   //custom image- actually did artwork for this
   screen.resize(900,900);
   image(screen, 240, 0);
   fill(255,0,0);
   
   //text for start instructions
   textSize(50);
   text("CLICK TO START", 540, 700);
   
   //text for Objective
   textSize(30);
   text("OBJECTIVE-", 10, 170);
   textSize(20);
   text("IN A WORLD THAT IS", 20, 250);
   text("BEING DRAINED OF", 20, 280);
   text("COLOR, YOU REMAIN", 20, 310);
   text("AS THE LAST HOPE.", 20, 340);
   text("BEING THE SOLE", 20, 370);
   text("SURVIVOR OF THE", 20, 400);
   text("ATTACK FROM THE", 20, 430);
   text("MYSTERIOUS COLOR", 20, 460);
   text("EATING CREATURES", 20, 490);
   text("YOU MUST SAVE", 20, 520);
   text("COLOR BEFORE TIME", 20, 550);
   text("RUNS OUT....", 20, 580);
   
   //controls
   textSize(30);
   text("CONTROLS-", 1150, 170);
   textSize(20);
   text("ARROW KEYS-", 1150, 250);
   text("          (MOVEMENT)", 1150, 280);
   text("MOUSE POSITION-", 1150, 340);
   text("          (AIM TARGET)", 1150, 370);
   text("MOUSE CLICK-", 1150, 430);
   text("          (SHOOT COLOR)", 1150, 460);
   
   //second scene- game 
  } else {
  background(200);
  //creature sphere
  if(!hit){
  fill(130);
  ellipse(ellipseCenter.x, ellipseCenter.y, 100, 100);
  fill(255);
  ellipse (120, 90, 20, 30);
  ellipse (80, 90, 20, 30);
  fill(0);
  ellipse (120, 90, 10, 20);
  ellipse (80, 90, 10, 20);
  } else {
    fill(255, 0, 255);
  ellipse(ellipseCenter.x, ellipseCenter.y, 100, 100);
  fill(255);
  ellipse (120, 90, 20, 30);
  ellipse (80, 90, 20, 30);
  fill(0);
  ellipse (120, 90, 10, 20);
  ellipse (80, 90, 10, 20);
  }
  
  //creature sphere 2
  if(!hit2){
    fill(0);
    ellipse(sphere2x, sphere2y, 100, 100);
    fill(255);
  ellipse (980, 490, 20, 30);
  ellipse (1020, 490, 20, 30);
  fill(0);
  ellipse (980, 490, 10, 20);
  ellipse (1020, 490, 10, 20);
  } else {
    fill(255, 255, 0);
    ellipse(sphere2x, sphere2y, 100, 100);
    fill(255);
  ellipse (980, 490, 20, 30);
  ellipse (1020, 490, 20, 30);
  fill(0);
  ellipse (980, 490, 10, 20);
  ellipse (1020, 490, 10, 20);
  }
  
    //creature sphere 3
  if(!hit3){
    fill(26);
    ellipse(sphere3x, sphere3y, 100, 100);
    fill(255);
  ellipse (280, 690, 20, 30);
  ellipse (320, 690, 20, 30);
  fill(0);
  ellipse (280, 690, 10, 20);
  ellipse (320, 690, 10, 20);
  } else {
    fill(0, 255, 255);
    ellipse(sphere3x, sphere3y, 100, 100);
    fill(255);
  ellipse (280, 690, 20, 30);
  ellipse (320, 690, 20, 30);
  fill(0);
  ellipse (280, 690, 10, 20);
  ellipse (320, 690, 10, 20);
  }
  
    //creature sphere 4
  if(!hit4){
    fill(0);
    ellipse(sphere4x, sphere4y, 100, 100);
    fill(255);
  ellipse (130, 340, 20, 30);
  ellipse (170, 340, 20, 30);
  fill(0);
  ellipse (130, 340, 10, 20);
  ellipse (170, 340, 10, 20);
  } else {
    fill(100, 255, 50);
    ellipse(sphere4x, sphere4y, 100, 100);
    fill(255);
  ellipse (130, 340, 20, 30);
  ellipse (170, 340, 20, 30);
  fill(0);
  ellipse (130, 340, 10, 20);
  ellipse (170, 340, 10, 20);
  }
  
   //creature sphere 5
  if(!hit5){
    fill(120);
    ellipse(sphere5x, sphere5y, 100, 100);
     fill(255);
  ellipse (780, 145, 20, 30);
  ellipse (820, 145, 20, 30);
  fill(0);
  ellipse (820, 145, 10, 20);
  ellipse (780, 145, 10, 20);
  } else {
    fill(0, 255, 0);
    ellipse(sphere5x, sphere5y, 100, 100);
     fill(255);
  ellipse (780, 145, 20, 30);
  ellipse (820, 145, 20, 30);
  fill(0);
  ellipse (820, 145, 10, 20);
  ellipse (780, 145, 10, 20);
  }
  
  //creature sphere 6
  if(!hit6){
    fill(90);
    ellipse(sphere6x, sphere6y, 100, 100);
    fill(255);
  ellipse (1220, 90, 20, 30);
  ellipse (1180, 90, 20, 30);
  fill(0);
  ellipse (1220, 90, 10, 20);
  ellipse (1180, 90, 10, 20);
  } else {
    fill(0, 0, 255);
    ellipse(sphere6x, sphere6y, 100, 100);
    fill(255);
  ellipse (1220, 90, 20, 30);
  ellipse (1180, 90, 20, 30);
  fill(0);
  ellipse (1220, 90, 10, 20);
  ellipse (1180, 90, 10, 20);
  }
  
  //creature sphere 7
  if(!hit7){
    fill(180);
    ellipse(sphere7x, sphere7y, 100, 100);
    fill(255);
  ellipse (430, 250, 20, 30);
  ellipse (470, 250, 20, 30);
  fill(0);
  ellipse (430, 250, 10, 20);
  ellipse (470, 250, 10, 20);
  } else {
    fill(50, 0, 200);
    ellipse(sphere7x, sphere7y, 100, 100);
    fill(255);
  ellipse (430, 250, 20, 30);
  ellipse (470, 250, 20, 30);
  fill(0);
  ellipse (430, 250, 10, 20);
  ellipse (470, 250, 10, 20);
  }
  
  //creature sphere 8
  if(!hit8){
    fill(150);
    ellipse(sphere8x, sphere8y, 100, 100);
     fill(255);
  ellipse (620, 590, 20, 30);
  ellipse (660, 590, 20, 30);
  fill(0);
  ellipse (620, 590, 10, 20);
  ellipse (660, 590, 10, 20);
  } else {
    fill(255, 100, 0);
    ellipse(sphere8x, sphere8y, 100, 100);
     fill(255);
  ellipse (620, 590, 20, 30);
  ellipse (660, 590, 20, 30);
  fill(0);
  ellipse (620, 590, 10, 20);
  ellipse (660, 590, 10, 20);
  }
  
 //create player/ character
  player.add(playerSpeed);
  
  //visuals for character
  stroke(0);
  strokeWeight(1);
  fill(255, 0, 0);
  ellipse(player.x, player.y, 80, 80);
  fill(255);
  ellipse(player.x-15, player.y-10, 18, 23);
  ellipse(player.x+15, player.y-10, 18, 23);
  fill(0);
  ellipse(player.x+15, player.y-9, 10, 15);
  ellipse(player.x-15, player.y-9, 10, 15);
  fill(255);
  ellipse(player.x-14, player.y-14, 5, 5);
  ellipse(player.x+16, player.y-14, 5, 5);
  ellipse(player.x-16, player.y-3, 5, 5);
  ellipse(player.x+14, player.y-3, 5, 5);
  stroke(0);
  strokeWeight(3);
  //thumbs
  ellipse(player.x+35, player.y, 15, 10);
  ellipse(player.x-35, player.y, 15, 10);
  //hands
  ellipse(player.x+35, player.y+14, 20, 23);
  ellipse(player.x-35, player.y+14, 20, 25);
 strokeWeight(0);

 
 //Aim with mouse for crosshairs
  PVector mouse = new PVector(mouseX, mouseY);
  //fill(255,0,0);
  // ellipse(mouse.x, mouse.y, 5, 5);
  crosshairs.resize(50, 50);
  image(crosshairs, mouse.x-23, mouse.y-23);
 
 
 //shoot bullet
  if (frameCount%5==0 && mousePressed) {
    PVector dir = PVector.sub(mouse, player);
    dir.normalize();
    dir.mult(maxSpeed*3);
    Bullet b = new Bullet(player, dir);
    //call for new bullet
    bullets.add(b);
  }
 
 //hit sphere function
 for (int i = 0; i < bullets.size(); i++){
   
   Bullet bullet = bullets.get(i);
   bullet.update();
   bullet.display();
  // println(bullet.location.x);
   println(bullet.location.x);
   
   //println(dist(bullet.location.x, bullet.location.y, ellipseCenter.x, ellipseCenter.y));
   if(dist(bullet.location.x, bullet.location.y, ellipseCenter.x, ellipseCenter.y) < 50){
      println("collision!");
      hit = true;
    }
    
   if(dist(bullet.location.x, bullet.location.y, sphere2x, sphere2y) < 50){
     hit2 = true;
   }
   
   if(dist(bullet.location.x, bullet.location.y, sphere3x, sphere3y) < 50){
     hit3 = true;
   }
   
   if(dist(bullet.location.x, bullet.location.y, sphere4x, sphere4y) < 50){
     hit4 = true;
   }
   
   if(dist(bullet.location.x, bullet.location.y, sphere5x, sphere5y) < 50){
     hit5 = true;
   }
   
   if(dist(bullet.location.x, bullet.location.y, sphere6x, sphere6y) < 50){
     hit6 = true;
   }
   
   if(dist(bullet.location.x, bullet.location.y, sphere7x, sphere7y) < 50){
     hit7 = true;
   }
   
   if(dist(bullet.location.x, bullet.location.y, sphere8x, sphere8y) < 50){
     hit8 = true;
   }
 }
 //starting timer at the second scene cue
   myTimer.start();
   myTimer = new Timer(16000);
 
 //determing whether the game is lost or won with the end time conditions met or not met
   if(myTimer.isFinished()){
     fill(255,0,0);
     if(hit == true && hit2 == true && hit3 == true && hit4 == true && hit5 == true && hit6 == true && hit7 == true && hit8 == true){
       colorful.resize( 1400, 800);
       image(colorful, 0, 00);
       textSize(50);
       fill(255);
       text("YOU WIN", 800, 200);
     } else {
       fill(0);
       rect(0, 0, 1400, 800);
       fill(255);
       text("YOU LOSE", 650, 400);
     }
   }
 
}
} 
//bullet class
class Bullet extends PVector {
  PVector vel;
  PVector location;
 //create vector for bullet
  Bullet(PVector loc, PVector vel) {
    //location = loc;
    //location.x = loc.x;
    //location.y = loc.y;
   
    
    super(loc.x, loc.y);
    
    //location.x = loc.x;
    
    this.vel = vel.get();
  }
 //find bullet location
  void update() {
    add(vel);
    location = this;
  }
 
 
 
 //display bullet
  void display() {
    //random color for bullet
    fill(random(255), random(255), random(255));
    ellipse(x, y, 8, 8);
  }
}
 
// timer class{
  class Timer{
  int savedTime; 
  int totalTime; 

  Timer(int _totalTime){
    totalTime = _totalTime;
  }
  
  void start() {
    savedTime = millis();
  }
  boolean isFinished() {
   // check how much time has passed
   int passedTime = millis() - savedTime;
   if (passedTime > totalTime) {
     return true;
   } else {
     return false;
   }
  }
}
//methods for movement
void keyPressed() {
  if (keyCode == UP)    { playerSpeed.y = -maxSpeed; }
  if (keyCode == DOWN)  { playerSpeed.y = maxSpeed;  }
  if (keyCode == LEFT)  { playerSpeed.x = -maxSpeed; }
  if (keyCode == RIGHT) { playerSpeed.x = maxSpeed;  }
}
 
//execute movement 
void keyReleased() {
  if (keyCode == UP || keyCode == DOWN)    { playerSpeed.y = 0; }
  if (keyCode == LEFT || keyCode == RIGHT) { playerSpeed.x = 0; }
}
