#include "List.h"
//There is no list method on Arduino, we need to make a hole new one. Taken from : https://arduino.stackexchange.com/questions/69064/use-stdlist-in-arduino-programming
    void List::append(float item) {
        if (length < 100) data[length++] = item; //max length list = 100 waarden. If we want more space : change list.h data too.
    }
    void List::remove(byte index) {
        if (index >= length) return;
        memmove(&data[index], &data[index+1], length - index - 1);
        length--;
    }
