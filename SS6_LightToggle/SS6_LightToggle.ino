const int buttonPin =2;

const int LED =13;
const int LED1 =12;
//const int LED2 =11;
//const int LED3 =10;


int LEDState = LOW;
int buttonState = LOW;
int lastButtonState = LOW;

void setup() {
  // put your setup code here, to run once:
  pinMode(buttonPin,INPUT);
  pinMode(LED, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  delay(10);

  if(buttonState == HIGH && lastButtonState == LOW){
    LEDState = !LEDState;
} else{
  //nothin
}

lastButtonState= buttonState;

if (LEDState==1){
  digitalWrite(LED, HIGH);
  digitalWrite(LED1, HIGH);
  //digitalWrite(LED2, HIGH);
  //digitalWrite(LED3, HIGH);
  delay(300);
  digitalWrite(LED, LOW);
  digitalWrite(LED1, LOW);
  //digitalWrite(LED2, LOW);
  //digitalWrite(LED3, LOW);
  delay(200);
 
}else{
  digitalWrite(LED, LOW);
  digitalWrite(LED1, LOW);
  //digitalWrite(LED2, LOW);
  //digitalWrite(LED3, LOW);
}

}
