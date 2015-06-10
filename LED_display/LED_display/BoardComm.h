#ifndef _BOARD_COMM_
#define _BOARD_COMM_

void UartPutConstStr(const unsigned char *str);
void UartPutHexByte(unsigned char data);
void UartPutHexWord(unsigned int data);
unsigned char Num2Char(unsigned char num);
#endif