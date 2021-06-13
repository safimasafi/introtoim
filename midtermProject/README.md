Saf

Mid-Term

Dot Game

14/07/2021


*Some info/problems/documentation is written the journal

After changing my initial idea, I went with the Dot Game idea where a circle has to avoid getting in contact with with other black circles coming its way. I kept the colours of the circles simple, red for the main and black. I chose to have the red circle move across the y axis and the black across the x, and have the mouse control the red circle instead of using the up/down arrows. 

The instructions is that one clicks anywhere on the canvas and uses the mouse to control the red circle to avoid the black circles. If the balls collide, one clicks again to restart.

My first sketch consisted of functions that defined the circles, their movement, and if the game was over or not (code provided in the journal).
The first problem I ran into was having the black circles go over the red instead of stopping when it ‘hit’ it. I thought there was a problem with the way I coded the game to restart but that was easily fixed by changing one of the Boolean values.
<img src = "https://user-images.githubusercontent.com/70910372/121818426-2d2dbe80-cc98-11eb-8eed-367d100d31d3.png">
<img src = "https://user-images.githubusercontent.com/70910372/121818428-3159dc00-cc98-11eb-8a79-6b9207492058.png">

Image 1 is the black circle going over the red and image 2 is with the correct code, where the black circle hits the red and stops.

I then had to make sure that balls stopped moving when it displayed the text ‘game over’ (when a black ball would hit the red).
<img src = "https://user-images.githubusercontent.com/70910372/121818451-4a628d00-cc98-11eb-8f03-c1eed5ff99d9.mov"> 
                                                                                                                  
Another problem I ran into was trying to get the an ‘instructions’ screen to show up before the actual game started. That was mainly due to an error in the order of my code placement (more details in the journal).  I decided to keep the background of the game neutral with the pale-reddish colour instead of adding an image that would act as a backdrop. The only way I thought of implementing an image was taking a screenshot of the actual game and including it in the ‘intro’ screen. I thought it’s nice that it doesn’t look like an image as the background colour is the same as on the image.

<img src = "https://user-images.githubusercontent.com/70910372/121818711-e2ad4180-cc99-11eb-97bc-f7983a090bd8.png">  <img src = "https://user-images.githubusercontent.com/70910372/121818718-e771f580-cc99-11eb-8c36-cc644c9dab74.png">

The first image is the ‘instructions/intro’ screen when I first worked on it, and the second is a screenshot of the final result.                                                                                                               

