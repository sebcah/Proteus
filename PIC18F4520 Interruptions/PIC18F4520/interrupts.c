#include <xc.h>
#include "HW.h"

//Interrupt Subroutine
 void interrupt CheckSwitchPressed()
   { //check if the interrupt is caused by the pin RB0
     if(INTCONbits.INT0IF == 1) //Checks Receive Interrupt Flag bit
      {
        //Do your interrupt code, flash RB5 5 times
         for (int flash_count = 0;flash_count <5; flash_count++) {
         LED1 = 1;
         for (int count=0; count<20; count++) __delay_ms(15); //Generate 300ms delay
         LED1 = 0;
         for (int count=0; count<20; count++) __delay_ms(15); //Generate 300ms delay
       }
        INTCONbits.INT0IF = 0;  // Clear Interrupt Flag
      }
   }
