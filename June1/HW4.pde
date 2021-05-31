float r=0,s=280;
//float r=0,s=0;

void setup() {
  size(700,700);
  background(0);
  noFill();
  stroke(255);
 }
 
void draw () {
  //fill(random(255),random(255),random(255));
    if(s<10){
   noStroke();
   noFill();
  }
  translate(width/2,height/2);
  rotate(r);
  rect(0,0,138-r,s);
  //ellipse(r,s+r,4,4);
    r+=0.1;
    s-=0.2;         
  //println("s="+s+", r="+r);
}
  
