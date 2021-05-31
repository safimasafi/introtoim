HW 4

<img src= "https://github.com/safimasafi/introtoim/blob/main/June1/img1.png">
Here is a screenshot of the first generative 'art' for today's homework. I decided to experiment with the rotate and translate functions on a rect shape. 
<img src= "https://user-images.githubusercontent.com/70910372/120238859-22bdfe80-c26e-11eb-848c-78499d0f171c.mov">
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
Seeing the circular patterns from the above video, I thought I would create a similar generative piece using an ellipse. 

<img src= "https://github.com/safimasafi/introtoim/blob/main/June1/img2.png">
<img src= "https://user-images.githubusercontent.com/70910372/120239226-d8894d00-c26e-11eb-949a-d7e9cdeef8b9.mov">
Code for the ellipse part:

````
float r=0,s=0;

void setup() {
  size(700,700);
  background(0);
 }
 
void draw () {
  fill(random(255),random(255),random(255)); //colour for ellipse
    if(s<10){
   noStroke();
  }
  translate(width/2,height/2);
  rotate(r);
  ellipse(r,s+r,4,4);
    r+=0.1;
    s+=0.2;         
  //println("s="+s+", r="+r); //to determine float
}
````

The println helped determine the declared float variables 'r' and 's' with the respective values, as well as assign the value for the 'rect'.
With this homework I mainly had to remember the importance of order of operations as I kept having blank screens showing up, or the rectangle/ellipse not doing what I wanted it to as I first rotated it then translated, which also produced some cool results, just not the desired ones, like this one here> ![Screen Shot 2021-06-01 at 00 38 58](https://user-images.githubusercontent.com/70910372/120240558-edb3ab00-c271-11eb-88f1-e58cda0b679d.png)>


And since I kept commenting out lines of code for the rectangle/ellipse, I got confused what I had to include or exclude. 
It was, however, interesting to see that I didn't have to change much to go from a rectangular piece to a spiral one.
