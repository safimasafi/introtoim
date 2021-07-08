/*
 * Saf
 * 8/07/2021
 * Final Project
 * CONDUCT-O-PHONE
*/
//import the capSense Library
#include <CapacitiveSensor.h>  

//photo inputs 2 is the common send the 2nd number is the other digital input the sensor is attached to
CapacitiveSensor   cs_2_6 = CapacitiveSensor(2,6);        // 10M resistor between pins 2 & 5, pin 5 is sensor pin 
CapacitiveSensor   cs_2_7 = CapacitiveSensor(2,7);        // 10M resistor between pins 2 & 6, pin 6 is sensor pin
CapacitiveSensor   cs_2_8 = CapacitiveSensor(2,8);        
CapacitiveSensor   cs_2_9 = CapacitiveSensor(2,9);        
CapacitiveSensor   cs_2_10 = CapacitiveSensor(2,10);      
CapacitiveSensor   cs_2_11 = CapacitiveSensor(2,11);      
CapacitiveSensor   cs_2_12 = CapacitiveSensor(2,12);      

int redPin   = 3;   // Red LED,   connected to digital pin 3
int greenPin = 4;   // Green LED, connected to digital pin 4
int bluePin  = 5;   // Blue LED,  connected to digital pin 5
int switch1 = A0;   // switch to analog pin 0

int wait = 10; //10ms

void setup() {
  Serial.begin(9600); 

  pinMode(switch1, INPUT); 
  pinMode(redPin,   OUTPUT);   // sets the pins as output
  pinMode(greenPin, OUTPUT);   
  pinMode(bluePin,  OUTPUT);
}

void loop() {

  //int switchValue = analogRead(switch1);
  int CapSense11 = analogRead(switch1);
  
  // Store the value input of each sensor in each of these variables
  long CapSense4 =  cs_2_6.capacitiveSensor(30);
  long CapSense5 =  cs_2_7.capacitiveSensor(30);
  long CapSense6 =  cs_2_8.capacitiveSensor(30);
  long CapSense7 =  cs_2_9.capacitiveSensor(30);
  long CapSense8 =  cs_2_10.capacitiveSensor(30);
  long CapSense9 =  cs_2_11.capacitiveSensor(30);
  long CapSense10 = cs_2_12.capacitiveSensor(30);


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
    
   
  // put into DEC form for processing
  Serial.print(CapSense4, DEC);
  Serial.print(",");
  Serial.print(CapSense5, DEC);
  Serial.print(",");
  Serial.print(CapSense6, DEC);
  Serial.print(",");
  Serial.print(CapSense7, DEC);
  Serial.print(",");
  Serial.print(CapSense8, DEC);
  Serial.print(",");
  Serial.print(CapSense9, DEC);
  Serial.print(",");
  Serial.print(CapSense10, DEC);
  Serial.print(",");
  Serial.print(CapSense11, DEC);
  Serial.print(",");
  Serial.print(CapSense4, DEC);
  Serial.println();
    
  delay(100);
}
