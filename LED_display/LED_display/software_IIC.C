#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#define		SW_IIC
#include  	"software_IIC.H"
//#include "HT1621B.h"

void delay_us(uint us)
{
	for (;us>0;us--)
	{
		asm ("NOP");
		asm ("NOP");
		asm ("NOP");
		asm ("NOP");
		asm ("NOP");
		asm ("NOP");
	}
}

//******************************************************************
void Init_IIC(void)
{
	//P1.7 P1.5 open drain low mode and output 1
	PRT1DM2 |= (SDA_BIT + SCL_BIT);
	PRT1DM1 |= (SDA_BIT + SCL_BIT);
	PRT1DM0 |= (SDA_BIT + SCL_BIT);
	PRT1DR	|= (SDA_BIT + SCL_BIT);
}
void ChangeToRead(void)
{
	PRT1DM0 &= ~(SDA_BIT);
	PRT1DM2 &= ~(SDA_BIT);
	delay_us(1);
}

void ChangeToOD(void)
{
	PRT1DM2 |= (SDA_BIT);
//	PRT1DM1 |= (SDA_BIT);
	PRT1DM0 |= (SDA_BIT);
	delay_us(1);
}

//******************************************************************* 




//******************************************************************
//                     �����ߺ���               
//����ԭ��: void  Start_I2c();  
//����:       ���I2C����,������I2C��ʼ����.
//  
//******************************************************************* 
void Start_I2c(void)
{
	SDA_H;   //������ʼ�����������ź� 
	SCL_H;
	delay_us(2);
	SDA_L;   //������ʼ�ź� 
	delay_us(1);
	SCL_L;   //ǯסI2C���ߣ�׼�����ͻ��������  
	delay_us(1);
}
//******************************************************************
//                      �������ߺ���               
//����ԭ��: void  Stop_I2c();  
//����:       ����I2C����,������I2C��������.
//  
//******************************************************************* 
void Stop_I2c(void)
{
	SDA_L;  
	delay_us(1);
	SCL_H;  
	delay_us(1);
	SDA_H;  
	delay_us(1);
}
//******************************************************************
//                 �ֽ����ݴ��ͺ���               
//����ԭ��: void  SendByte(uchar c);
//����:  ������c���ͳ�ȥ,�����ǵ�ַ,Ҳ����������,�����ȴ�Ӧ��,����
//     ��״̬λ���в���.(��Ӧ����Ӧ��ʹack=0 ��)     
//     ��������������ack=1; ack=0��ʾ��������Ӧ����𻵡�
//******************************************************************* 
void  SendByte(uchar c)
{
		uchar BitCnt;
	
	for(BitCnt=0;BitCnt<8;BitCnt++)
	{
		if((c<<BitCnt)&0x80)
		{
			SDA_H;
		}
		else
		{
			SDA_L;
		}
		delay_us(1);
		SCL_H;               
		delay_us(1);         
		SCL_L; 
		delay_us(1);
	}
	ChangeToRead();
	delay_us(2);   
	SCL_H;
	delay_us(1);
	if(SDA_READ)
	{
		ack=0;
	}
	else
	{
		ack=1;        //�ж��Ƿ���յ�Ӧ���ź� 
	}
	ChangeToOD();
	SCL_L;
	_Nop();
	_Nop();
}
//******************************************************************
//                 �ֽ����ݴ��ͺ���               
//����ԭ��: uchar  RcvByte();
//����:  �������մ���������������,���ж����ߴ���(����Ӧ���ź�)��
//     ���������Ӧ������  
//******************************************************************* 	
uchar  RcvByte(void)
{
	uchar retc;
	uchar BitCnt;
	
	retc=0; 
	ChangeToRead(); 
	for(BitCnt=0;BitCnt<8;BitCnt++)
	{
        delay_us(1);         
        SCL_L;       //��ʱ����Ϊ�ͣ�׼����������λ 
       	delay_us(1);
        SCL_H;       //��ʱ����Ϊ��ʹ��������������Ч 
        delay_us(1);
        retc=retc<<1;
        if(SDA_READ)
				{
						retc |= 1; //������λ,���յ�����λ����retc��  
				} 
	}
	SCL_L;    
	_Nop();
	_Nop();
	ChangeToOD(); 
	return(retc);
}
//*******************************************************************
//                     Ӧ���Ӻ���
//ԭ��:  void Ack_I2c(bit a);
// 
//����:����������Ӧ���ź�,(������Ӧ����Ӧ���ź�)
//******************************************************************* 
void Ack_I2c(uchar a)
{
	if(a==0)
	{
		SDA_L;     //�ڴ˷���Ӧ����Ӧ���ź�  
	}
	else
	{
		SDA_H;
	}
	delay_us(1);
	SCL_H;
	delay_us(1);  
	SCL_L;                //��ʱ���ߣ�ǯסI2C�����Ա�������� 
	delay_us(1);    
}
//******************************************************************
//                    �����ӵ�ַ���������ֽ����ݺ���               
//����ԭ��: bit  ISendByte(uchar sla,ucahr c);  
//����:     ��������ߵ����͵�ַ�����ݣ��������ߵ�ȫ����,��������ַsla.
//           �������1��ʾ�����ɹ��������������
//ע�⣺    ʹ��ǰ�����ѽ������ߡ�
//******************************************************************* 
uchar ISendByte(uchar sla,uchar c)
{
	Start_I2c();               //������� 
	SendByte(sla);            //����������ַ 
	if(ack==0)
	{
		Stop_I2c();
		return(0);
	}
	SendByte(c);               //�������� 
	if(ack==0)
	{
		Stop_I2c();
		return(0);
	}
	Stop_I2c();                 //��������  
	return(1);
}

