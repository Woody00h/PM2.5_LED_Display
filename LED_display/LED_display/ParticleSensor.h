#ifndef _PARTICLE_SENSOR_
#define _PARTICLE_SENSOR_

typedef unsigned int u16;

#define FRAME_HEAD	0x424d
#define BUF_LENGTH	40
//particle sensor frame definition
typedef struct 
{
	u16 Head;
	u16 Length;
	u16 PM1_0_US;
	u16 PM2_5_US;
	u16 PM10_US;
	u16 PM1_0_CN;
	u16 PM2_5_CN;
	u16 PM10_CN;
	u16 Reserve1;
	u16 Reserve2;
	u16 Reserve3;
	u16 checksum;
}PMFrameField;

typedef union
{
	unsigned char PMRxBuf[BUF_LENGTH];
	PMFrameField MyPMFrame;
}PMSFrameUnion;

#ifdef PMS3003
#define PMS3003_EXTERN
#else 
#define PMS3003_EXTERN extern
#endif //PMS3003

PMS3003_EXTERN unsigned char HeadFlag;
PMS3003_EXTERN unsigned char HeadPointer;
PMS3003_EXTERN unsigned char DataPtr;
PMS3003_EXTERN unsigned char PMSFrameFlag;
PMS3003_EXTERN PMSFrameUnion MyPMSUnion;
PMS3003_EXTERN unsigned int data_pm2_5;
PMS3003_EXTERN unsigned char RecTimeoutTimer;
PMS3003_EXTERN unsigned char FrameCheck(void);
#endif	//_PARTICLE_SENSOR_	