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
  
<img src= "https://user-images.githubusercontent.com/70910372/120115640-a9eb7380-c195-11eb-8700-770da747aa6c.mov?">

I was inspired by pointillism, precisely by pixel pointillism, to create this homework. I wanted to add an additional layer of 'interaction' where a sketch of lines are drawn where the mouse is but it didn't seem to integrate properly. When i tried it out, the outcome would be such that wherever the mouse is the lines would appear over the circles; however, I wanted it to be continuous during the draw function but in appears to lag a lot and the outcome isn't as expected.

Exmaple of failed integration of interactivity.
<img src= "https://user-images.githubusercontent.com/70910372/120116487-74488980-c199-11eb-9922-b5b3095b0007.mov">
