#define LED_DISPLAY
#include "LED.h"
#include <stdlib.h>
#include "ParticleSensor.h"
#include "Si7020.h"
#include "BoardComm.h"

unsigned char DisplayNum[3];
void ShowPMxx(unsigned int pm)
{
	unsigned int temp,index;
	unsigned char k = 0;
	
	temp = pm;
	if(temp > 999)
	{
		temp = 999;
	}
	
	index = temp/100;
	DisplayNum[0] = index;
	
	temp = temp%100;
	index = temp/10;
	DisplayNum[1] = index;
	
	index = temp%10;
	DisplayNum[2] = index;
	
	DisplayContent[0] = DIGIT_P;
	DisplayContent[4] = DIGIT_P;
	
	k = 0;
	while (k<2)
	{
		if (DisplayNum[k])
		{
			DisplayContent[k+1] = DigitArray[DisplayNum[k]];
			DisplayContent[k+5] = DigitArray[DisplayNum[k]];
			k++;
			break;
		}
		else
		{
			DisplayContent[k+1] = 0xffff;
			DisplayContent[k+5] = 0xffff;
		}
		k++;
	}
	
	for (;k<3;k++)
	{
		DisplayContent[k+1] = DigitArray[DisplayNum[k]];
		DisplayContent[k+5] = DigitArray[DisplayNum[k]];
	}
	/*
	if (pm <= 50)
	{
		IndexStart = 0;
		IndexEnd   = 4;
	}
	else
	{
		if (pm <= 150)
		{
			IndexStart = 0;
			IndexEnd   = 8;
		}
		else
		{
			IndexStart = 4;
			IndexEnd   = 8;
		}
	}*/
}

void ShowHumiTemp(signed char value)
{
	signed char temp = value;
	unsigned char index;
	
//	DisplayContent[1] = 0xffff;
	DisplayContent[5] = 0xffff;
	
	if (temp < 0)
	{
		temp = abs(temp);
	}
	
	if (temp > 99)
	{
		temp = 99;
	}
	
	index = temp/10;
	if(index)
	{
//		DisplayContent[2] = DigitArray[index];
		DisplayContent[6] = DigitArray[index];
	}
	else
	{
//		DisplayContent[2] = 0xffff;
		DisplayContent[6] = 0xffff;
	}
	
	index = temp%10;
//	DisplayContent[3] = DigitArray[index];
	DisplayContent[7] = DigitArray[index];
	
	if (temp < 0)
	{
		if (DisplayContent[2] == 0xffff)
		{
//			DisplayContent[2] == DIGIT_MINUS;
			DisplayContent[6] == DIGIT_MINUS;
		}
		else 
		{
//			DisplayContent[1] == DIGIT_MINUS;
			DisplayContent[5] == DIGIT_MINUS;
		}
	}
	/*
	IndexStart = 0;
	IndexEnd   = 4;
	*/
}

void LED_Display(void)
{
	
	if (!DisplayExchangeTimer)
	{
		DisplayExchangeTimer = 40;
		if (DisplayItem == PM2_5)
		{
			ShowPMxx(data_pm2_5);
			DisplayItem = TEMPERATURE;
			UartPutConstStr("Show PM");
		}
		else 
		{
			if (DisplayItem == TEMPERATURE)
			{
//				DisplayContent[0] = DIGIT_C;
				DisplayContent[4] = DIGIT_C;
				
				ShowHumiTemp(Temperature);
				DisplayItem = HUMIDITY;
				UartPutConstStr("Show T");
			}
			else 
			{
				if (DisplayItem == HUMIDITY)
				{
	//				DisplayContent[0] = DIGIT_H;
					DisplayContent[4] = DIGIT_H;
					
					ShowHumiTemp(Humidity);
					DisplayItem = PM2_5;
					UartPutConstStr("Show RH");
				}
			}
		}
	}
}