//we nemen 10 waarden vanaf pin A2 om de 10ms. 
//Deze 10 worden gebruikt om een gemiddelde te maken over de waarden

#include "SpanningsLezer.h" 

  //SpanningsLezer battery1(A0); 
  SpanningsLezer battery2(A1); 
  SpanningsLezer battery3(A2); 
  SpanningsLezer battery4(A3); 
void setup() {
  Serial.begin(9600); //Bepaalt de snelheid van de transmissie van de informatie in baud (bits/s) 
  
}
 
void loop() {
  //battery1.SpanningMeten(10);
  battery2.SpanningMeten(10);
  battery3.SpanningMeten(10);
  battery4.SpanningMeten(10);

}
