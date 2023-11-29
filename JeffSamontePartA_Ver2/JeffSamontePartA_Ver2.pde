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
   triangle(375, 300, 400, 325, 385, 300);
   
   
  
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
}

void drawArms(){  // moving arms
   stroke(10);
  if(x < 266) 
  {
   line(275, 375, 325, 325);  //left arm down
  }
  else if(x > 532)
  {
  line(275, 275, 325, 325);  //left arm up
  }
  else
  {
  line(250, 325, 325, 325); //left arm middle
}
  x +=5;  //increment
  if(x > width){
    x = 0;
  }
}
