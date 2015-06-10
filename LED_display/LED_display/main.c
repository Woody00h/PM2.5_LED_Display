//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "t74HC595.h"
#include "LED.h"
#include "Si7020.h"
#include "ParticleSensor.h"
#include "software_IIC.h"
#include "BoardComm.h"

#define ONE_SECOND_TIMER_RELOAD 8

unsigned char one_sec_timer		= ONE_SECOND_TIMER_RELOAD;
unsigned char rh_sample_timer	= ONE_SECOND_TIMER_RELOAD;
unsigned char IICTimeOutTimer;

unsigned int LightADCValue;	
unsigned int *p = (unsigned int *)DisplayBuf;
unsigned char RHSampleStep = 0;
unsigned char DeadZone = 0;
unsigned int  Si7020Data;
void Timer8ISR(void)
{
	if (DeadZone)
	{
		DisplayBuf[0] = 0xff;
		DisplayBuf[1] = 0xff;
		DisplayBuf[2] = 0xff;
		ShiftRegOutput();
		DeadZone = 0;
	}
	else 
	{
//		if (DisPlayIndex  < 4)
		*p = DisplayContent[DisPlayIndex];
//		else 
//		*p = DisplayContent[DisPlayIndex+4];
		
		DisplayBuf[2] = DisBit[DisPlayIndex];
		
		ShiftRegOutput();
		
		DisPlayIndex++;
		if(DisPlayIndex >= IndexEnd)
		{
			DisPlayIndex = IndexStart;
		}
		DeadZone = 1;
	}
}

void Timer16ISR(void)
{
	if (one_sec_timer)		one_sec_timer--;
	if (rh_sample_timer)	rh_sample_timer--;
	if (IICTimeOutTimer)	IICTimeOutTimer--;
	if (DisplayExchangeTimer)	DisplayExchangeTimer--;
}

void main(void)
{
	unsigned char ret;
	unsigned char i,k;
	M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
//	DisplayBuf[0] = 0xff;
//	DisplayBuf[1] = 0xff;
//	DisplayBuf[2] = 0xff;
//	ShiftRegOutput();
	
	Init_IIC();
	
	UART_Board_Start(UART_PARITY_NONE);
//	UART_Board_EnableInt();
	UART_Board_IntCntl(UART_Board_ENABLE_RX_INT|UART_Board_DISABLE_TX_INT);

	UART_Sensor_Start(UART_PARITY_NONE);
//	UART_Sensor_EnableInt();
	UART_Sensor_IntCntl(UART_Sensor_ENABLE_RX_INT|UART_Sensor_DISABLE_TX_INT);
	
	Timer8_WritePeriod(160);  
	Timer8_WriteCompareValue(80);  
	Timer8_EnableInt();  
	Timer8_Start();
	
	Timer16_WritePeriod(9600);
	Timer16_WriteCompareValue(9000);
	Timer16_EnableInt();
	Timer16_Start();
	
	SAR10_SetClk(SAR10_SYSCLK_16); // Set clock source - system clock/64
	SAR10_SetRunMode(SAR10_ONESHOT); // Set running method - one-shot
	SAR10_SetADCChannel(SAR10_CHS_AMUX0); // Set Port_0_5 as input
	SAR10_DisableInt(); // Enable SAR10 interrupt
	SAR10_Start(); // Start conversion
	
	DisplayBuf[0] = 0;
	DisplayBuf[1] = 0;
	
	IndexStart = 4;
	IndexEnd   = 8;
	
//	for (i=0;i<8;i++)
//	{
//		DisplayContent[i] = DigitArray[8];
//	}

	while (1)
	{
		if (PMSFrameFlag)
		{
			PMSFrameFlag = 0;
			if (FrameCheck())
			{
				data_pm2_5 = MyPMSUnion.MyPMFrame.PM2_5_US;
				UartPutConstStr("PM2.5:");
				UartPutHexWord(data_pm2_5);
			}
			else
			{
				UartPutConstStr("CRC fail");
			}
		}
		
		if (!one_sec_timer)
		{
			one_sec_timer = ONE_SECOND_TIMER_RELOAD;
			
			
			MUX_CR2 |= 0X02; //connect P2.1 Analog bus
			SAR10_Trigger(); //Trigger new sample
		 	while(SAR10_fIsDataAvailable()==0);//Wait while data is not ready
		 	LightADCValue = SAR10_iGetData(); // Read result
			MUX_CR2 &= ~0X02; //disconnect P2.1 Analog bus
//			UART_Board_PutSHexInt(LightADCValue);
//			UART_Board_PutCRLF();
			
//			for (i=0;i<8;i++)
//			{
//				DisplayContent[i] = DigitArray[k];
//			}
//			
//			k++;
//			if (k > 9)
//				k = 0;
		}
		
		
		if(!rh_sample_timer)
		{
			rh_sample_timer = ONE_SECOND_TIMER_RELOAD;
			if (!RHSampleStep)
			{
				ret = Si7020SendCommand(MRH_NHMM); // send the command(Measure RH, No Hold Master Mode)
				if(ret)
				{
//					UART_Board_CPutString("Send commad success");
//					UART_Board_PutCRLF();
					RHSampleStep = 1;
				}
				else
				{			
//					UART_Board_CPutString("Send commad fail");
//					UART_Board_PutCRLF();					
				}
			}
			else 
			{				
					Si7020Read_RH_NHM(RecBuf);
					Si7020Data = *(unsigned int *)RecBuf;
					UartPutConstStr("RH:");
					UartPutHexWord(Si7020Data);
					Humidity = Si7020CalcRH(Si7020Data);
					UartPutHexByte(Humidity);
					Si7020ClearBuf();
				
					Si7020Read_Temp_after_RHM(RecBuf);
					Si7020Data = *(unsigned int *)RecBuf;
					UartPutConstStr("Temperature:");
					UartPutHexWord(Si7020Data);
					Temperature = Si7020CalcTemp(Si7020Data);
					UartPutHexByte(Temperature);
					RHSampleStep = 0;
					Si7020ClearBuf();
					
			}
		}
		
		LED_Display();
		
	}
}