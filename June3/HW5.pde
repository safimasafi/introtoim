/*
Safeya Alblooshi
HW 5
3rd June, 2021

Using the translate function to move the anti-clockwise rotating rectangle & clockwise rotating ellipse to the center of the canvas.
*/

  float x=0;
  float y=0;

void setup(){
  size(400,350);
}

void draw(){
  fill(225,12); //makes an almost transparent trail
  rect(-5,-5,420,370); //instead of using background, goes over canvas size
  translate(width/2, height/2);
  rotate(x);
  noFill();
  stroke(random(255),random(255),random(255));
  rect(50,50,50,50);
   x=x+.05; //changes x position & rotates the rect anti-clockwise
  
  ellipse(-5,-5,300,300);
  rotate(y);
   y=y-.05; //changes y position & rotates the ellipse clockwise
}
