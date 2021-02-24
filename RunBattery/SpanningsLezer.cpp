#include "SpanningsLezer.h"


SpanningsLezer::SpanningsLezer(int batterijPin){ 
  this->som = 0;
  this->listSpanningen = List();
  
}
void SpanningsLezer::SpanningMeten(int aantalMetingen){
  int meting = 0;
  while(meting<aantalMetingen){ 
    som += analogRead(batterijPin);
    meting += 1;
    delay(100); //Elke meting wordt om de 10 ms uitgevoerd TE VERANDEREN, mss een meting elke 3sec om een waarde in de list toe te voegen elke 30 sec => *2sec*45min = 90 waarden in TE VERBETEREN 
 }
  float spanning =  som/(float)aantalMetingen*5/1023*11.547; //11.547 door calibratie 
  Serial.print(spanning);
  Serial.println(" V");
  this->som = 0;
  (this->listSpanningen).append(spanning);
}
