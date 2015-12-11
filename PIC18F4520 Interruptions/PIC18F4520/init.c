#include <xc.h>

void init() {
    
    TRISB = 0x0F;         //Set PORTC as Output
  //  TRISBbits.RB0=1;   //Set PORTB Bit 0 as Input pin.
   // OSCCON=0x76;       //Configure OSCON Register to use
                       //internal oscillator (8MHz). Please check datasheet
    INTCONbits.INT0IF = 0;    //clear interrupt flag RB0
    INTCONbits.GIE = 1;     //enable interrupt
    INTCONbits.INT0IE = 1;    //enable Interrupt 0 (RB0 as interrupt)
    INTCON2bits.INTEDG0 = 1; //cause interrupt at rising edge
    
}
