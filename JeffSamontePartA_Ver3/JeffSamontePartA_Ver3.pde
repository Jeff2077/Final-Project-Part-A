int x = 0;
int y = 0;

int dragX, dragY, moveX, moveY;
void setup(){
 size(800, 600);

}

void draw(){
   background(0, 0, 150); //sky
   
   fill(0, 150, 0); //grass
   rect(0, 500, 800, 100);
   
   drawSnowman();
   drawHat1(); 
   
   drawSnowman2();
   drawHat2();
   
   drawSnow();
  
   drawNoses(); //nose button
   drawArms(); //moving arms
}



void drawSnowman(){
  fill(255);
  ellipse(400, 200, 100, 100); // head
   
  ellipse(400, 325, 150, 150); // torso
  ellipse(400, 500, 200, 200); // legs
  
    fill(0);                  //face
  ellipse(375, 175, 10, 10); // right eye 
  ellipse(425, 175, 10, 10);  // left eye

  bezier(375, 200, 400, 240, 420, 200, 425, 200); // mouth
  
   line(475, 325,  525, 375); //right arm
   
   triangle(375, 250, 400, 275, 425, 250);
   rect(395, 250, 10, 50);
   triangle(395, 300, 400, 325, 405, 300);
}

void drawSnowman2(){
  fill(255);
  ellipse(150, 400, 200, 200);
  ellipse(150, 225, 150, 150);
  ellipse(150, 100, 100, 100);
  
  fill(0);
  ellipse(125, 75, 10, 10);
  ellipse(175, 75, 10, 10);
  
  fill(0);
  triangle(125, 115, 150, 135, 175, 115);
  
  ellipse(150, 175, 10, 10);
  ellipse(150, 225, 20, 20);
  ellipse(150, 275, 30, 30);
  
  line(25,300, 75, 225); //left arm
}
void drawHat1(){
  fill(0);
  rect(375, 50, 50, 100);  // hat
  ellipse(400, 150, 150, 25); // hat base
       
  fill(200, 0, 0);
  rect(375, 100, 50, 25); // hat ribon
}

void drawHat2(){
  fill(255, 0, 0);
  ellipse(150, 50, 100, 25);
  
  noStroke();
  triangle(125, 50, 150, 10, 175, 50);
  
  fill(255);
  
  ellipse(150, 10, 20, 20);
  
  
}

void drawHat3() {
  
}

void drawSnow(){
  fill(255);
 noStroke();
 fill(255);
 ellipse(200, y, 10, 10); 
 ellipse(150, y+20, 10, 10);
 ellipse(250, y +30, 10, 10);
 ellipse(300, y, 10, 10);
 ellipse(350, y+10, 10, 10);
 ellipse(400, y+20, 10, 10);
 ellipse(450, y+30, 10, 10); 
 y = y + 1;
   if(y > height)
   {
     y = 0;
   } 
}


void drawNoses(){ 
 if((keyPressed == true))
 { 
   fill(255, 0, 0);
 }
 else
 {
   fill(0);
 }
  ellipse(400, 190, 10, 10);
  ellipse(150, 100, 10, 10);
}

void drawArms(){  // moving arms
   stroke(10);
  if(x < 266) 
  {
   line(275, 375, 325, 325);  //Snowman 1 left arm down
   line(275, 300, 225, 225);
  }
  else if(x > 532)
  {
  line(275, 275, 325, 325);  //left arm up
  line(275, 150, 225, 225);
  }
  else
  {
  line(250, 325, 325, 325);//left arm middle
  line(300, 225, 225, 225);
}
  x +=5;  //increment
  if(x > width){
    x = 0;
  }
}
