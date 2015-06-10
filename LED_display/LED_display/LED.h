#ifndef _LED_
#define _LED_

#define BIT_A	0X8000
#define BIT_B	0X0001
#define BIT_C	0X0002
#define BIT_D	0X0004
#define BIT_E	0X0008
#define BIT_F	0X2000
#define BIT_G	0X1000
#define BIT_DP	0X4000

#define DIGIT_1	~(BIT_B + BIT_C)
#define DIGIT_2 ~(BIT_A + BIT_B + BIT_G + BIT_E + BIT_D)
#define DIGIT_3 ~(BIT_A + BIT_B + BIT_C + BIT_D + BIT_G)
#define DIGIT_4 ~(BIT_B + BIT_C + BIT_F + BIT_G)
#define DIGIT_5 ~(BIT_A + BIT_F + BIT_G + BIT_C + BIT_D)
#define DIGIT_6 ~(BIT_A + BIT_F + BIT_G + BIT_C + BIT_D + BIT_E)
#define DIGIT_7 ~(BIT_A + BIT_B + BIT_C)
#define DIGIT_8 ~(BIT_A + BIT_B + BIT_F + BIT_G + BIT_C + BIT_D + BIT_E)
#define DIGIT_9 ~(BIT_A + BIT_B + BIT_F + BIT_G + BIT_C + BIT_D)
#define DIGIT_0 ~(BIT_A + BIT_B + BIT_F + BIT_C + BIT_D + BIT_E)
#define DIGIT_P ~(BIT_A + BIT_B + BIT_F + BIT_G + BIT_E)
#define DIGIT_C ~(BIT_A + BIT_D + BIT_E + BIT_F)
#define DIGIT_H ~(BIT_B + BIT_C + BIT_E + BIT_F + BIT_G)
#define DIGIT_MINUS (~BIT_G)
#define PM2_5 		0
#define TEMPERATURE	1
#define HUMIDITY	2


#ifdef LED_DISPLAY
#define LED_EXTERN
const unsigned int DigitArray[] = {
	DIGIT_0,
	DIGIT_1,
	DIGIT_2,
	DIGIT_3,
	DIGIT_4,
	DIGIT_5,
	DIGIT_6,
	DIGIT_7,
	DIGIT_8,
	DIGIT_9,
};
#else 
#define LED_EXTERN extern
extern const unsigned int DigitArray[];
#endif
	
LED_EXTERN unsigned int DisplayContent[8];
LED_EXTERN unsigned char DisplayExchangeTimer;
LED_EXTERN unsigned char DisPlayIndex;
LED_EXTERN unsigned char IndexStart;
LED_EXTERN unsigned char IndexEnd;
LED_EXTERN unsigned char DisplayItem;

LED_EXTERN void ShowPMxx(unsigned int pm);
LED_EXTERN void ShowHumiTemp(signed char value);
LED_EXTERN void LED_Display(void);
#endif 