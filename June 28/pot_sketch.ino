/*
 * Saf
 * 28/07/2021
 * HW 10 - Communicating with Arduino and Processing
 * V.1
*/


int val; 

void setup() {
  Serial.begin(9600);
}

void loop() {
  val = (analogRead(A0)/4);
  Serial.write(val);
  delay(100);
}
