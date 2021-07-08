Saf

Final Project 

CONDUCT-O-PHONE

08/07/2021

**July 30**: I wanted to come up with a project idea that would be somewhat music related and can be played as an instrument. Because I didn’t work with the Minim library for my midterm, I decided to implement it into this project. The idea is to have some touch points that would make sounds when touched (which sounds are unclear at this point).

**June 2**: I started thinking which of the 4 items from both Arduino and Processing will I use in the project, and what the communication should look like between the two. In Arduino, i’ll be using the digital input that will read the touch sensors and digital output for LED’s that will be somehow responsive to the sound. Since I’ll be working with sound, that component is determined to be used, and I also picked text that will show instructions for playing the ‘instrument’, images what will show some information of the sounds. The communication between Arduino and Processing will mainly be processing reading the digital input and playing sound.

**June 3**: I checked out the [Capacative Sense library](https://www.arduino.cc/reference/en/libraries/capacitivesensor/) for Arduino using metallic objects. I then used nails that I envisioned to be used as the touch points in the final project enclosure for easy of usage. Upon writing some initial code, I realized the library was great as it allowed multiple notes to be played at the same time instead with Minim instead of a single note if I used buttons.  

I stuck with using 7 nails, each connected to a 1m resistor that I had from my Circuit Breakers class, and the resistors are then connected to the digital pins of the Arduino. It was a bit of a process to record individual sounds using midi so I used specific piano note sounds available from [this site](https://www.audiomicro.com/free-sound-effects/free-musical-instrument-and-sound-effects). After handshaking, I thought about using sounds from another instrument that is from they family of keyboards and settled for an organ. 
In the end, I settled for 3 instruments piano, organ, and drums to add some percussive elements (even thought the piano is considered a percussive instrument!). 

In order to have an instrument selection process, I decided to have three of the seven nails dedicated to instrument change and the remaining four for actual playing; the nail of the instrument selected would also play a sound so that would actually make it 5 nails for playing. 
 <img src = “  “>
<img src = “  “>
Here is my initial configuration with the first 3 nails from the left acting as instrument changing nails (pins 10-11), and the other as playing nails (pins 6-9). 

And this some of the code that determines the instruments selected and the piano notes. I added a delay that creates an arpeggiator effect.

````
//Change instrument
//Piano
   if(PRInt[4] > 50 && PRInt[4] < 400) {
      counter = 1; }
   else if (PRInt[5] > 40 && PRInt[5] < 400) {  //organ
      counter = 2;  }
   else if (PRInt[6] > 50 && PRInt[6] < 400) {  //drums
      counter = 3; 
}

//Piano - if counter = 1 than instrument chosen is the piano   
if (counter == 1) {    
   if(PRInt[0] > 50){
        piano1.trigger();
        delay(150); //arpeggio effect  }
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
````

And so on for the organ and drums.

**June 3**: 