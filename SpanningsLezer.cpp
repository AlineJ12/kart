#include "SpanningsLezer.h"
//There is no list method on Arduino, we need to make a hole new one. Taken from : https://arduino.stackexchange.com/questions/69064/use-stdlist-in-arduino-programming

SpanningsLezer::SpanningsLezer(int batterijPin){ 
  this->som = 0;
  //this->spanning = 0;
  this->listSpanningen = List();
  
}
void SpanningsLezer::SpanningMeten(int aantalMetingen){
  int meting = 0;
  while(meting<aantalMetingen){ 
    som += analogRead(batterijPin);
    meting += 1;
    Serial.print(som);
    delay(10); //Elke meting wordt om de 10 ms uitgevoerd TE VERANDEREN, mss een meting elke 3sec om een waarde in de list toe te voegen elke 30 sec => 1waarde/*2sec*45min = 90 waarden in TE VERBETEREN 
 }
  float spanning =  som/(float)aantalMetingen;
  Serial.print(spanning);
  Serial.println(" V");
  this->som = 0;
  (this->listSpanningen).append(spanning);
}
