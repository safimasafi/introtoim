/*
 * Saf
 * 21/06/2021
 * HW 9 - instrument using 2 analog + 1 digital sensor(s)
 * V. 5
 */
 

//const int button = 0;
int blinkDelay = 0;
float a1 = 0;
float a2 = 0;
float a3 = 0;
float a4 = 0;
float d2 = 0;
//float d2 = 0;
//int randomNumber = 0;

void setup() {
  Serial.begin(9600); 

  //pinMode(button,INPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
 

  digitalWrite(5,LOW);      //LEDs off when program runs (doesn't seem to work)
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
}

void loop() {
 //button = digitalRead(2);
 blinkDelay = analogRead(A0);
 
  int LEDs = random(5,8);      //picks random number between 5-8 (even though 8 doesn't have any pins connected)
 
  int buttonState = digitalRead(2);
  //Serial.println(buttonState);

  int potValue = analogRead(A3);

  
  digitalWrite(LEDs,HIGH);     //on LED = random number
  delay(blinkDelay);           //LED on for ms set w/ potentiometer
  digitalWrite(LEDs,LOW);
  delay(blinkDelay);

  
  a1 = analogRead(1);         //serial print to communicate with Max MSP
  Serial.print("analog1");
  Serial.print(".");
  Serial.print(a1);
  Serial.println();
  a2 = analogRead(2);
  Serial.print("analog2");
  Serial.print(".");
  Serial.print(a2);
  Serial.println();
  a3 = analogRead(3);
  Serial.print("analog3");
  Serial.print(".");
  Serial.print(a3);
  Serial.println(potValue);
  d2 = digitalRead(2);
  Serial.print("digital2");
  Serial.print(".");
  Serial.print(d2);
  Serial.println(buttonState);

  //delay(10);
}
