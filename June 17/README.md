I started by writing a program that would turn on/off 3 LEDs with varying delay times when a switch is pressed but then I thought I can use the potentiometer and control the speed of the blinking LEDs. I only used the potentiometer because I took Circuit Breakers and thought I can try it with Arduino.  It took me a lot of rewriting of code as I wanted to add a random function and used the reference page for [Random](https://www.arduino.cc/en/pmwiki.php?n=Reference/Random). 

The idea is that there are three LEDs (pins 5,6,7) that blink at a random chosen number between 5-8 and the speed of the blinking is controlled with a potentiometer. That is for the analog part of the HW. The digital part is adding two more red LEDs that blink after the other once a button is pressed; the speed of the blinking can also be altered by the potentiometer. 

Perhaps this homework was one that kept me going in circles, commenting out code and rewriting it because I wanted to see what worked in combination with the older code I wrote. I also got really confused with whether or not I had to define the variables for pins 5/6/7 in the beginning to make the random function work but later changed it to:  
````
int LEDs = random(5,8);      //picks random number between 5-8 (even though 8 doesn't have any pins connected)
````
Schematic:

Picture: <img src = "https://user-images.githubusercontent.com/70910372/122308945-71ca8b80-cf1e-11eb-9eb3-53f0637e4311.JPG">


Video: <img src = "https://user-images.githubusercontent.com/70910372/122309625-ab4fc680-cf1f-11eb-832f-610cc270727f.mp4">


