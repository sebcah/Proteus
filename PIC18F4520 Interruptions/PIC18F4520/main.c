#include "init.h"
#include "HW.h"
#include "config.c" // File with Configuration bits

void main(void) {
    init();
    while (1)
    {
      //LATBbits.LATB4 = 1;   //Switch ON B4
      LED2 = 1;   //Switch ON B4
      for (int count=0; count<20; count++) 
          __delay_ms(50); //Generate 1 sec delay
      LED2 = 0;  //Switch OFF B4
      for (int count=0; count<20; count++) 
          __delay_ms(50); //Generate 1 sec delay
    }
}