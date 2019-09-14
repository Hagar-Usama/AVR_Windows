/*
 */

#include <avr/io.h>
#include <util/delay.h>

int main(void)
{

    // Insert code

    DDRA = 0x01;
   // while(1);

    while(1){

    PORTA |= 1<<PA0;
    _delay_ms(500);
    PORTA &= ~(1<<PA0);
     _delay_ms(500);
    };

    return 0;
}
