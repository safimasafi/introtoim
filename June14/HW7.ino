/*
 * Saf
 * HW 7 - 3 buttons/LED's
 * 14/06/2021
 * V.1
 */

//ADD COMMENTS

const int bPushButton = 3;
const int gPushButton = 5;
const int yPushButton = 6;
const int blueLEDPin = 8;
const int greenLEDPin = 9;
const int yellowLEDPin = 11;

void setup() {
  Serial.begin(9600);
  pinMode(bPushButton, INPUT);
  pinMode(gPushButton, INPUT);
  pinMode(yPushButton, INPUT);
  pinMode(blueLEDPin, OUTPUT);
  pinMode(greenLEDPin, OUTPUT);
  pinMode(greenLEDPin, OUTPUT);
}

void loop() {
  int switchPosition = digitalRead(3);
  int switchPosition1 = digitalRead(5);
  int switchPosition2 = digitalRead(6);

  if (switchPosition == HIGH) {
    digitalWrite(8, HIGH);   //blue LED on - high voltage
    digitalWrite(12, LOW);   //yellow LED dim- low voltage
    digitalWrite(9, LOW);    //green LED dim- low voltage
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

  /*int bPushButton = digitalRead(3);
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
  }  */
}
