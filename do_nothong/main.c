/*
 */
#define F_CPU 16000000UL
#include <avr/io.h>
#include <avr/delay.h>


int main(void)
{

    // Insert code

    DDRA = 0x01;
   // while(1);

    while(1){

    PORTA |= 1<<PA0;
    _delay_ms(500/10);
    PORTA &= ~(1<<PA0);
     _delay_ms(500/10);
    };

    return 0;
}
