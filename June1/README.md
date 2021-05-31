HW 4

<img src= "https://github.com/safimasafi/introtoim/blob/main/June1/img1.png">
Here is a screenshot of the first generative 'art' for today's homework. I decided to experiment with the rotate and translate functions on a rect shape. 
<<img src= "https://user-images.githubusercontent.com/70910372/120238859-22bdfe80-c26e-11eb-848c-78499d0f171c.mov">
The code for the rectangle part:
````
float r=0,s=280;

void setup() {
  size(700,700);
  background(0);
  noFill();
  stroke(255);
 }
 
void draw () {
    if(s<10){
   noStroke();
  }
  translate(width/2,height/2);
  rotate(r);
  rect(0,0,138-r,s);
    r+=0.1;
    s-=0.2;         
  //println("s="+s+", r="+r); //to determine float
}
````




Upload code and one or more images
Describe the overall concept of your game or artwork
Describe how you used classes
Include the image(s) or link(s) to video
Describe any problems you ran into and how you resolved or worked around them
Describe anything interesting or clever about your program
