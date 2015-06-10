#define  SI7020
#include "Si7020.h"
#include "software_IIC.h"

extern unsigned char IICTimeOutTimer;
//
//Measure Relative Humidity, Hold Master Mode
//
unsigned char Si7020SendCommand(char cmd)
{
	return(ISendByte(SI7020_ADDR,cmd));
}

//
//read the result of the RH measurement.
//
void Si7020Read_RH_NHM(unsigned char * buffer)
{
	char ret;
	IICTimeOutTimer = 2;
	while (1)
	{
		ret = IRcvBytes(SI7020_ADDR,buffer,3);
		if (ret || !IICTimeOutTimer)
			break;
	}
}

//
//read the temperature result of the pre RH measurement
//
unsigned char Si7020Read_Temp_after_RHM(unsigned char * buffer)
{
	char ret;
	ret = Si7020SendCommand(RD_TEMP_PRE_RHM);
	
	if (!ret)
	{
		return 0;
	}
	
	ret = IRcvBytes(SI7020_ADDR,buffer,3);
	
	if (!ret)
	{
		return 0;
	}
	
	return 1;
}

//
//transfrom the raw data to the temperature value
//175.72*Temp_Code/65536-46.85
//
signed char Si7020CalcTemp(unsigned int data)
{
	signed long temp;
	signed char result;
	temp = data;
	temp = temp*175;
	temp += (data>>2)*3;
	temp >>= 16;
	temp -= 47;
	if (temp < -9)
		temp = -9;
	
	result = temp;
	return result;
}

//
//transfrom the raw data to the RH value
//125*Temp_Code/65536-6
//
unsigned char Si7020CalcRH(unsigned int data)
{
	unsigned long temp;
	unsigned char result;
	temp = data;
	temp = 125*temp;
	temp >>= 16;
	if (temp >= 6)
	{
		if (temp >= 106)
		{
			temp = 100;
		}
		else
		{
			temp -= 6;
		}
	}
	else 
	{
		temp = 0;
	}
	
	result = temp;
	return result;
}

void Si7020ClearBuf()
{
	unsigned char k;
	for (k=0;k<5;k++)
	{
		RecBuf[k] = 0;
	}
}