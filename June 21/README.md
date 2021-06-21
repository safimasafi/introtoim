



For this assignment, I built off the sketch from my last homework. There are 2 LEDs whose speed is regulated by the blue pot, 2 photoresistors that are attached to the LED covered in tape (I also used a pink folded Post-it paper to separate the light coming through the white tape), a button and another pot. 
The idea is that the sketch reads the Serialprintln of the both the red/blue LDRs and that information is sent to Max MSP. I filter the photoresistors using a low-pass filter, then monitor them for scaling purposes. The mapping patch takes the serial ins from the Arduino readings and scaled it depending on the average brightness as the high input value and maximum level of darkness as the input low value. 
Using the dial objects, I map them to Ableton and use ctlout to transmit MIDI messages to various effects on Ableton Live.

At first, I mapped start/stop to button but changed to volume because there need to be a minimum/maximum number going through. The idea was to have the button start/stop and the photoresists control the volume.
Instead, the photoresists are hooked to an effect in the effects rack of the respectful audio clip (selected from the Spectral textures pack form Ableton). 

AS for the photresistors, I mapped the LDR taped to the red LED on effects to: changing parameters of Mid gain to highest amount of dB’s, the frequency of a Sine wave effect and wetness of a spatial delay effect. The mid gain min parameter was changed to 75% so the sound doesn’t change drastically.
The LDR taped to the blue LED is mapped to random pitch in grain delay effect, 0-4.6 max dB’s in EQ mids, and max 45% wetness as well as inverted 180ms of release in a swirling flanger effect.
The second pot  is mapped to rhythmic modulation beat shaper (LFO).

The communication with Max uses this piece of code: 
````
a1 = analogRead(1);
  Serial.print("analog1");
  Serial.print(".");
  Serial.print(a1);
  Serial.println();
  a2 = analogRead(2);
  //Serial.print("analog2");
  //Serial.print(".");
  Serial.print(a2);
  Serial.println();
````
And so on… I had problems integrating the button by trying to use the same method and thought of giving up on having some sort of digital control but I realised the problem was in the way I wrote my code. From this:
````
 //button = digitalRead(2);
  //Serial.print("button");
  //Serial.print(".");
  //Serial.print(button);
  //Serial.println(buttonState);
````
it was changed to: 
````
int buttonState = digitalRead(2);
d2 = digitalRead(2);
  Serial.print("digital2");
  Serial.print(".");
  Serial.print(d2);
  Serial.println(buttonState);
````


