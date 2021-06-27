Saf

28/07/2021

HW 10 - Communicating with Arduino and Processing

V.1

For this HW I built off the communication with Arduino from my mid-term game. 
<img src = "https://user-images.githubusercontent.com/70910372/123560898-42d1d680-d7b6-11eb-8891-2e5f8512888f.png">

This time, instead of the red circle being controlled by the mouse, I let it be controlled by a potentiometer. 
The main code that was added in Processing, aside from declaring the float, creating object from Serial class, and changing if statements on void gameover was: 
````
if (myPort.available() > 0) {
    value = myPort.read();
    println(value); 
    m = map(value, 0, 255, 0, height);  //maps values from 0-255 to canvas height
  }
````
I first put the code in void draw function but later realized it should go in void game function where the red ellipse was under. With the help of the [map reference page](https://processing.org/reference/map_.html), I was able to correctly map the ellipse to move at the target range of the canvas/game.

Schematic

<img src = "https://user-images.githubusercontent.com/70910372/123561092-8f69e180-d7b7-11eb-9dd1-7bda05df94e2.png">

Video

<img src = "https://user-images.githubusercontent.com/70910372/123561414-38fda280-d7b9-11eb-9440-e0299086034b.mp4" width="500" height="700"/>