//******************************************************************
//                    �����ӵ�ַ�������Ͷ��ֽ����ݺ���               
//����ԭ��: bit  ISendStr(uchar sla,uchar suba,ucahr *s,uchar no);  
//����:     ��������ߵ����͵�ַ���ӵ�ַ,���ݣ��������ߵ�ȫ����,������
//          ��ַsla���ӵ�ַsuba������������sָ������ݣ�����no���ֽڡ�
//           �������1��ʾ�����ɹ��������������
//ע�⣺    ʹ��ǰ�����ѽ������ߡ�
//******************************************************************* 
uchar ISendStr(uchar sla,uchar *s,uchar no)
{
	uchar i;
	uchar Tmp;
	Start_I2c();               //������� 
	SendByte(sla);            //����������ַ 
	if(ack==0)
	{
		Stop_I2c();
		return(0);
	}

	for(i=0;i<no;i++)
	{   
		SendByte(*s);               //�������� 
		if(ack==0)
		{
			Stop_I2c();
			return(0);
		}
		s++;
	}
	Stop_I2c();                 //��������  
	return(1);
}
//******************************************************************
//                    �����ӵ�ַ�������ֽ����ݺ���               
//����ԭ��: bit  IRcvByte(uchar sla,ucahr *c);  
//����:     ��������ߵ����͵�ַ�������ݣ��������ߵ�ȫ����,��������
//          ַsla������ֵ��c.
//           �������1��ʾ�����ɹ��������������
//ע�⣺    ʹ��ǰ�����ѽ������ߡ�
//******************************************************************* 
uchar IRcvByte(uchar sla,uchar *c)
{
	Start_I2c();                //������� 
	SendByte(sla+1);           //����������ַ 
	if(ack==0)
	{
		Stop_I2c();
		return(0);
	}
	*c=RcvByte();               //��ȡ���� 
	Ack_I2c(1);                 //���ͷǾʹ�λ 
	Stop_I2c();                 //��������  
	return(1);
}
//******************************************************************
//                    �����ӵ�ַ������ȡ���ֽ����ݺ���               
//����ԭ��: bit  ISendStr(uchar sla,uchar suba,ucahr *s,uchar no);  
//����:     ��������ߵ����͵�ַ���ӵ�ַ,�����ݣ��������ߵ�ȫ����,������
//          ��ַsla���ӵ�ַsuba�����������ݷ���sָ��Ĵ洢������no���ֽڡ�
//           �������1��ʾ�����ɹ��������������
//ע�⣺    ʹ��ǰ�����ѽ������ߡ�
//******************************************************************* 
uchar IRcvStr(uchar sla,uint suba,uchar *s,uchar no)
{
	uchar i;
	uchar Tmp;
	Start_I2c();               //������� 
	SendByte(sla);            //����������ַ 
	if(ack==0)
	{
		Stop_I2c();
		return(0);
	}
	Tmp = suba & 0xff;
	SendByte(Tmp);            //���������ӵ�ַ 
	if(ack==0)
	{
		Stop_I2c();
		return(0);
	}
	
	Start_I2c();
	SendByte(sla+1);
	if(ack==0)
	{
		Stop_I2c();
		return(0);
	}
	for(i=0;i<no-1;i++)
	{   
		*s=RcvByte();               //�������� 
		Ack_I2c(0);                //���;ʹ�λ   
		s++;
	} 
	*s=RcvByte();
	Ack_I2c(1);                 //���ͷ�Ӧλ 
	Stop_I2c();                    //��������  
	return(1);
}

uchar IRcvBytes(uchar sla,uchar *s,uchar no)
{
	uchar i;

	Start_I2c();
	SendByte(sla+1);
	if(ack==0)
	{
		Stop_I2c();
		return(0);
	}
	for(i=0;i<no-1;i++)
	{   
		*s=RcvByte();               //�������� 
		Ack_I2c(0);                //���;ʹ�λ   
		s++;
	} 
	*s=RcvByte();
	Ack_I2c(1);                 //���ͷ�Ӧλ 
	Stop_I2c();                    //��������  
	return(1);
}