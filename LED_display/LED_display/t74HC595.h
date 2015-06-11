#ifndef _74HC595_
#define _74HC595_

#define STCP_BIT	0x80
#define SHCP_BIT	0x20
#define DS_BIT		0x8
#define MR_BIT		0x2

#define STCP_1		(PRT0DR |= STCP_BIT)
#define STCP_0		(PRT0DR &= ~STCP_BIT)
#define SHCP_1		(PRT0DR |= SHCP_BIT)
#define SHCP_0		(PRT0DR &= ~SHCP_BIT)
#define DS_1		(PRT0DR |= DS_BIT)
#define DS_0		(PRT0DR &= ~DS_BIT)
#define MR_1		(PRT0DR |= MR_BIT)
#define MR_0		(PRT0DR &= ~MR_BIT)

#define TOTAL_SR_BYTES	3

#ifdef DISPLAY
#define DISPLAY_EXTERN
							// G1   G2   G3   G4   R1   R2   R3   R4
const unsigned char DisBit[]={0x7f,0xdf,0xf7,0xfd,0xbf,0xef,0xfb,0xfe};
#else

#define DISPLAY_EXTERN extern
extern const unsigned char DisBit[];

#endif 

DISPLAY_EXTERN char DisplayBuf[3];
DISPLAY_EXTERN void ShiftRegOutput(void);
#endif