//circles grid

<img src= "https://github.com/safimasafi/introtoim/blob/main/May31/pic1.png">

Here I screenshot my sample art where a grid of circles vary in size and colour value in which the number of circles are controlled with 'gridSize' and size/colour are randomised with the random function. 
````
float circleSize = random(gridSize*0.3, gridSize); // set random circle size
      fill(random(255)); // set random blakish value
````
  
This screenshot was taken when the 'noLoop' function wasn't active.
  

  




The present script draws a grid of circles in varying sizes and gray-scale values. The number of circles can be controlled by adjusting the ‘gridSize’ variable. ‘noLoop’ will prevent the draw function from running over and over again. Of course in this case the draw function could also be neglected completely, yet for the sake of structuring the sketch it should remain. Turning ‘noLoop’ off will result in a flickering screen. Within the draw function two nested loops iterate in steps defined by ‘gridSize’ through the screen and draw circles at the respective locations.

Upload code and one or more images

Describe the overall concept of your game or artwork
Include video
Describe any problems you ran into and how you resolved or worked around them
Describe anything interesting or clever about your program
