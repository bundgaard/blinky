#pragma config WDTE = OFF
#pragma config CP = OFF
#pragma config MCLRE = ON

#include <xc.h>

#define _XTAL_FREQ 4000000

void main(void) {
    while(1) {
        GPIO = 0xf;
        __delay_ms(250);
        GPIO = 0;
        __delay_ms(250);
    }
}