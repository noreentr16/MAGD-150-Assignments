//where bullets will be stored
ArrayList <Bullet> bullets;
int posX;
SpaceShip mySpaceShip;
Timer myTimer;

PVector pos_player;

PImage alien3;
PImage alien2;
PImage alien1;
PImage spaceshipX;
PImage galaga;
int textO = 255;
//setting up two different states
boolean mState = false;
boolean timeState =true;
int alienO = 0;


void setup(){
  frameRate(60);
  background(255);
  size(1400, 800);
  bullets = new ArrayList();
  myTimer = new Timer(2000);
  mySpaceShip = new SpaceShip();
  spaceshipX = loadImage ("spaceshipX.png");
  galaga = loadImage ("galaga.jpg");
  alien1 = loadImage ("alien1.png");
  alien2 = loadImage ("alien2.png");
  alien3 = loadImage ("alien3.png");
}

void draw(){
  
  
  if (mState == false){
  //scene 1- start menu
  image(galaga, -20, -175);
  //text for instructional start
  fill(255,0,0);
  textSize(35);
  text("CLICK  TO  START", 600, 700);
  //scene 2
  
  
  } else {
    myTimer.start();
    myTimer = new Timer(7000);
    background(0);
    fill(255,0,0);
    
    //bullet removal
    removeToLimit(100);
    moveAll();
    displayAll();
    //left side
    textSize(35);
    fill(255, 0, 0);
    text("A  [LEFT]", 50, 105);  
    text("D  [RIGHT]", 50, 145);
    text("SPACE [FIRE]", 50, 185);
    //stars
    strokeWeight(3);
    
    stroke(0,0,255);
    point(290, 300);
    point(800, 500);
    point(430, 530);
    
    stroke(0,255,0);
    point(300, 200);
    point(563, 764);
    point(644, 123);
    
    stroke(255,255,0);
    point(432, 100);
    point(897, 677);
    point(990, 186);
    
    stroke(255,0,0);
    point(543, 423);
    point(875, 356);
    point(420, 690);
    point(698, 230);
    point(999, 783);
    point(292, 720);
    point(450, 340);
    point(850, 60);
    point(340, 500);
    point(370, 523);
    point(770, 530);
    
    //Alien1
    tint(255,alienO);
    image(alien1, 640, 150);
    image(alien1, 565, 150);
    image(alien1, 490, 150);
    image(alien1, 415, 150);
    image(alien1, 340, 150);
    image(alien1, 265, 150);
    image(alien1, 715, 150);
    //Alien2
    image(alien2, 640, 90);
    image(alien2, 565, 90);
    image(alien2, 490, 90);
    image(alien2, 415, 90);
    image(alien2, 340, 90);
    image(alien2, 265, 90);
    image(alien2, 715, 90);
    //alien3
    image(alien3, 640, 20);
    image(alien3, 565, 20);
    image(alien3, 490, 20);
    image(alien3, 415, 20);
    image(alien3, 340, 20);
    tint(255,255);
    
    
    
    //right side display info
    fill(255,0,0);
    textSize(35);
    text("HIGH", 1110, 105);
    text("SCORE", 1135, 140);
    text("1UP", 1110, 255);
    text("2UP", 1110, 365);
    fill(255);
    text("30000", 1135, 175);
    text("00", 1205, 290);
    text("00", 1205, 400);
    
    //get ready
    fill(255,0,0, textO);
    textSize(50);
    text("GET READY", 540, 400);
    if(myTimer.isFinished()){
      textO = 0;
      alienO = 255;
    }
      
    if(keyPressed){
      if (key == ' '){
    Bullet temp = new Bullet((posX + 40), 650);
    bullets.add(temp);
      }
  }
    mySpaceShip.display();
    mySpaceShip.move();
    spaceshipX.resize(80, 80);
    image(spaceshipX, 1100, 460);
    image(spaceshipX, 1180, 460);
  }
}
  
//class for bullets
class Bullet//bullet class
  {
    float x;
    float y;
    float speed;
    Bullet(float tx, float ty)
    {
      x = tx;
      y = ty;
    }
    void display()
    {
      stroke(255);
      point(x,y);
    }
    void move()
    {
      y -= 3;
    }
  }
  void removeToLimit(int maxLength)
  {
    while(bullets.size() > maxLength)
    {
      bullets.remove(0);
    }
  }
  void moveAll()
  {
    for(Bullet temp : bullets)
    {
      temp.move();
    }
  }
  void displayAll()
  {
    for(Bullet temp : bullets)
    {
      temp.display();
    }
  }
//class for spaceship  
class SpaceShip{

int posY;
  SpaceShip(){
    posX = round(585);
    posY = 640;
  }
  void display(){
    spaceshipX.resize( 80, 80);
    image(spaceshipX, posX, posY);
  }
  
  void move() {
  if(keyPressed){
    if(key == 'a' && posX > 275){
      posX = posX - 2;
    }
    if(key == 'd' && posX < 1000){
      posX = posX +2;
    }
  }
}
}


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



//mouse interaction to switch scenes  
  void mousePressed(){
    mState = !mState;
}
