#ifndef		_SW_IIC_H_
#define		_SW_IIC_H_

#define		SDA_BIT			0x20
#define		SCL_BIT			0x80
#define		SDA_L			PRT1DR &= ~SDA_BIT
#define		SDA_H			PRT1DR |= SDA_BIT
#define 	SCL_L			PRT1DR &= ~SCL_BIT
#define 	SCL_H			PRT1DR |= SCL_BIT
#define		SDA_READ		PRT1DR&SDA_BIT
#define		_Nop()			asm("nop")

#ifdef		SW_IIC
#define		SW_IIC_EXT		
#else
#define		SW_IIC_EXT		extern
#endif

#define  uchar unsigned char //�궨�� 
#define  uint  unsigned int
	

	
//״̬��־ 
SW_IIC_EXT		uchar	ack;	         //Ӧ���־λ 
SW_IIC_EXT		char	eepromtype;

SW_IIC_EXT		void	Init_IIC(void);
SW_IIC_EXT		uchar	SetAddr(uchar sla,uint suba);
SW_IIC_EXT		void	Start_I2c(void);
SW_IIC_EXT		void	Stop_I2c(void);
SW_IIC_EXT		void	SendByte(uchar c);
SW_IIC_EXT		uchar	RcvByte(void);
SW_IIC_EXT		void	Ack_I2c(uchar a);
SW_IIC_EXT		uchar	ISendByte(uchar sla,uchar c);
SW_IIC_EXT		uchar	ISendStr(uchar sla,uchar *s,uchar no);
SW_IIC_EXT		uchar	IRcvByte(uchar sla,uchar *c);
SW_IIC_EXT		uchar	IRcvStr(uchar sla,uint suba,uchar *s,uchar no);
SW_IIC_EXT		uchar 	IRcvBytes(uchar sla,uchar *s,uchar no);
SW_IIC_EXT		void	ChangeToRead(void);
SW_IIC_EXT		void	ChangeToOD(void);
SW_IIC_EXT		void 	delay_us(uint us);
#endif