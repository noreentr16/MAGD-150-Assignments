void setup(){
  //Size
  size(600,400);
  
  //Background
  background(65,123,171);
  
  //USE A DIFFERENT DRAW METHOD HERE
  
  //visorfill
  stroke(223,100,0);
  fill(238,140,32);
  ellipseMode(CORNERS);
  ellipse(210, 70, 390, 250);
  ellipseMode(CENTER);
  stroke(220, 180, 31);
  strokeWeight(35);
  line(250, 240, 330, 100);
  strokeWeight(13);
  line(285, 240, 365, 100);
  //Top of helmet
  strokeWeight(7);
  stroke(100,120,0);
  fill(100,120,0);
  rect(265, 30, 70, 30, 0);
  ellipse(300, 80, 160, 80);
  rect(265, 100, 70, 45, 25);
  rect(320, 100, 50, 45);
  rect(230, 100, 50, 45);
  rect(210, 90, 50, 55);
  rect(340, 90, 50, 55);
  
  //forehead
  rect(265, 100, 25, 45, 25);
  
  //visor
  stroke(100,120,0);
  strokeWeight(7);
  line(210, 137, 210, 175);
  line(390, 137, 390, 175);
  strokeWeight(4);
  //brow
  rect(230, 120, 50, 45, 25);
  rect(321, 120, 50, 45, 25);
  stroke(100,120,0);
  strokeWeight(7);
  line(202, 125, 240, 160);
  line(398, 125, 360, 160);
  line(206, 100, 206, 130);
  line(394, 100, 394, 130);
  line(245, 40, 205, 100);
  line(355, 40, 395, 100);
  line(265, 30, 240, 43);
  line(335, 30, 360, 43);
  rect(245, 35, 30, 20, 25);
  rect(325, 35, 30, 20, 25);
  strokeWeight(4);
  
  //I USE DIFFERENT DRAW METHOD HERE
  
  //Bottom of helmet
  rectMode(CORNERS);
  rect(286, 260, 315, 315);
  stroke(75, 77, 74);
  //Greys
  strokeWeight(8);
  line(270, 225, 331, 225);
  line(270, 230, 331, 230);
  line(270, 235, 331, 235);
  line(270, 240, 331, 240);
  line(270, 245, 331, 245);
  line(270, 250, 331, 250);
  strokeWeight(4);
  fill(75, 77, 74);
  stroke(100, 120, 0);
  rect(286, 240, 315, 260);
  stroke(100,120,0);
  strokeWeight(7);
  //left
  line(210, 180, 193, 205);
  line(195, 200, 205, 230);
  line(205, 230, 275, 310);
  line(282, 310, 270, 305);
  line(207, 180, 286, 262);
  //right
  line(392, 180, 409, 205);
  line(407, 200, 401, 230);
  line(330, 310, 400, 230);
  line(319, 310, 335, 305);
  line(394, 180, 315, 262);
  //leftthick
  strokeWeight(22);
  line(207, 190, 286, 280);
  line(202, 210, 286, 305);
  //rightthick
  line(394, 190, 315, 280);
  line(399, 209, 317, 306);
  
  //linework
  stroke(0,0,0);
  strokeWeight(4);
  fill(0,0,0);
  
  //leftside- top to bottom
  line(265, 27, 240, 40);
  line(240, 40, 200, 100);
  line(200, 100, 200, 130);
  line(200, 130, 240, 165);
  line(270, 165, 240, 165);
  line(240, 165, 240, 138);
  line(240, 138, 283, 138);
  line(240, 138, 200, 100);
  line(270, 165, 283, 145);
  line(284, 145, 284, 38);
  line(284, 38, 280, 30);
  
  //rightside- top to bottom
  line(335, 27, 360, 40);
  line(360, 40, 400, 100);
  line(400, 100, 400, 130);
  line(400, 130, 360, 165);
  line(330, 165, 360, 165);
  line(360, 165, 360, 138);
  line(360, 138, 317, 138);
  line(360, 138, 400, 100);
  line(330, 165, 317, 145);
  line(317, 145, 317, 38);
  line(317, 38, 321, 30);
  
  //middle- top to bottom
  line(265, 27, 335, 27);
  line(284, 145, 317, 145);
  strokeWeight(2);
  line(284, 120, 317, 120);
  line(284, 90, 317, 90);
  line(284, 50, 317, 50);
  strokeWeight(4);
  
  //visor
  //linework
  
  //leftside
  line(207, 137, 207, 175);
  line(215, 145, 215, 182);
  line(207, 175, 286, 258);
  line(270, 220, 265, 232);
  line(270, 220, 286, 240);
  line(286, 240, 286, 258);
  
  //rightside
  line(394, 137, 394, 175);
  line(386, 145, 386, 182);
  line(394, 175, 315, 258);
  line(331, 220, 336, 232);
  line(331, 220, 315, 240);
  line(315, 240, 315, 258);
  
  //middle
  line(270, 220, 331, 220);
  line(286, 240, 315, 240);
  line(286, 258, 315, 258);
  
  //texture
  strokeWeight(2);
  
  //middle
  line(290, 155, 311, 155);
  line(271, 208, 330, 208);
  
  //leftside
  line(271, 208, 260, 217);
  line(290, 155, 275, 173);
  line(275, 173, 245, 173);
  line(245, 173, 233, 190);
  line(233, 190, 260, 217);
  
  //rightside
  line(330, 208, 341, 217);
  line(311, 155, 326, 173);
  line(326, 173, 356, 173);
  line(356, 173, 368, 190);
  line(368, 190, 341, 217);
  
  strokeWeight(4);
  //bottom of helmet
  
 
  stroke(75, 77, 74);
  strokeWeight(13);
  //left
  line(196, 201, 236, 249);
  line(200, 215, 236, 255);
  line(206, 227, 235, 264);
  //right
  line(405, 201, 365, 249);
  line(403, 214, 365, 259);
  line(398, 227, 365, 269);
  stroke(0, 0, 0);
  strokeWeight(4);
  
  //left side
  line(207, 175, 190, 200);
  line(190, 200, 200, 230);
  line(280, 315, 270, 310);
  line(200, 230, 270, 310);
  line(198, 195, 240, 243);
  line(240, 243, 240, 273);
  //right side
  line(394, 175, 411, 200);
  line(411, 200, 404, 230);
  line(321, 315, 335, 310);
  line(335, 310, 404, 230);
  line(403, 195, 361, 243);
  line(361, 243, 361, 275);
  //middle
  line(280, 315, 321, 315);
  
  //sides
  point(211, 160);
  point(390, 160);
 
}
