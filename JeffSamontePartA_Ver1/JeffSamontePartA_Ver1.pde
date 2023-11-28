void setup(){
  size(800, 600);
 background(155); 
}

void draw(){
  drawSnowman();
  drawHat1();
   drawEyesMouth();
   drawNoses();
                            //nose button
  line(250, 325, 325, 325); // moving arms
  line(475, 325, 525, 400);
}



void drawSnowman(){
  fill(255);
  ellipse(400, 200, 100, 100); // head
   
  ellipse(400, 325, 150, 150); // torso
  ellipse(400, 500, 200, 200); // legs
}

void drawHat1(){
  fill(0);
      rect(375, 50, 50, 100);  // hat
       ellipse(400, 150, 150, 25); // hat base
       
       fill(200, 0, 0);
      rect(375, 100, 50, 25); // hat ribon
 
}

void drawHat2(){
  
}

void drawHat3() {
  
}

void drawEyesMouth(){
fill(0);
  ellipse(375, 175, 10, 10); // right eye 
  ellipse(425, 175, 10, 10);  // left eye

    bezier(375, 200, 400, 240, 420, 200, 425, 200); // mouth
  
}

void drawNoses(){
 if keyPressed
  ellipse(400, 190, 10, 10);
}
