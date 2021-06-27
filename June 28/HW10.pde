/*
 * Saf
 * 28/07/2021
 * HW 10 - Communicating with Arduino and Processing
 * V.1
*/

import processing.serial.*;
Serial myPort;

int value;
float m;
float x = 450;
float y = random(0, 450);
float y2 = random(0, 450);
float y3 = random(0, 450);
float x2, x3;
boolean game_over = false;
PFont f;
int screen = 0;
PImage img;

import processing.sound.*;
SoundFile file;

void setup() {
  size(500, 450);
  myPort = new Serial(this, Serial.list()[7], 9600);
  background(245,220,230);
  f = createFont("Times New Roman", 15, true);
  file = new SoundFile(this, "track.mp3");
  file.play();
  loop();
}
//instructions
void introScreen() {
    background(245,220,230);
    img = loadImage("img1.png");
    image(img,110,180,335,250); //intro image
    textSize(15);
    text("DOT GAME \n \nClick anywhere to begin! \nUse mouse to move red circle and avoid black circles. \n \nClick to re-start.", 10, 50);
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
  
//circles
void randomcirc(float rx, float ry, float rx2, float ry2, float rx3, float ry3) {
   screen=1;
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
    //for moving ellipse with mouse
  //if (((mouseY>circley) && (mouseY<circley+40) && (circlex <= 80) && (circlex >= 0)) || ((mouseY+40>circley) && (mouseY+40<circley+40) && (circlex <= 80) && (circlex >= 0))) {
    // for moving ellipse with potentiometer 
    if (((m>circley) && (m<circley+40) && (circlex <= 80) && (circlex >= 0)) || ((m+40>circley) && (m+40<circley+40) && (circlex <= 80) && (circlex >= 0))) {
    textFont (f, 25);
    fill(255, 0, 0);
    text("GAME OVER", 170, 160);
    game_over= true;
    file = new SoundFile(this, "sound.mp3"); //plays if game is 'over'
    file.play();
  }
}

//if game isn't over 
void game() {
  if (myPort.available() > 0) {
    value = myPort.read();
    println(value); 
    m = map(value, 0, 255, 0, height);  //maps values from 0-255 to canvas height
  }
  if (game_over == false) {
    println(y, y2, y3);
    background(245,220,230);
    noStroke();
    fill(200, 0, 0);
    // for ellipse to work with pot
    ellipse(40, m, 40, 40);
    //for ellipse to work with mouse
    //ellipse(40, mouseY, 40, 40);
    x = x -2; //speed
    x2 = x2 -3;
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
void mousePressed() { 
  // if we're on the initial screen when clicked, start the game
  if (screen==0) {
    game();
  }
  
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
