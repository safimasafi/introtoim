/*
 * Saf
 * 8/07/2021
 * Final Project
 * CONDUCT-O-PHONE
*/

import ddf.minim.*; 
import processing.serial.*; 

int end = 10;    
String serial;   
Serial port;     
PFont f;
PImage img1;
PImage img2;
PImage img3;
int num = 10;

Minim minim;

// declare audioSample variables that stores the different sounds, there are 3 instruments piano, organ and drums
AudioSample piano1;
AudioSample piano2;
AudioSample piano3;
AudioSample piano4;
AudioSample piano5;
AudioSample piano6;
AudioSample piano7;

AudioSample pipes1;
AudioSample pipes2;
AudioSample pipes3;
AudioSample pipes4;
AudioSample pipes5;
AudioSample pipes6;
AudioSample pipes7;

AudioSample kit1;
AudioSample kit2;
AudioSample kit3;
AudioSample kit4;
AudioSample kit5;
AudioSample kit6;
AudioSample kit7;

//determine if instrument is changed or not
int counter;


void setup() {
  size(500, 450);
  background(50);
  f = createFont("Times New Roman", 15, true);
  textSize(15);
  fill(255);
  text("CONDUCTOPHONE \n3-INSTRUMENT GENERATOR \n \nINSTRUCTIONS: \n Thread around the nails 1-4 to create musical patterns. \n Change instruments by touching nail heads 5-7. \n Click to stop. \n \nDrum kit - Nail 1 \nOrgan - Nail 2 \nPiano - Nail 3", 20, 50);
  noStroke();
  
  //create a new instance of minim
  minim = new Minim(this);
  
  //load sound.wav files from data folder
   piano1 = minim.loadSample( "piano-a.wav", 512);
   piano2 = minim.loadSample( "piano-b.wav", 512);
   piano3 = minim.loadSample( "piano-c.wav", 512);
   piano4 = minim.loadSample( "piano-d.wav", 512);
   piano5 = minim.loadSample( "piano-e.wav", 512);
   piano6 = minim.loadSample( "piano-f.wav", 512);
   piano7 = minim.loadSample( "piano-g.wav", 512);
   
   pipes1 = minim.loadSample( "HeavyPipesF-01.wav", 512);
   pipes2 = minim.loadSample( "HeavyPipesF-02.wav", 512);
   pipes3 = minim.loadSample( "HeavyPipesF-03.wav", 512);
   pipes4 = minim.loadSample( "HeavyPipesC-01.wav", 512);
   pipes5 = minim.loadSample( "HeavyPipesC-02.wav", 512);
   pipes6 = minim.loadSample( "HeavyPipesC-03.wav", 512);
   pipes7 = minim.loadSample( "HeavyPipesC-04.wav", 512);
   
   kit1 = minim.loadSample( "HHCLOSE1.wav", 512);
   kit2 = minim.loadSample( "HHOPEN2.wav", 512);
   kit3 = minim.loadSample( "SNARE1.wav", 512);
   kit4 = minim.loadSample( "TOM2.wav", 512);
   kit5 = minim.loadSample( "TOM3.wav", 512);
   kit6 = minim.loadSample( "Bdrum1.wav", 512);
   kit7 = minim.loadSample( "COWBELL1.wav", 512);
  
  
  port = new Serial(this, Serial.list()[3], 9600); 
  port.clear();  
  serial = port.readStringUntil(end); 
  serial = null; 
}


void draw() {
  
  while (port.available() > 0) { 
    serial = port.readStringUntil(end);
  }
 
  if (serial != null) {  
        String[] nailSensorInput = split(serial, ','); 
        
        //convert the inputs photoresistor
        int PRInt [];
        PRInt = int(nailSensorInput);
        
       // print for scaling
      for(int i =0; i < PRInt.length; i++) {
          println(PRInt[i]);
       }
     
   
//Change instrument (might need to change)
//Piano
   if(PRInt[4] > 100 && PRInt[4] < 1500) {
      counter = 1;
      img1 = loadImage("piano.png");
      image(img1,200,250,200,150); //loads piano image
      for (int i=0; i<num; i++) {
      float x = random(width);
      float y = random(height);
      ellipse(x, y, 1, 1); stroke(0, 50); fill(255,0,0,65);
      ellipse(x, y, 5, 5);
      }
   }
   else if (PRInt[5] > 100 && PRInt[5] < 1500) {  //organ
      counter = 2;
      img2 = loadImage("organ.jpg");
      image(img2,200,250,200,150); //loads organ image
      for (int i=0; i<num; i++) {
      float x = random(width);
      float y = random(height);
      ellipse(x, y, 1, 1); stroke(0, 50); fill(0,255,0,65);
      ellipse(x, y, 5, 5);
      }
   }
   else if (PRInt[6] > 100 && PRInt[6] < 1500) {  //drums
      counter = 3; 
      img3 = loadImage("drums.png");
      image(img3,200,250,200,150); //loads drums image
      for (int i=0; i<num; i++) {
      float x = random(width);
      float y = random(height);
      ellipse(x, y, 1, 1); stroke(0, 50); fill(0,0,255,65);
      ellipse(x, y, 5, 5);
      }
   }
   
//Start/stop, if clicked, no instrument selected
   if(PRInt[7] > 5 && PRInt[7] < 1000) {
       counter = 0;
   }

//Piano - if counter = 1 than instrument chosen is the piano   
if (counter == 1) {    
   if(PRInt[0] > 50){
        piano1.trigger();
        delay(150); //arpeggio effect rather
   }
  if(PRInt[1] > 100){
        piano2.trigger();
        delay(150);
  }
  if(PRInt[2] > 100){
          piano3.trigger();
          delay(150);
  }
  if(PRInt[3] > 100){
        piano4.trigger();
        delay(150);
  }
  if(PRInt[4] > 100){
        piano5.trigger();
        delay(150);
  }
  if(PRInt[5] > 100){
        piano6.trigger();
        delay(150);
  }
  if(PRInt[6] > 100){
        piano7.trigger();
        delay(150);
  }
} 


//Organ - if counter = 2 than instrument chosen is the organ
if (counter == 2) {    
   if(PRInt[0] > 100){
        delay(50);
        pipes1.trigger();
  }
  if(PRInt[1] > 100){
        delay(50);
        pipes2.trigger();
  }
  if(PRInt[2] > 100){
          delay(50);
          pipes3.trigger();
  }
  if(PRInt[3] > 100){
        delay(50);
        pipes4.trigger();
  }
  if(PRInt[4] > 100){
        delay(50);
        pipes5.trigger();
  }
  if(PRInt[5] > 50){
        delay(50);
        pipes6.trigger();
        
  }if(PRInt[6] > 100){
        delay(50);
        pipes7.trigger();
  } 
}

//Drums - if counter = 2 than instrument chosen is the drums
if(counter == 3) {    
   if(PRInt[0] > 100){
        delay(150);
         kit1.trigger();
  }
  if(PRInt[1] > 100){
        delay(150);
        kit2.trigger();
  }
  if(PRInt[2] > 100){
          delay(150);
           kit3.trigger();
  }
  if(PRInt[3] > 100){
        delay(150);
         kit4.trigger();
  }
  if(PRInt[4] > 100){
        delay(150);
         kit5.trigger();
  }
  if(PRInt[5] > 100){
        delay(150);
         kit6.trigger();
        
  }if(PRInt[6] > 100){
        delay(150);
         kit7.trigger();
  }
 }

  }
  
}
