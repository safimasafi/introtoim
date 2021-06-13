Saf

Mid-Term

Dot Game

14/07/2021


**June 7**: I pretty much spent the whole day looking through almost every example in the Minim library and playing around with them, ideally to *get inspiration*. I was impressed at the range of synthesis examples in the library and thought that my main idea could be a piano tiles sort of game, or a one and a half octave piano player with some effects knobs for basic synthesis implementation. At the same time, after some thinking, I realised that replicating piano sounds (C3-C4) on a virtual environment isn’t all that interesting and didn’t see the point of such replication.
I thought I could instead have an audio map with sound/field recordings, or create a player that would take sound files and play them at random, to create a ‘composition’ that would be represented visually, like a sound palette.

**June 8**: I mainly created draft sketches of possible synth ideas that can act as an interface for the user the ‘play’ with as an instrument, that would create a visual ‘end-product’. Main goal was to have a visual outcome for each sound that was emitted from the sketch, so far it’s only random colored lines that are generated from each random sound played.

**June 10**: After re-reading the mid-term instructions, I realised my idea didn’t really match that of a game so I came up with something different; a dot game. The point is to have one shape, a circle, that should avoid getting in contact with other circles, or balls, that come its way. I thought it would be easily possible to implement an image and audio into the game in such that I can include a background image as the backdrop and have a soundtrack to the game, or a short sound effect every time the main circle collides with another.

<img src= "https://user-images.githubusercontent.com/70910372/121816079-90185900-cc8a-11eb-9e2d-b0ac88afbd35.JPG" width="400/"> _Not sure why the image is rotated 90 degrees to the right_

The first two things I had to think through was how to visually display the balls and the direction of movement. From the diagram above, I decided that the balls will be moving horizontally towards the main circle, and the main circle will have to avoid getting in contact with them by being moved by the mouse or arrow keys along the y axis. 

**[`June 11`](#code)**: Started writing proper code that will be the foundation of the game; the moving balls and the main ball. Divided the sketch into sections; the circles, if game is over, if game isn’t over. The intention was to have the black balls hit the red ball and not move through it but it didn’t seem to work until I realised one line of my code was faulty; I needed to change the Boolean value to true instead of false.
````
float x = 450;
float y = random(0, 450);
float y2 = random(0, 450);
float y3 = random(0, 450);
float x2, x3;
boolean game_over = false;


void setup() {
  size(500, 450);
  background(245,220,230);
}

//circles
void randomcirc(float rx, float ry, float rx2, float ry2, float rx3, float ry3) {
  fill(0);
  if (frameCount>60) {
    ellipse(rx2, ry2, 40, 40);
  }
  if (frameCount>120) {
    ellipse(rx3, ry3, 40, 40);
  }
    ellipse(rx, ry, 40, 40);
}
//if game is over
void gameover(float circlex, float circley) { 
  if (((mouseY>circley) && (mouseY<circley+40) && (circlex <= 80) && (circlex >= 0)) || ((mouseY+40>circley) && (mouseY+40<circley+40) && (circlex <= 80) && (circlex >= 0))) {
    game_over= false;
  }
}

//if game isn't over 
void draw() {
  if (game_over == false) {
    println(y, y2, y3);
    background(245,220,230);
    noStroke();
    fill(200, 0, 0);
    ellipse(40, mouseY, 40, 40);
    x = x -2; //speed
    x2 = x2 -1;
    x3 = x3 -3;
    if ( x<  -40) {
      x = 450;
      y = random(0, 450);
    }
    if ( x2<  -40) {   
      x2 = 450;
      y2 = random(0, 450);
    }
    if ( x3<  -40) {
      x3 = 450;
      y3 = random(0, 450);
    }
    randomcirc(x, y, x2, y2, x3, y3); // draws circle
    gameover(x, y);
    gameover(x2, y2);
    gameover(x3, y3);
  }
}
````
**June 12**: Worked on getting the mousePressed() function working to reset the game after it ends, and adding a simple text saying ‘GAME OVER’.
````
void mousePressed() { 
  // if clicked, reset program
  if (mouseButton == LEFT) {
    if (game_over == true) { // if game over, reset all
      x = x2 = x3 = 450;
      y = random(0, 450);
      y2 = random(0, 450);
      y3 = random(0, 450);
      game_over = false;
    }
  } 
 }
````
<img src ="https://user-images.githubusercontent.com/70910372/121816828-e12a4c00-cc8e-11eb-80ae-d2b279aa4448.png">

**[`June 12`](#instructions)**:Spent a lot of time doing an ‘instructions’ screen mainly because I didn’t consider order of operations in Processing. 
I began writing a function (preload()) where I thought I can dump everything that will occur before the actual game begins (loadSound, insert image, etc) but I saw that nothing really worked the way I expected. I concentrated on getting an image and the ‘intro’ screen working first and foremost. After moving around parts of code all around the sketch, I decided to change what was initially void draw to void game and create a void introScreen with all the code that had instructions for the game + pointed out that one must ‘click to begin.’  I then wrote out the new draw function. At first, nothing from the introScreen function showed up when I ran the sketch but then I moved the draw function below the introScreen function and it worked. 
````
void introScreen() {
    background(245,220,230);
    textSize(12);
    text("Click anywhere to begin! \nUse the mouse to avoid incoming circles and re-click to re-start.", 10, 50);
    noStroke();
    fill(200, 0, 0);
}
void draw() {
  if (screen == 0) { 
    introScreen(); 
  } else if (screen == 1) { //click to start game
    game();
  }
}
````
I then added an image to the ‘intro page’  - a screenshot of the actual game.

**June 13**:The last thing I had to do was add sound to the game. I decided to have a track that I remixed for some live sound design to play in the background throughout the game. When I added the sound, the sketch took a long time to load an I guessed it was because the track was around 4 minutes long so I cut it to 1 minute and put it on a loop. I also decided to add a sound effect every time the game was over.  

Worked on other minor changes: 
- improved the intro text with instructions
````
text("DOT GAME \n \nClick anywhere to begin! \nUse mouse to move red circle and avoid black circles. \n \nClick to re-start.", 10, 50);
````
- fastened the speed of the black balls
Speed before:
x = x -2;
x2 = x2 -1;
x3 = x3 -3; 
Speed now:
x = x -2; 
x2 = x2 -3;
x3 = x3 -3;
- added some comments in the sketch 
- fixed a bug that made the canvas blank after game was over
