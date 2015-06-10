
#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#define PMS3003
#include "ParticleSensor.h"
/*
 *NOTE:This code is for the Particle sensor PMS3003.
 *     Do not apply it on other particle sensor.
 */

void SensorUART(void )
{
	unsigned char rxdata;
	unsigned char i;
	rxdata = UART_Sensor_bReadRxData();
	
	
	//send to PC terminal
	/*
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData(rxdata);
	*/
	
	if(HeadFlag == 0)
    {
        //head receive
		if(DataPtr < 2)
		{
			MyPMSUnion.PMRxBuf[DataPtr] = rxdata;
			DataPtr ++;
		}
		else
		{
			MyPMSUnion.MyPMFrame.Head <<= 8;
			MyPMSUnion.PMRxBuf[1] = rxdata;
			DataPtr = 2;
		}
		
        //head check
		if(DataPtr == 2 && MyPMSUnion.MyPMFrame.Head == FRAME_HEAD)
		{
			HeadFlag = 1;	
		}
    }
    else
    {
    	MyPMSUnion.PMRxBuf[DataPtr] = rxdata;
        if(DataPtr >= (BUF_LENGTH-1))
        {
            DataPtr = (BUF_LENGTH-1);
        }
		else
		{
			DataPtr++;
		}

    	if(DataPtr == (MyPMSUnion.MyPMFrame.Length + 4) && DataPtr >= 6)
		{
			PMSFrameFlag = 1;
			HeadFlag = 0;	
            DataPtr = 0;
			
//			for (i = 0; i < (MyPMSUnion.MyPMFrame.Length+4); i++)
//			{
//				while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
//				UART_Board_SendData(MyPMSUnion.PMRxBuf[i]);
//			}
		}
    }
}

/*
*check sum of the frame.
*return 1-pass
*return 0-fail
*/
unsigned char FrameCheck(void)
{
	unsigned int checksum = 0;
	unsigned char i = 0;
	
	for (i = 0; i < (MyPMSUnion.MyPMFrame.Length+2); i++)
	{
		checksum += MyPMSUnion.PMRxBuf[i];
	}
	
	MyPMSUnion.MyPMFrame.Length = 0;
	MyPMSUnion.MyPMFrame.Head = 0;
	
	if (checksum == MyPMSUnion.MyPMFrame.checksum)
	{
		return 1;
	}
	else 
	{
		return 0;
	}
}