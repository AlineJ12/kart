#include "List.h"
    void List::append(float item) {
        if (length < 100) data[length++] = item;
    }
    void List::remove(byte index) {
        if (index >= length) return;
        memmove(&data[index], &data[index+1], length - index - 1);
        length--;
    }
