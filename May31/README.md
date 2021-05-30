//circles grid

<img src= "https://github.com/safimasafi/introtoim/blob/main/May31/pic1.png">

Here I screenshot my sample art where a grid of circles vary in size and colour value in which the number of circles are controlled with 'gridSize' and size/colour are randomised with the random function. 
````
void draw () {
  for (int x = gridSize; x < width; x += gridSize) { // first loop in x-direction
    for (int y = gridSize; y < height; y += gridSize) { // second loop in y-direction
      float circleSize = random(gridSize*0.3, gridSize); // set random circle size
      fill(random(255)); // set random blakish value
      ellipse(x, y, circleSize, circleSize); // draw circle at each x,y position
````
  
The above screenshot was taken when the 'noLoop' part of the draw function wasn't active.

The below video is without the 'noLoop' allowing the draw function to run continuously.
  
<


Describe the overall concept of your game or artwork
Include video
Describe any problems you ran into and how you resolved or worked around them
Describe anything interesting or clever about your program
