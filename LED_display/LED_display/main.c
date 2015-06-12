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
		Timer8_WritePeriod(79);  
		DisplayBuf[0] = 0xff;
		DisplayBuf[1] = 0xff;
		DisplayBuf[2] = 0xff;
		ShiftRegOutput();
		DeadZone = 0;
	}
	else 
	{
		Timer8_WritePeriod(159);  
		*p = DisplayContent[DisPlayIndex];

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
	
	Init_IIC();
	
	UART_Board_Start(UART_PARITY_NONE);
//	UART_Board_EnableInt();
//	UART_Board_IntCntl(UART_Board_ENABLE_RX_INT|UART_Board_DISABLE_TX_INT);

	UART_Sensor_Start(UART_PARITY_NONE);
//	UART_Sensor_EnableInt();
	UART_Sensor_IntCntl(UART_Sensor_ENABLE_RX_INT|UART_Sensor_DISABLE_TX_INT);
	
	LED_Init();
	
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
	
	IndexStart = 0;
	IndexEnd   = 4;
	
	Si7020Init();
	
	RES_WDT = 0;
	while (1)
	{
		if (!RecTimeoutTimer)
		{
			PMSFrameFlag = 0;
			HeadFlag = 0;	
            DataPtr = 0;
		}
		
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
				UartPutConstStr("checksum fail");
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

		}
		
		
		if(!rh_sample_timer)
		{
			rh_sample_timer = ONE_SECOND_TIMER_RELOAD;
			if (!RHSampleStep)
			{
				ret = Si7020SendCommand(MRH_NHMM); // send the command(Measure RH, No Hold Master Mode)
				if(ret)
				{
					RHSampleStep = 1;
				}
				else
				{			
					
				}
			}
			else 
			{
					
					Si7020Read_RH_NHM(RecBuf);
					Si7020Data = *(unsigned int *)RecBuf;
//					UartPutHexByte(RecBuf[0]);
//					UartPutHexByte(RecBuf[1]);
//					UartPutHexByte(RecBuf[2]);
					if (CRC8Check())
					{						
						UartPutConstStr("RH:");
//						UartPutHexWord(Si7020Data);
						Humidity = Si7020CalcRH(Si7020Data);
						UartPutHexByte(Humidity);
					}
					else 
					{
						UartPutConstStr("CRC fail");
					}
					
				
					Si7020Read_Temp_after_RHM(RecBuf);
					Si7020Data = *(unsigned int *)RecBuf;
					UartPutConstStr("Temperature:");
					Temperature = Si7020CalcTemp(Si7020Data);
					UartPutHexByte(Temperature);
				
					RHSampleStep = 0;
			}
		}
		
		LED_Display();
		RES_WDT = 0;
	}
}
