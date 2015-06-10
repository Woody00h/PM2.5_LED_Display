#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

unsigned char Num2Char(unsigned char num)
{
	if (num > 9)
		return (num-10+'A');
	else
		return (num + '0');
}
void BoardUART(void )//board communication rx interrupt
{
	unsigned char rxdata;
	
	rxdata = UART_Board_bReadRxData();
	//echo
//	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
//	UART_Board_SendData(rxdata);
}

void UartPutConstStr(const unsigned char *str)
{
	unsigned char k=0;
	while (str[k])
	{
		while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
		UART_Board_SendData(str[k]);
		k++;
	}
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData('\r');
	
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData('\n');
}

void UartPutHexByte(unsigned char data)
{
	unsigned char temp;
	unsigned char ch;
	
	temp = (data>>4);
	ch = Num2Char(temp);
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData(ch);
	
	temp = (data&0x0f);
	ch = Num2Char(temp);
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData(ch);
	
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData('\r');
	
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData('\n');
}

void UartPutHexWord(unsigned int data)
{
	unsigned char ch;
	unsigned char temp;
	unsigned int value = data;

	temp = (value >> 12) & 0x000f;
	ch = Num2Char(temp);
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData(ch);
	
	temp = ((value >> 8) & 0x000f);
	ch = Num2Char(temp);
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData(ch);
	
	temp = ((value >> 4) & 0x000f);
	ch = Num2Char(temp);
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData(ch);
	
	temp = (value & 0x000f);
	ch = Num2Char(temp);
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData(ch);
	
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData('\r');
	
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData('\n');
}