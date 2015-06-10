#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#define DISPLAY
#include "t74HC595.h"

void ShiftRegOutput(void)
{
	unsigned char i,k;
    unsigned char temp_data=0x00;

    MR_1;    		//output_off(SR_CLEAR); scclr
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)

   	STCP_0;    		//output_off(SR_LATCH); rclk
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)

	for (k=0;k<TOTAL_SR_BYTES;k++)
	{
		temp_data = DisplayBuf[k];
	    for (i=0; i < 8; i++)
	    {
	        SHCP_0;	//clock low; - P2.2
	        asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
	        asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
			
	        if (temp_data & 0x80)	//if the data is 1 (MSB first)
	            DS_1;		//data high - P2.0
	        else
	            DS_0;		// data low;

	        asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
	        asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)

	        SHCP_1;	//clock high; - P2.2

	        asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
	        asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
			
			temp_data <<= 1;
	    }
	}
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)

    STCP_1; ;	//rclk	high (latch the data) - P1.4
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)

    DS_0;	// data low;
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
    asm ("NOP");	//4 clock cycles (4 clock cycles - @ 12MHz = 333nS)
}