#include <Servo.h> 
 
Servo servo;  // create servo object to control a servo 
                // a maximum of eight servo objects can be created 
 
int lastpos = 0;    // variable to store the servo position 
int incomingByte = 0;
 
void setup() 
{ 
  servo.attach(5);  // attaches the servo on pin 9 to the servo object 
  Serial.begin(9600);
  pinMode(13, OUTPUT);
  Serial.flush();
} 
 
 
void loop() 
{ 
  if (Serial.available() > 1) {
    if (Serial.read() == 131) {
      incomingByte = Serial.read();
      servo.write(incomingByte);
//      Serial.print("Inn: ");
//      Serial.println(incomingByte);
//      digitalWrite(13, HIGH);
//      delay(1000);
//      digitalWrite(13, LOW);
//      delay(500);
    }
//    Serial.flush();
//    Serial.println(incomingByte);
//    Serial.println(servo.read());
  }
//  int newpos = servo.read();
//  if (newpos != lastpos) {
//    Serial.println(servo.read());
//    lastpos = newpos;
//  }
  
  /*
  Serial.println("To 80");
  servo.write(80);
  delay(5000);
  Serial.println("To 120");
  servo.write(120);
  delay(5000);
 
  */
} 
