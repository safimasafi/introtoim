



For this assignment, I built off the sketch from my last homework. I liked the randomization of the blinking LED’s that changed the sound of the audio clip and that’s why I decided to continue off the previous homework. There are 2 LEDs whose speed is regulated by the blue pot, 2 photoresistors that are attached to the LED covered in tape (I also used a pink folded Post-it paper to separate the light coming through the white tape), a button and another pot. 
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
And so on… I had problems integrating the switch by trying to use the same method and thought of giving up on having some sort of digital control but I realised the problem was in the way I wrote my code. From this:
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
I also thought I had to comment out the first two lines of the Serial.print(s) because it might affect the float readings on Max but that wasn’t the case.
Some problems I encountered was trying to configure and map the highest/lowest levels of readings coming in from the LDRs because of the low speed, when I adjust the blue pot (delay), the reading doesn’t catch at the same moment when the LED blinks, and when the speed it too fast, I couldn’t catch the numbers. I also forgot to off my desk lamp and had to re-adjust the numbers later. The readings from the LDR taped to the blue LED also weren’t stable during the monitoring process.

<img src = "https://user-images.githubusercontent.com/70910372/122720958-2519e400-d281-11eb-8f3c-840646607943.png">

Max patch 
<img src = "https://user-images.githubusercontent.com/70910372/122721248-7b872280-d281-11eb-9858-1b98f2f451b5.png">

Monitoring subpatch 
<img src = "https://user-images.githubusercontent.com/70910372/122721422-b38e6580-d281-11eb-8950-8091de30a3e3.png">

Scaling subpatch
<img src = "https://user-images.githubusercontent.com/70910372/122721472-c1dc8180-d281-11eb-9624-4e4762f14e5a.png">

Ableton mapping
<img src = "https://user-images.githubusercontent.com/70910372/122721564-e0db1380-d281-11eb-8430-83dae1b181d4.png">


Link to videos:
Video of the Arduino  - https://youtu.be/ASwvPK11SyQ

Screen recording with screen audio of Albeton running during the second video - https://youtu.be/i7WLha-Yauw
