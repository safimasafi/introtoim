/*
 * Saf
 * 17/06/2021
 * HW 8 - analog + digital sensor + 2 LEDs
 * V. 4
 */
 
const int redLED = 10;
const int redLED1 = 9;
int button = 0;
int blinkDelay = 0;
//int randomNumber = 0;

void setup() {
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(redLED,OUTPUT);
  pinMode(redLED1,OUTPUT);
 

  digitalWrite(5,LOW);      //LEDs off when program runs (doesn't seem to work)
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
}

void loop() {
 button = digitalRead(2);
 blinkDelay = analogRead(A0);
 
  int LEDs = random(5,8);      //picks random number between 5-8 (even though 8 doesn't have any pins connected)
 
  digitalWrite(LEDs,HIGH);     //on LED = random number
  delay(blinkDelay);           //LED on for ms set w/ potentiometer
  digitalWrite(LEDs,LOW);
  delay(blinkDelay);

   
  if (button == HIGH) {
    digitalWrite(redLED,HIGH);    // turn on red LED when button pressed 
    delay(40);                    // wait for 40ms
    digitalWrite(redLED1,HIGH);   // turn on red LED1
    delay(40);                    
    digitalWrite(redLED,LOW);     // turn off red LED
    delay(40);                    // wait for 40ms
    digitalWrite(redLED1,LOW);
    delay(20);
  } 
  else if (button == LOW) {
    digitalWrite(redLED,LOW);   // turn off red LED when button released
    //delay(10);
    digitalWrite(redLED1,LOW);
    //delay(10);                  
  }
}
