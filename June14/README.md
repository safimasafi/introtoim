Saf

HW 7 - 3 buttons/LED's

14/06/2021

I blew one of the LED’s (RIP) due to a misconnected wire as the 330 resistor and long end of the LED was connected to the same row as its dedicated switch. Once I figured that out, I reapplied why one of the LED’s wasn’t working (and why I smelt some interesting smell coming out of the breadboard). 

Below is a pic of the schematic: 

<img src= "https://user-images.githubusercontent.com/70910372/121848606-5469a780-ccfb-11eb-80b9-aae98b328289.png">

And an image of the breadboard: <img src= "https://user-images.githubusercontent.com/70910372/121824285-113c1400-ccbc-11eb-9298-02625763622d.png">

I first tried to just have the switch on/off the corresponding LED; 
````
*int bPushButton = digitalRead(3);
  int gPushButton = digitalRead(5);
  int yPushButton = digitalRead(6);

  if(bPushButton == HIGH) { //blue button on/off
    digitalWrite(8, HIGH);
  } else if(bPushButton == LOW){
    digitalWrite(8, LOW);
  }
  if(gPushButton == HIGH) { //green button on/off
    digitalWrite(9, HIGH);
  } else if( gPushButton == LOW){
    digitalWrite(9, LOW);
  }
  if(yPushButton == HIGH) { //red button on/off
    digitalWrite(12, HIGH);
  } else if(yPushButton == LOW){
    digitalWrite(12, LOW);
  } 
````
And resulted, as expected in the LED’s to simply on/off when pressed.
<img src = "https://user-images.githubusercontent.com/70910372/121824306-434d7600-ccbc-11eb-8619-305dd562f1fc.mov">

I then thought about the pattern part of the HW and from our exercise in class, I adapted it to if one LED is on, the other two are dim.
````
 int switchPosition = digitalRead(3);
  int switchPosition1 = digitalRead(5);
  int switchPosition2 = digitalRead(6);

  if (switchPosition == HIGH) {
    digitalWrite(8, HIGH);   //blue LED on - high voltage
    digitalWrite(12, LOW);   //yellow LED dim- low voltage
    digitalWrite(9, LOW);   //green LED dim- low voltage
  } else  {
    digitalWrite(8, LOW);    
    digitalWrite(12, HIGH);
    digitalWrite(9, HIGH);
  }
   if (switchPosition1 == HIGH) {
    digitalWrite(9, HIGH);   //green LED on- high voltage
    digitalWrite(12, LOW);
    digitalWrite(8, LOW);
  } else  {
    digitalWrite(9, LOW);    
    digitalWrite(12, HIGH);
    digitalWrite(8, HIGH);
  }
   if (switchPosition2 == HIGH) {
    digitalWrite(12, HIGH);   //yellow LED on- high voltage
    digitalWrite(8, LOW);
    digitalWrite(9, LOW);
  } else  {
    digitalWrite(12, LOW);    
    digitalWrite(8, HIGH);
    digitalWrite(9, HIGH);
  }
````
<img src = "https://user-images.githubusercontent.com/70910372/121824313-62e49e80-ccbc-11eb-92d1-bb5223acf069.mov">
The yellow LED is dimmer than the green/blue so the difference can’t be seen as much. I also realised that only when the yellow switch is pressed, the green/blue LED can really be seen to dim significantly more than if other switches are pressed. Perhaps to develop this further, it might be interesting to control the velocity via a float function or something of the sort.
