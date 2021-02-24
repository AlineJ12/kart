#pragma once
#include "List.h"

class SpanningsLezer{
  public:
  float som;
  int batterijPin;
  int aantalMetingen;
  List listSpanningen;
  SpanningsLezer(int batterijPin); 
  void SpanningMeten(int aantalMetingen);
};
