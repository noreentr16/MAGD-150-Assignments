//Basic Setup
void setup() {
  size(1300,850);
  noCursor();
}
void draw () {
  background(118, 182, 235);
  
  //sun
  fill(245, 210, 90);
  strokeWeight(0);
  ellipse(1200, 50, 425, 425);
  //rays
  beginShape();
  vertex(1000, 130);
  vertex(945, 160);
  vertex(940, 200);
  vertex(990, 180);
  endShape(CLOSE);
  beginShape();
  vertex(985, 40);
  vertex(945, 60);
  vertex(910, 40);
  vertex(940, 20);
  endShape(CLOSE);
  beginShape();
  vertex(1100, 250);
  vertex(1040, 290);
  vertex(1040, 330);
  vertex(1080, 320);
  endShape();
  beginShape();
  vertex(1275, 370);
  vertex(1289, 320);
  vertex(1250, 265);
  vertex(1240, 320);
  endShape();
  
  //cloud
  stroke(255,255,255);
  fill(255,255,255);
  strokeWeight(0);
  ellipse(700, 200, 200, 150);
  ellipse(640, 230, 200, 150);
  ellipse(720, 250, 200, 145);
  ellipse(760, 220, 200, 145);
  
  //cloud2
  ellipse(1000, 380, 200, 150);
  ellipse(940, 410, 200, 150);
  ellipse(1020, 430, 200, 145);
  ellipse(1060, 400, 200, 145);
  
  
  
  
  //pole
  stroke(0,0,0);
  rectMode(CORNERS);
  strokeWeight(3);
  fill(139, 131, 112);
  rect(365, 100, 415, 900);
  //shadow
  strokeWeight(0);
  fill(128, 119, 102);
  rect(367, 100, 413, 400);
  
  //grass
  fill(30, 230, 40);
  triangle(30, 850, 0, 850, 15, 800);
  triangle(30, 850, 45, 800, 60, 850); 
  triangle(60, 850, 75, 800, 90, 850);
  triangle(90, 850, 105, 800, 120, 850);
  triangle(120, 850, 135, 800, 150, 850);
  triangle(150, 850, 165, 800, 180, 850);
  triangle(180, 850, 195, 800, 210, 850);
  triangle(210, 850, 225, 800, 240, 850);
  triangle(240, 850, 255, 800, 270, 850);
  triangle(270, 850, 285, 800, 300, 850);
  triangle(300, 850, 315, 800, 330, 850);
  triangle(330, 850, 345, 800, 360, 850);
  triangle(360, 850, 375, 800, 390, 850);
  triangle(390, 850, 405, 800, 420, 850);  
  triangle(420, 850, 435, 800, 450, 850);
  triangle(450, 850, 465, 800, 480, 850);
  triangle(480, 850, 495, 800, 510, 850);
  triangle(510, 850, 525, 800, 540, 850);
  triangle(540, 850, 555, 800, 570, 850);
  triangle(570, 850, 585, 800, 600, 850);
  triangle(600, 850, 615, 800, 630, 850);
  triangle(630, 850, 645, 800, 660, 850);
  triangle(660, 850, 675, 800, 690, 850);
  triangle(690, 850, 705, 800, 720, 850);
  triangle(735, 850, 750, 800, 765, 850);
  triangle(765, 850, 780, 800, 795, 850);
  triangle(795, 850, 810, 800, 825, 850);
  triangle(825, 850, 840, 800, 855, 850);
  triangle(855, 850, 870, 800, 885, 850);
  triangle(885, 850, 900, 800, 915, 850);
  triangle(915, 850, 930, 800, 945, 850);
  triangle(960, 850, 975, 800, 990, 850);
  triangle(990, 850, 1005, 800, 1020, 850);
  triangle(1020, 850, 1035, 800, 1050, 850);
  triangle(1050, 850, 1065, 800, 1080, 850);
  triangle(1080, 850, 1095, 800, 1110, 850);
  triangle(1110, 850, 1125, 800, 1140, 850);
  triangle(1140, 850, 1155, 800, 1170, 850);
  triangle(1170, 850, 1185, 800, 1200, 850);
  triangle(1200, 850, 1215, 800, 1230, 850);
  triangle(1230, 850, 1245, 800, 1260, 850);
  triangle(1260, 850, 1275, 800, 1290, 850);
  triangle(1290, 850, 1305, 800, 1320, 850);
  
  
   //BackBoard
  rectMode(CORNER);
  strokeWeight(8);
  fill(250, 250, 250);
  rect(200, 25, 375, 300);
  strokeWeight(2);
  fill(170, 50, 45);
  rect(250, 60, 275, 225);
  fill(250, 250, 250);
  rect(270, 80, 235, 185);
  
  //rim base
  //have the rim base be behind the basketball so that the basketball appears to go in the hoop
  fill(250, 77, 37);
  rectMode(CORNERS);
  rect(360, 275, 420, 310);
  stroke(10);
  point(405, 300);
  point(375, 300);
  
  //Adding in a Basketball
  fill(191, 92, 11);
  strokeWeight(1);
  stroke(0);
  //have basketball follow the mouse
  ellipse(mouseX, mouseY, 100, 100);
  fill(243, 122, 22);
  arc(mouseX, mouseY, 100, 100, 0, PI);
  fill(243, 122, 22);
  arc(mouseX, mouseY, 100, 75, 0, TWO_PI);
  fill(191, 92, 11);
  arc(mouseX, mouseY, 100, 75, 0, PI);
  
  
    //net
    //use line work to create the net
  strokeWeight(6);
  stroke(206, 205, 198);
  line(315, 285, 330, 320);
  line(350, 285, 350, 320);
  line(465, 285, 450, 320);
  line(390, 285, 390, 320);
  line(430, 285, 430, 320);
  line(330, 320, 450, 320);
  
  line(330, 320, 330, 350);
  line(350, 320, 350, 350);
  line(390, 320, 390, 350);
  line(430, 320, 430, 350);
  line(450, 320, 450, 350);
  line(330, 350, 450, 350);
  
  line(330, 350, 330, 380);
  line(350, 350, 350, 380);
  line(390, 350, 390, 380);
  line(430, 350, 430, 380);
  line(450, 350, 450, 380);
  line(330, 380, 450, 380);
  
  line(330, 380, 330, 400);
  line(350, 380, 350, 400);
  line(390, 380, 390, 400);
  line(430, 380, 430, 400); 
  line(450, 380, 450, 400);
  line(330, 400, 450, 400);
  
  line(330, 400, 330, 420);
  line(350, 400, 350, 420);
  line(390, 400, 390, 420);
  line(430, 400, 430, 420); 
  line(450, 400, 450, 420);
  
 //rim
 //have front of rim in front of basketball so as to have the basketball appear to go into the hoop
  stroke(0,0,0);
  strokeWeight(5);
  fill(250, 77, 37);
  rect(305, 280, 475, 290);
  
  
}
