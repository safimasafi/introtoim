
Saf

Final Project

CONDUCT-O-PHONE

08/07/2021

The concept of my project was to create an instrument that would feature touch points which act as triggers for initiating arpeggiated tones and create repetitive musical patterns when various points are selected. I implemented three instrument sounds, the piano, organ and drums as options to play around with. This was mainly achieved through integrating the CapSense library from Arduino that helped me code and set thresholds for the values coming in when touching conductive objects, in my case nails and conductive thread. I picked those objects because they were easy to work with and attach to an enclosure.   In terms of Arduino and Processing, I used the following 4 components from both: 
* In Arduino: Analog Input, Digital Input, Digital Output, Cap Sensor
* In Processing: Drawing with primitives, Images, Sound, Text

For Arduino: the analog input was coming from the push button that allowed the sounds to played only when switched, the digital input was the nail readings that were sent to Processing, the digital output was the RGB LED that lit up when an instrument was selected, and the CapSensor library was the final component. 
 
<img src = "https://user-images.githubusercontent.com/70910372/125005737-8a394c00-e06d-11eb-8cf5-85605e4deec4.png" width="500/">      <img src = "https://user-images.githubusercontent.com/70910372/125005747-91605a00-e06d-11eb-8fb4-fa6aea298097.png" width="395/"> <img src = "https://user-images.githubusercontent.com/70910372/125005759-991ffe80-e06d-11eb-8a4c-fa3ca2f05798.mov" width="500/"> 

Schematic 
<img src = "   ">

Here is a [YouTube link to the video](https://www.youtube.com/watch?v=lrsJTz7DlgA). 

Some of the problems I ran into were the readings jumping around when reading the capacitive sensing values and while I wouldn’t really call it ‘solving’ the problem, I decided to just work around and widen the thresholds from the minimum/maximum values so I wouldn’t have to recalibrate every time reconnect the Arduino. Because of that, I wasn’t always sure if the problems I had weren’t actually the sensing values but the the Serial readings sent to Processing or the circuit. I also had slight issue sending values from Arduino to Processing, particularly when trying to add the switch and ended up just calling the integer representation for the switch ‘CapSense11’, and placed it at the bottom the Serial.print list. Another problem that frustrated me after doing the enclosure was making sure that none of the wires in the circuit were touching, but also that all the wires were properly connected. When attempting to record a video for documentation, the jumper wires connecting the resistors to the Arduino started acting up and a small nudge would stop the project from working and rechecking the connections or reloading the canvas. I had to reconnect everything and straighten the wires which seemed to do the trick but at any rate, working with longer wires and bigger breadboard would’ve been a better idea. 



