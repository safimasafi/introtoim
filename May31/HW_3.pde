//Safeya Alblooshi
//Intro to IM
//Artwork using functions


int gridSize = 10;  // grid size
void setup() {
  size(700, 700); 
  noStroke();
  background(220,25,65);
  //noLoop(); // doens't loop 
  //line(150,25,270,350);
}

void draw () {
  for (int x = gridSize; x < width; x += gridSize) { // first loop in x-direction
    for (int y = gridSize; y < height; y += gridSize) { // second loop in y-direction
      float circleSize = random(gridSize*0.3, gridSize); // set random circle size
      fill(random(255)); // set random blakish value
      ellipse(x, y, circleSize, circleSize); // draw circle at each x,y position
 
 // me trying to do something over the circles that didn't work>
 //line(mouseX,mouseY,270,350);
  //stroke(10,25,220,100);
  //line(mouseX*1.1,mouseY*1.1,400,300);stroke(10,15,240);
  } }
}
