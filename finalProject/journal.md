Saf

Final Project 

CONDUCT-O-PHONE

08/07/2021

**July 30**: I wanted to come up with a project idea that would be somewhat music related and can be played as an instrument. Because I didn’t work with the Minim library for my midterm, I decided to implement it into this project. The idea is to have some touch points that would make sounds when touched (which sounds are unclear at this point). The next step would be to pick with elements I will work with from Arduino and Processing.

**June 2**: I started thinking which of the 4 items from both Arduino and Processing will I use in the project, and what the communication should look like between the two. In Arduino, i’ll be using the digital input that will read the touch sensors and digital output for LED’s that will be somehow responsive to the sound. Since I’ll be working with sound, that component is determined to be used, and I also picked text that will show instructions for playing the ‘instrument’, images what will show some information of the sounds. The communication between Arduino and Processing will mainly be processing reading the digital input and playing sound. The next step would be to make the prelim circuit.

**June 3**: I checked out the [Capacative Sense library](https://www.arduino.cc/reference/en/libraries/capacitivesensor/) for Arduino using metallic objects. I then used nails that I envisioned to be used as the touch points in the final project enclosure for easy of usage. Upon writing some initial code, I realized the library was great as it allowed multiple notes to be played at the same time instead with Minim instead of a single note if I used buttons. 

I stuck with using 7 nails, each connected to a 1m resistor that I had from my Circuit Breakers class, and the resistors are then connected to the digital pins of the Arduino. It was a bit of a process to record individual sounds using midi so I used specific piano note sounds available from [this site](https://www.audiomicro.com/free-sound-effects/free-musical-instrument-and-sound-effects). After handshaking, I thought about using sounds from another instrument that is from they family of keyboards and settled for an organ. 
In the end, I settled for 3 instruments piano, organ, and drums to add some percussive elements (even thought the piano is considered a percussive instrument!). 

In order to have an instrument selection process, I decided to have three of the seven nails dedicated to instrument change and the remaining four for actual playing; the nail of the instrument selected would also play a sound so that would actually make it 5 nails for playing. 

<img src = “  “>
<img src = “  “>

Here is my initial configuration with the first 3 nails from the left acting as instrument changing nails (pins 10-11), and the other as playing nails (pins 6-9). 

And this is some of the code that determines the instruments selected and the piano notes by a simple counter. I added a delay that creates an arpeggiator effect.
````
//Change instrument
//Piano
   if(PRInt[4] > 50 && PRInt[4] < 400) {
      counter = 1;
      }
   else if (PRInt[5] > 40 && PRInt[5] < 400) {  //organ
      counter = 2;
      }
   else if (PRInt[6] > 50 && PRInt[6] < 400) {  //drums
      counter = 3; 
}

//Piano - if counter = 1 than instrument chosen is the piano   
if (counter == 1) {    
   if(PRInt[0] > 50){
        piano1.trigger();
        delay(150); //arpeggio effect 
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
````
And so on for the organ and drums.

The hardest task of the day was tuning and configuring the if statements that play the sounds as the capacitive sensing values were slightly varying from time to time. The next step will be to add more elements from Arduino to the circuit.

**June 4**: I quickly realised that the readings from the digital ins were bouncing around and can change every time I connect the Arduino. This made me change the code setting the min & max threshold from above and finally settling for: 
````
//Change instrument
//piano
if(PRInt[4] > 100 && PRInt[4] < 1500) {
      counter = 1;
      }
````
I repeated this for all the instruments to be safe. 
Another realisation was that the delay in Arduino was commented out and that sped up the responsiveness of the sounds. 

I decided to use the RGB LED for the digital out component in which when an instrument lights up, a different colour would light up. It was perfect that I had 3 instrument that would work with the colors so I went with red for the piano, green for the organ, and blue for the drums.  I made the LED light up when sensing values for the corresponding nail went over 100:
````
if (CapSense8 > 100) {
      digitalWrite(redPin, HIGH);
      digitalWrite(greenPin, LOW);
      digitalWrite(bluePin, LOW);
    }
    if (CapSense9 > 100) {
      digitalWrite(redPin, LOW);
      digitalWrite(greenPin, HIGH);
      digitalWrite(bluePin, LOW);
    }
    if (CapSense10 > 100) {
      digitalWrite(redPin, LOW);
      digitalWrite(greenPin, LOW);
      digitalWrite(bluePin, HIGH);
    }
````
<img src = “  “>

I also decided to experiment with how to play around with the touch points rather than just touching the nails. After trying guitar strings and copper wire, I was excited to finally put my unused conductive thread to use. YOUTUBE LINK!!!!!!!!

The next step will be to add the third component from Arduino.

**June 5**: For my third Arduino component, I added a push button that will only allow the sounds to be played when the put-on is pushed down, and stopped when released. Looking at some parts I had from my Circuits class, I picked a latching switch so I can easily tell if my project will be on/off. 
````
//Start/stop, if clicked, no instrument selected
   if(PRInt[7] > 5 && PRInt[7] < 1000) {
       counter = 0;
   }
````
<img src = “  “>

Here is an image of the final circuit. The next next will be to add the fourth Arduino component and work more on Processing.

**June 6**: Thankfully, the Professor allowed the CapSense library to count as the fourth component for Arduino as I was running out of ideas on what else to include. Working on the remaining three components , I added some text, images, and some shape elements. I decided to have a simple canvas where the text would write out the description and instructions for the CONDUCT-O-PHONE (name of my project). 
<img src = “   “>

I then added some images that represented a piano, organ, and drums (borrowed clip art images) which displayed when an instrument was touched (eg.  if nail 7 (piano) is touched, an image of a piano will show up). 

<img src = “   “>

For the shapes component, I coded small ellipses that appear at random points in the canvas when you touch a nail to select/change an instrument in the colour of the corresponding LED colours (red for the piano, green for the organ, and blue for the drums). I set the transparency of the ellipses to 25% and changed the canvas background and text to more neutral colors, settling for dark.

<img src = “   “>
<img src = “   “>

The next step will be to make the enclosure for the CONDUCT-O-PHONE.

**June 7**: For the enclosure, I first spray painted a box and screwed the nails. Four of the nails were put in a pattern at the lower part of the box for ease of threading around them. I then decided to have the ‘instrument selection’ part at the upper left part of the box, with the organ nail slightly apart from the other two nails as I would find myself sometimes touching other nails accidentally. 

<img src = “   “>

I put the LED in the space in between and added an extra nail to fit the thread holder in; it fit just in and worked well to roll the thread down. Finally, the push button was placed on the left side of the box as it felt natural to have it there. 

<img src = “   “>

I kept the backside of the box have open as I wanted to hide the breadboard then but that didn’t work out too well as I had to make sure none of the wires were touching each other so as not to trigger a short circuit. 
