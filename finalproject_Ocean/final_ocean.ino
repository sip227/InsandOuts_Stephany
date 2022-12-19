/*Ocean Immersive Experience
Stephany Pena
***USER INSTRUCTIONS***
Use the potentiometer to affect the brightness of the led lights

*/

//FISH LIGHTS
const int LED1 =11;
const int LED2 =10;
const int LED3 =8;
const int LED4 =7;

//FLOOR LIGHTS
const int LED5 =6;
const int LED6 =5;

//SENSOR
const int SENSOR = A5;

//VALUE
int value =0;
void setup() {
  // put your setup code here, to run once:
  pinMode(LED1,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(LED3,OUTPUT);
  pinMode(LED4,OUTPUT);

  pinMode(LED5,OUTPUT);
  pinMode(LED6,OUTPUT);

  pinMode(SENSOR, INPUT);
  Serial.begin(9600);


}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(LED1,HIGH);
  digitalWrite(LED2,HIGH);
  digitalWrite(LED3,HIGH);
  digitalWrite(LED4,HIGH);
  delay(800);
  digitalWrite(LED1,LOW);
  digitalWrite(LED2,LOW);
  digitalWrite(LED3,LOW);
  digitalWrite(LED4,LOW);
  delay(800);
  value = analogRead(SENSOR);
  delay(10);
  value = value/4;
  analogWrite(LED5, value);
  analogWrite(LED6, value);

  //send data
  Serial.write(value);



}
