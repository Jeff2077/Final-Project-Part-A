int x = 0;
int y = 0;

void setup(){
 size(800, 600);
}

void draw(){
   background(0, 0, 150); //sky
   
   fill(0, 150, 0); //grass color
   rect(0, 500, 800, 100); //grass
   
   drawSnowman();
   drawHat1(); 
   
   drawSnowman2();
   drawHat2();
   
   drawSnowman3();
   drawHat3();
   
   drawSnow();
  
   drawNoses(); //nose button
   drawArms(); //moving arms
   
   Button2(150, 225);
   Button2(650, 200);
   
   Button3(150, 275);
   Button3(650, 250);
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
   
   triangle(375, 250, 400, 275, 425, 250); //base of tie
   rect(395, 250, 10, 50); //tie length
   triangle(395, 300, 400, 325, 405, 300); //tie tip
}

void drawSnowman2(){
  fill(255);
  ellipse(150, 400, 200, 200); //legs
  ellipse(150, 225, 150, 150); //torso
  ellipse(150, 100, 100, 100); //head
  
  fill(0);                   //eyes
  ellipse(125, 75, 10, 10); //left eye
  ellipse(175, 75, 10, 10); //right eye
  
  fill(0);
  triangle(125, 115, 150, 135, 175, 115); //mouth
  
  ellipse(150, 175, 10, 10); // button 1

  line(25,300, 75, 225); //left arm
}

void drawSnowman3(){
  fill(255);
  ellipse(650, 400, 200, 200); //legs
  ellipse(650, 225, 150, 150); //torso
  ellipse(650, 100, 100, 100); //head
  
  fill(0);
  rect(610, 80, 20, 20); //sunglasses left eye
  rect(670, 80, 20, 20); //right eye
  rect(610, 80, 60, 10); // connector

  fill(0);
  rect(640, 120, 20, 5); //mouth
  
  fill(0, 255, 0);
  triangle(630, 170, 650, 150, 630, 130); //left bow tie
  
  fill(255, 0, 0);
  triangle(670, 170, 650, 150, 670, 130); //right bow tie
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
  ellipse(150, 50, 100, 25); //hat
  
  noStroke();
  triangle(125, 50, 150, 10, 175, 50); //hat point
  
  fill(255);
  
  ellipse(150, 10, 20, 20);  //hat tip
}

void drawHat3() {
  fill(0);
    ellipse(650, 50, 150, 25); //hat base
  rect(625, 10, 50, 50); //hat point
}

void Button2(int posX, int posY){
  fill(0);
 ellipse(posX, posY, 20, 20); 
}

void Button3(int pos2X, int pos2Y){
  fill(0);
  ellipse(pos2X, pos2Y, 30, 30);
}

void drawSnow(){
  fill(255); //
 noStroke();
 fill(255);
 ellipse(50, y, 10, 10); //snow falling from different y points
 ellipse(100, y+10, 10, 10);
 ellipse(200, y, 10, 10); 
 ellipse(150, y+20, 10, 10);
 ellipse(250, y +30, 10, 10);
 ellipse(300, y, 10, 10);
 ellipse(350, y+10, 10, 10);
 ellipse(400, y+20, 10, 10);
 ellipse(450, y+30, 10, 10);
 ellipse(550, y, 10, 10);
 ellipse(600, y+10, 10, 10);
 ellipse(650, y+20, 10, 10);
 ellipse(700, y+30, 10, 10);
 ellipse(750, y, 10, 10);
 ellipse(800, y+10, 10, 10);
 y = y +5; //increments of 5
   if(y > height) //if increments of 5 surpass height y, return to 0
   {
     y = 0;
   } 
}


void drawNoses(){ 
 if((keyPressed == true)) //if any key is pressed is true
 { 
   fill(255, 0, 0); //color red
 }
 else
 {
   fill(0); //else remain black
 }
  ellipse(400, 190, 10, 10); //noses
  ellipse(150, 100, 10, 10);
  ellipse(650, 105, 20, 20);
}

void drawArms(){  // moving arms
   stroke(10);
  if(x < 266) //if x is less than 266, arms down
  {
   line(275, 375, 325, 325);  //Snowman 1 left arm down
   line(275, 300, 225, 225); //Snowman 2 right arm down
   line(575, 225, 525, 300); //Snowman 3 left arm down
  }
  else if(x > 532) //x greater than 532, arms up
  {
  line(275, 275, 325, 325);  //Snowman 1 left arm up
  line(275, 150, 225, 225); //Snowman 2 right arm up
  line(575, 225, 525, 175); //Snowman 3 left arm up
  }
  else //between 266 and 532,arms middle
  {
  line(250, 325, 325, 325);//Snowman 1 left arm middle
  line(300, 225, 225, 225);//Snowman 2 right arm middle
  line(575, 225, 500, 225); //Snowman 3 left arm middle
}
  x +=50;  //increment of 50, x surpasses width, return to 0, arms repeat
  if(x > width){
    x = 0;
  }
}
