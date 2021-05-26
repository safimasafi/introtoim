
float angle;
float grid= 400;
float i=0; 

void setup() {
  size(900, 800);
};
 
void draw() {
 
  for(int x=0;x<=width;x+=grid){
    for(int y=0;y<=height;y+=grid){
  translate(mouseX,mouseY);
rotateX(radians(angle));
rotateY(radians(angle));
i=0; 
  while(i<width){
    i=i+20;
  beginShape();
vertex(i+100,100);
vertex(i+175,50);
vertex(i+250,100);
vertex(i+250,200);
vertex(i+175,250);
vertex(i+100,200);
vertex(i+100,100);
vertex(i+100,200);
 
endShape();
  };
  
  };
}
}
