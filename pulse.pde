int sensePin = 0;

void setup()
{
  //Note: We don't need to specifiy sensePin as an
  //input, since it defaults to that when we read it

  //Allows us to listen to serial communications from the arduino
  Serial.begin(9600); 
}

void loop()
{
  // read the sensor
  int ledLevel = analogRead(sensePin);
  ledLevel = constrain(ledLevel, 40, 900);
  ledLevel = map(ledLevel, 40, 900, 0, 1000);    

  
  Serial.println(ledLevel); 
  delay(100);
}
