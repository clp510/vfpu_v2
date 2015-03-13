#include "svdpi.h"

void counter7(svBitVecVal *o,
                const svBitVecVal *i,
                const svBit     reset,
                const svBit     load
                ){
static unsigned char count = 0;
if(reset)       count = 0;
else if (load)  count = *i;
else            count ++;
count &=0x7f;

*o = count;
}
