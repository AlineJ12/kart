#include "Arduino.h"

class List{
  public:
   byte length;
   byte data[100];
   void append(float item);
   void remove(byte index);
};
