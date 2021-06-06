PImage img;
int pointillise = 15; //size

void setup() {
  size(700,490);
  img = loadImage("pics.png");
  image(img, 0, 0); //'rainy' effect
  tint(220, 126);
  //image(img, 0, 0); //'pointalism' effect over tinted image *comment out ^image*
}

void draw() {
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  //loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
   
  fill(r,g,b,150);
  rect(x,y,pointillise,pointillise,7);
  
updatePixels();
}
