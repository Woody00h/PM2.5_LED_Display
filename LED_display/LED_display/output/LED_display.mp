HI-TECH Software C Compiler 

Linker command line:

\
  --edf=C:\Program Files (x86)\HI-TECH Software\HCPSOC\PRO\9.61\dat\en_msgs.txt \
  -cs -h+output\LED_display.sym -z -QCY8C22345 -ol.obj \
  -Moutput/LED_display.mp -E1 -ACODE=00h-03h,065h-03FFFh \
  -ABANKROM=00h-03h,065h-0FFh,0100h-01FFhx63 -AROM=00h-03h,065h-03FFFh \
  -ARAM=00h-0F7h,0100h-01FFhx3 -pvectors=0x0 -pstrings=ROM -pcdata=ROM \
  -pPD_startup=CODE,powerup,init,end_init -pintrtext=CODE -pmaintext=CODE \
  -ptext=CODE -pUserModules=CODE \
  -pbss0=00h,rbit0,ramdata0,nvram0,nvbit0,fnauto -promdata0=BANKROM \
  -pbss1=0100h,rbit1,ramdata1,nvram1,nvbit1 -promdata1=BANKROM \
  -pbss2=0200h,rbit2,ramdata2,nvram2,nvbit2 -promdata2=BANKROM \
  -pbss3=0300h,rbit3,ramdata3,nvram3,nvbit3 -promdata3=BANKROM \
  -pstackps=0300h/0300h output\startup.obj output\LED_display.obj \
  ./obj/boot.obj lib/libpsoc.lib \
  D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib 

Object code version is 3.10

Machine type is CY8C22345

Call graph: (short form)

*_main size 0,2 offset 0
     _Init_IIC size 0,0 offset 2
     _UART_Board_Start size 0,0 offset 2
     _UART_Sensor_Start size 0,0 offset 2
     _UART_Sensor_IntCntl size 0,0 offset 2
     _LED_Init size 0,0 offset 2
*    _Timer8_WritePeriod size 0,0 offset 26
     _Timer8_WriteCompareValue size 0,0 offset 2
     _Timer8_EnableInt size 0,0 offset 2
     _Timer8_Start size 0,0 offset 2
     _Timer16_WritePeriod size 0,0 offset 2
     _Timer16_WriteCompareValue size 0,0 offset 2
     _Timer16_EnableInt size 0,0 offset 2
     _Timer16_Start size 0,0 offset 2
     _SAR10_SetClk size 0,0 offset 2
     _SAR10_SetRunMode size 0,0 offset 2
     _SAR10_SetADCChannel size 0,0 offset 2
     _SAR10_DisableInt size 0,0 offset 2
     _SAR10_Start size 0,0 offset 2
     _Si7020Init size 0,2 offset 2
     _FrameCheck size 0,6 offset 2
     _UartPutConstStr size 0,3 offset 2
         _UART_Board_bReadTxStatus size 0,0 offset 10
         _UART_Board_SendData size 0,0 offset 10
     _UartPutHexWord size 0,8 offset 2
         _Num2Char size 0,1 offset 10
         _UART_Board_bReadTxStatus size 0,0 offset 10
         _UART_Board_SendData size 0,0 offset 10
     _SAR10_Trigger size 0,0 offset 2
     _SAR10_fIsDataAvailable size 0,0 offset 2
     _SAR10_iGetData size 0,0 offset 2
     _Si7020SendCommand size 0,1 offset 4
         _ISendByte size 0,2 offset 5
             _Start_I2c size 0,0 offset 10
                 _delay_us size 0,2 offset 13
             _SendByte size 0,3 offset 10
                 _delay_us size 0,2 offset 13
                 _ChangeToRead size 0,0 offset 13
                     _delay_us size 0,2 offset 13
                 _ChangeToOD size 0,0 offset 13
                     _delay_us size 0,2 offset 13
             _Stop_I2c size 0,0 offset 10
                 _delay_us size 0,2 offset 13
     _Si7020Read_RH_NHM size 0,2 offset 2
         _IRcvBytes size 1,5 offset 4
             _Start_I2c size 0,0 offset 10
             _SendByte size 0,3 offset 10
             _Stop_I2c size 0,0 offset 10
             _RcvByte size 0,2 offset 10
                 _ChangeToRead size 0,0 offset 13
                 _delay_us size 0,2 offset 13
                 _ChangeToOD size 0,0 offset 13
             _Ack_I2c size 0,1 offset 10
                 _delay_us size 0,2 offset 13
     _CRC8Check size 0,0 offset 2
         _LeftRotate size 0,2 offset 2
     _Si7020CalcRH size 0,7 offset 2
         ___lmul size 8,4 offset 13
     _UartPutHexByte size 0,3 offset 2
         _Num2Char size 0,1 offset 10
         _UART_Board_bReadTxStatus size 0,0 offset 10
         _UART_Board_SendData size 0,0 offset 10
     _Si7020Read_Temp_after_RHM size 0,2 offset 2
         _Si7020SendCommand size 0,1 offset 4
         _IRcvBytes size 1,5 offset 4
*    _Si7020CalcTemp size 0,11 offset 2
*        ___lmul size 8,4 offset 13
         ___wmul size 2,4 offset 13
     _LED_Display size 0,0 offset 2
         _ShowPMxx size 0,8 offset 2
             ___lwdiv size 2,5 offset 10
             ___lwmod size 2,3 offset 10
         _UartPutConstStr size 0,3 offset 2
         _ShowHumiTemp size 0,6 offset 2
             _abs size 0,2 offset 8
             ___awdiv size 2,6 offset 8
             ___awmod size 2,4 offset 8

Estimated maximum call depth: 5

*intlevel2 size 0,0 offset 25
     _BoardUART size 0,0 offset 25
         _UART_Board_bReadRxData size 0,0 offset 25
*    _Timer8ISR size 0,1 offset 25
         _Timer8_WritePeriod size 0,0 offset 26
*        _ShiftRegOutput size 0,3 offset 26
     _Timer16ISR size 0,0 offset 25
     _SensorUART size 0,3 offset 25
         _UART_Sensor_bReadRxData size 0,0 offset 28

Estimated maximum call depth: 2


                Name          Link     Load   Length Selector Space Scale
output\startup.obj
                vectors          0        0        3       0     0
                init          3FA0     3FA0       30    3F46     0
                SSCParmBl       F8       F8        8       0     1
                TOP              4        4       61       0     0
output\LED_display.obj
                ramdata0        54       54        5       0     1
                romdata0        65       65        5      65     0
                maintext      3C8E     3C8E      172    3C8E     0
                text          30D4     30D4      BBA    30D4     0
                bss0             0        0       54       0     1
                nvram0          59       59        3       0     1
                cdata         3E00     3E00       1C      3E     0
                strings       3F00     3F00       46      3F     0
./obj/boot.obj  PD_startu     3F46     3F46       5A    3F46     0
                TOP              4        4       61       0     0

lib/libpsoc.lib
lib/obj/psocconfig.obj
                psoc_conf     2B32     2B32       64    2B32     0
lib/obj/psocconfigtbl.obj
                lit           2B96     2B96      132    2B96     0
                psoc_conf     3E1C     3E1C       A5      3E     0
lib/obj/sar10.obj
                UserModul     2CC8     2CC8       BE    2CC8     0
lib/obj/sar10int.obj
                UserModul     2D86     2D86        1    2CC8     0
lib/obj/timer16.obj
                UserModul     2D87     2D87       62    2CC8     0
lib/obj/timer8.obj
                UserModul     2DE9     2DE9       4B    2CC8     0
lib/obj/uart_board.obj
                UserModul     2E34     2E34      14E    2CC8     0
lib/obj/uart_boardint.obj
                UserModul     2F82     2F82        2    2CC8     0
lib/obj/uart_sensor.obj
                UserModul     2F84     2F84      14E    2CC8     0
lib/obj/uart_sensorint.obj
                UserModul     30D2     30D2        2    2CC8     0

D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib

COMMON          fnauto          5C       5C       1D       0     1

TOTAL           Name          Link     Load   Length  Space
        CLASS   CODE           
                vectors          0        0        3     0
                maintext      3C8E     3C8E      172     0
                text          30D4     30D4      BBA     0
                PD_startu     3F46     3F46       5A     0
                init          3FA0     3FA0       30     0

        CLASS   BANKROM        
                romdata0        65       65        5     0

        CLASS   ROM            
                cdata         3E00     3E00       1C     0
                strings       3F00     3F00       46     0
                UserModul     2CC8     2CC8      40C     0
                TOP              4        4       61     0
                psoc_conf     2B32     2B32       64     0
                lit           2B96     2B96      132     0
                psoc_conf     3E1C     3E1C       A5     0

        CLASS   RAM            
                ramdata0        54       54        5     1
                fnauto          5C       5C       1D     1
                SSCParmBl       F8       F8        8     1
                bss0             0        0       54     1
                nvram0          59       59        3     1



SEGMENTS        Name           Load    Length   Top     Selector    Space Class

                bss0            000000  000079  000079         0       1  RAM     
                vectors         000000  000003  000003         0       0  CODE    
                romdata0        000065  000005  00006A        65       0  BANKROM 
                psoc_config     002B32  000064  002B96      2B32       0  ROM     
                lit             002B96  000132  002CC8      2B96       0  ROM     
                UserModules     002CC8  00040C  0030D4      2CC8       0  CODE    
                text            0030D4  000BBA  003C8E      30D4       0  CODE    
                maintext        003C8E  000172  003E00      3C8E       0  CODE    
                cdata           003E00  0000C1  003EC1        3E       0  ROM     
                strings         003F00  000046  003F46        3F       0  ROM     
                PD_startup      003F46  00008A  003FD0      3F46       0  CODE    


UNUSED ADDRESS RANGES

        BANKROM          0003-0003
                         006A-2B31
                         3EC1-3EFF
                         3FD0-3FFF
        CODE             0003-0003
                         006A-2B31
                         3EC1-3EFF
                         3FD0-3FFF
        RAM              0079-00F7
                         0100-03FF
        ROM              0003-0003
                         006A-2B31
                         3EC1-3EFF
                         3FD0-3FFF

                                  Symbol Table

??_Ack_I2c                         fnauto          0066
??_FrameCheck                      fnauto          005E
??_IRcvBytes                       fnauto          0061
??_ISendByte                       fnauto          0061
??_LeftRotate                      fnauto          005E
??_Num2Char                        fnauto          0066
??_RcvByte                         fnauto          0066
??_SendByte                        fnauto          0066
??_SensorUART                      fnauto          0075
??_ShiftRegOutput                  fnauto          0076
??_ShowHumiTemp                    fnauto          005E
??_ShowPMxx                        fnauto          005E
??_Si7020CalcRH                    fnauto          005E
??_Si7020CalcTemp                  fnauto          005E
??_Si7020Init                      fnauto          005E
??_Si7020Read_RH_NHM               fnauto          005E
??_Si7020Read_Temp_after_RHM       fnauto          005E
??_Si7020SendCommand               fnauto          0060
??_UartPutConstStr                 fnauto          005E
??_UartPutHexByte                  fnauto          005E
??_UartPutHexWord                  fnauto          005E
??___awdiv                         fnauto          0066
??___awmod                         fnauto          0066
??___lmul                          fnauto          0071
??___lwdiv                         fnauto          0068
??___lwmod                         fnauto          0068
??___wmul                          fnauto          006B
??_abs                             fnauto          0064
??_delay_us                        fnauto          0069
??_main                            fnauto          005C
?_IRcvBytes                        fnauto          0060
?___awdiv                          fnauto          0064
?___awmod                          fnauto          0064
?___lmul                           fnauto          0069
?___lwdiv                          fnauto          0066
?___lwmod                          fnauto          0066
?___wmul                           fnauto          0069
Ack_I2c@a                          fnauto          0066
FrameCheck@checksum                fnauto          005E
FrameCheck@i                       fnauto          0060
IRcvBytes@i                        fnauto          0063
IRcvBytes@no                       fnauto          0060
IRcvBytes@s                        fnauto          0061
IRcvBytes@sla                      fnauto          0062
ISendByte@c                        fnauto          0061
ISendByte@sla                      fnauto          0062
LeftRotate@k                       fnauto          005E
LoadConfigInit                     psoc_config     2B32
LoadConfigTBL_led_display_Bank0    lit             2B96
LoadConfigTBL_led_display_Bank1    lit             2C2D
LoadConfigTBL_led_display_Ordered  psoc_config     3E1C
LoadConfig_led_display             psoc_config     2B39
NO_SHADOW                          InterruptRAM    0079
Num2Char@num                       fnauto          0066
RcvByte@BitCnt                     fnauto          0067
RcvByte@retc                       fnauto          0066
SAR10_DisableInt                   UserModules     2CCC
SAR10_EnableAutoTrigger            UserModules     2D3E
SAR10_EnableInt                    UserModules     2CC8
SAR10_SetADCChannel                UserModules     2D0E
SAR10_SetClk                       UserModules     2D56
SAR10_SetRunMode                   UserModules     2D6E
SAR10_SetTriggerSrc                UserModules     2D26
SAR10_Start                        UserModules     2CD0
SAR10_Stop                         UserModules     2CD8
SAR10_Trigger                      UserModules     2CE0
SAR10_bGetData                     UserModules     2D0B
SAR10_fIsDataAvailable             UserModules     2CE8
SAR10_iGetData                     UserModules     2CF1
SendByte@BitCnt                    fnauto          0067
SendByte@c                         fnauto          0066
SensorUART@rxdata                  fnauto          0075
ShiftRegOutput@i                   fnauto          0078
ShiftRegOutput@k                   fnauto          0077
ShiftRegOutput@temp_data           fnauto          0076
ShowHumiTemp@index                 fnauto          0060
ShowHumiTemp@temp                  fnauto          005F
ShowHumiTemp@value                 fnauto          005E
ShowPMxx@index                     fnauto          0062
ShowPMxx@k                         fnauto          0064
ShowPMxx@pm                        fnauto          005E
ShowPMxx@temp                      fnauto          0060
Si7020CalcRH@data                  fnauto          005E
Si7020CalcRH@result                fnauto          0064
Si7020CalcRH@temp                  fnauto          0060
Si7020CalcTemp@data                fnauto          005E
Si7020CalcTemp@result              fnauto          0064
Si7020CalcTemp@temp                fnauto          0060
Si7020Init@my_data                 fnauto          005E
Si7020Read_RH_NHM@buffer           fnauto          005E
Si7020Read_RH_NHM@ret              fnauto          005F
Si7020Read_Temp_after_RHM@buffer   fnauto          005E
Si7020Read_Temp_after_RHM@ret      fnauto          005F
Si7020SendCommand@cmd              fnauto          0060
Timer16_DisableInt                 UserModules     2D8B
Timer16_EnableInt                  UserModules     2D87
Timer16_Start                      UserModules     2D8F
Timer16_Stop                       UserModules     2D93
Timer16_WriteCompareValue          UserModules     2D9D
Timer16_WritePeriod                UserModules     2D97
Timer16_wReadCompareValue          UserModules     2DA3
Timer16_wReadTimer                 UserModules     2DE1
Timer16_wReadTimerSaveCV           UserModules     2DA9
Timer8_DisableInt                  UserModules     2DED
Timer8_EnableInt                   UserModules     2DE9
Timer8_Start                       UserModules     2DF1
Timer8_Stop                        UserModules     2DF5
Timer8_WriteCompareValue           UserModules     2DFC
Timer8_WritePeriod                 UserModules     2DF9
Timer8_bReadCompareValue           UserModules     2DFF
Timer8_bReadTimer                  UserModules     2E2F
Timer8_bReadTimerSaveCV            UserModules     2E02
UART_Board_CPutString              UserModules     2F67
UART_Board_CWrite                  UserModules     2F39
UART_Board_DisableInt              UserModules     2E3B
UART_Board_EnableInt               UserModules     2E34
UART_Board_IntCntl                 UserModules     2E81
UART_Board_PutCRLF                 UserModules     2F79
UART_Board_PutChar                 UserModules     2EC6
UART_Board_PutSHexByte             UserModules     2EAC
UART_Board_PutSHexInt              UserModules     2EBF
UART_Board_PutString               UserModules     2F03
UART_Board_SendData                UserModules     2E62
UART_Board_SetTxIntMode            UserModules     2E42
UART_Board_Start                   UserModules     2E54
UART_Board_Stop                    UserModules     2E5B
UART_Board_TxIntMode               UserModules     2E6E
UART_Board_Write                   UserModules     2F13
UART_Board_bReadRxData             UserModules     2E68
UART_Board_bReadRxStatus           UserModules     2E6B
UART_Board_bReadTxStatus           UserModules     2E65
UART_Board_cGetChar                UserModules     2ECE
UART_Board_cReadChar               UserModules     2ED6
UART_Board_iReadChar               UserModules     2EED
UART_Sensor_CPutString             UserModules     30B7
UART_Sensor_CWrite                 UserModules     3089
UART_Sensor_DisableInt             UserModules     2F8B
UART_Sensor_EnableInt              UserModules     2F84
UART_Sensor_IntCntl                UserModules     2FD1
UART_Sensor_PutCRLF                UserModules     30C9
UART_Sensor_PutChar                UserModules     3016
UART_Sensor_PutSHexByte            UserModules     2FFC
UART_Sensor_PutSHexInt             UserModules     300F
UART_Sensor_PutString              UserModules     3053
UART_Sensor_SendData               UserModules     2FB2
UART_Sensor_SetTxIntMode           UserModules     2F92
UART_Sensor_Start                  UserModules     2FA4
UART_Sensor_Stop                   UserModules     2FAB
UART_Sensor_TxIntMode              UserModules     2FBE
UART_Sensor_Write                  UserModules     3063
UART_Sensor_bReadRxData            UserModules     2FB8
UART_Sensor_bReadRxStatus          UserModules     2FBB
UART_Sensor_bReadTxStatus          UserModules     2FB5
UART_Sensor_cGetChar               UserModules     301E
UART_Sensor_cReadChar              UserModules     3026
UART_Sensor_iReadChar              UserModules     303D
UartPutConstStr@k                  fnauto          0060
UartPutConstStr@str                fnauto          005E
UartPutHexByte@ch                  fnauto          0060
UartPutHexByte@data                fnauto          005E
UartPutHexByte@temp                fnauto          005F
UartPutHexWord@ch                  fnauto          0063
UartPutHexWord@data                fnauto          005E
UartPutHexWord@temp                fnauto          0062
UartPutHexWord@value               fnauto          0060
_Ack_I2c                           text            397A
_BoardUART                         text            3B44
_CRC8Check                         text            3372
_ChangeToOD                        text            3B06
_ChangeToRead                      text            3B15
_DataPtr                           bss0            003F
_DeadZone                          bss0            0040
_DigitArray                        cdata           3E00
_DisBit                            cdata           3E14
_DisPlayIndex                      bss0            0041
_DisplayBuf                        bss0            0051
_DisplayContent                    bss0            0028
_DisplayExchangeTimer              nvram0          0059
_DisplayItem                       bss0            0042
_DisplayNum                        bss0            0038
_FrameCheck                        text            317E
_HeadFlag                          bss0            0043
_Humidity                          bss0            0044
_IICTimeOutTimer                   bss0            0045
_IRcvBytes                         text            345F
_ISendByte                         text            38FD
_IndexEnd                          nvram0          005A
_IndexStart                        bss0            0046
_Init_IIC                          text            344E
_LED_Display                       text            329A
_LED_Init                          text            342F
_LeftRotate                        text            34E0
_LeftRotate$3378                   fnauto          005F
_LoadConfigInit                    psoc_config     2B32
_LoadConfig_led_display            psoc_config     2B39
_MyPMSUnion                        bss0            0000
_NO_SHADOW                         InterruptRAM    0079
_Num2Char                          text            34CF
_PMSFrameFlag                      bss0            0047
_RHSampleStep                      bss0            0048
_RcvByte                           text            3932
_RecBuf                            bss0            004C
_RecTimeoutTimer                   bss0            0049
_SAR10_DisableInt                  UserModules     2CCC
_SAR10_EnableAutoTrigger           UserModules     2D3E
_SAR10_EnableInt                   UserModules     2CC8
_SAR10_ISR                         UserModules     2D86
_SAR10_SetADCChannel               UserModules     2D0E
_SAR10_SetClk                      UserModules     2D56
_SAR10_SetRunMode                  UserModules     2D6E
_SAR10_SetTriggerSrc               UserModules     2D26
_SAR10_Start                       UserModules     2CD0
_SAR10_Stop                        UserModules     2CD8
_SAR10_Trigger                     UserModules     2CE0
_SAR10_bGetData                    UserModules     2D0B
_SAR10_fIsDataAvailable            UserModules     2CE8
_SAR10_iGetData                    UserModules     2CF1
_SendByte                          text            3A45
_SensorUART                        text            3C10
_ShiftRegOutput                    text            3BA3
_ShowHumiTemp                      text            372D
_ShowPMxx                          text            3554
_Si7020CalcRH                      text            339C
_Si7020CalcTemp                    text            31F6
_Si7020Data                        bss0            003B
_Si7020Init                        text            31CB
_Si7020Read_RH_NHM                 text            3356
_Si7020Read_Temp_after_RHM         text            31D5
_Si7020SendCommand                 text            3803
_Start_I2c                         text            3ABF
_Stop_I2c                          text            3AE4
_Temperature                       bss0            004A
_Timer16ISR                        text            3BF2
_Timer16_DisableInt                UserModules     2D8B
_Timer16_EnableInt                 UserModules     2D87
_Timer16_Start                     UserModules     2D8F
_Timer16_Stop                      UserModules     2D93
_Timer16_WriteCompareValue         UserModules     2D9D
_Timer16_WritePeriod               UserModules     2D97
_Timer16_wReadCompareValue         UserModules     2DA3
_Timer16_wReadTimer                UserModules     2DE1
_Timer16_wReadTimerSaveCV          UserModules     2DA9
_Timer8ISR                         text            3B49
_Timer8_DisableInt                 UserModules     2DED
_Timer8_EnableInt                  UserModules     2DE9
_Timer8_Start                      UserModules     2DF1
_Timer8_Stop                       UserModules     2DF5
_Timer8_WriteCompareValue          UserModules     2DFC
_Timer8_WritePeriod                UserModules     2DF9
_Timer8_bReadCompareValue          UserModules     2DFF
_Timer8_bReadTimer                 UserModules     2E2F
_Timer8_bReadTimerSaveCV           UserModules     2E02
_UART_Board_CPutString             UserModules     2F67
_UART_Board_CWrite                 UserModules     2F39
_UART_Board_DisableInt             UserModules     2E3B
_UART_Board_EnableInt              UserModules     2E34
_UART_Board_IntCntl                UserModules     2E81
_UART_Board_PutCRLF                UserModules     2F79
_UART_Board_PutChar                UserModules     2EC6
_UART_Board_PutSHexByte            UserModules     2EAC
_UART_Board_PutSHexInt             UserModules     2EBF
_UART_Board_PutString              UserModules     2F03
_UART_Board_RX_ISR                 UserModules     2F83
_UART_Board_SendData               UserModules     2E62
_UART_Board_SetTxIntMode           UserModules     2E42
_UART_Board_Start                  UserModules     2E54
_UART_Board_Stop                   UserModules     2E5B
_UART_Board_TX_ISR                 UserModules     2F82
_UART_Board_TxIntMode              UserModules     2E6E
_UART_Board_Write                  UserModules     2F13
_UART_Board_bReadRxData            UserModules     2E68
_UART_Board_bReadRxStatus          UserModules     2E6B
_UART_Board_bReadTxStatus          UserModules     2E65
_UART_Board_cGetChar               UserModules     2ECE
_UART_Board_cReadChar              UserModules     2ED6
_UART_Board_iReadChar              UserModules     2EED
_UART_Sensor_CPutString            UserModules     30B7
_UART_Sensor_CWrite                UserModules     3089
_UART_Sensor_DisableInt            UserModules     2F8B
_UART_Sensor_EnableInt             UserModules     2F84
_UART_Sensor_IntCntl               UserModules     2FD1
_UART_Sensor_PutCRLF               UserModules     30C9
_UART_Sensor_PutChar               UserModules     3016
_UART_Sensor_PutSHexByte           UserModules     2FFC
_UART_Sensor_PutSHexInt            UserModules     300F
_UART_Sensor_PutString             UserModules     3053
_UART_Sensor_RX_ISR                UserModules     30D3
_UART_Sensor_SendData              UserModules     2FB2
_UART_Sensor_SetTxIntMode          UserModules     2F92
_UART_Sensor_Start                 UserModules     2FA4
_UART_Sensor_Stop                  UserModules     2FAB
_UART_Sensor_TX_ISR                UserModules     30D2
_UART_Sensor_TxIntMode             UserModules     2FBE
_UART_Sensor_Write                 UserModules     3063
_UART_Sensor_bReadRxData           UserModules     2FB8
_UART_Sensor_bReadRxStatus         UserModules     2FBB
_UART_Sensor_bReadTxStatus         UserModules     2FB5
_UART_Sensor_cGetChar              UserModules     301E
_UART_Sensor_cReadChar             UserModules     3026
_UART_Sensor_iReadChar             UserModules     303D
_UartPutConstStr                   text            36E3
_UartPutHexByte                    text            32FD
_UartPutHexWord                    text            30D4
__Bnvbit0                          nvbit0          005C
__Bnvbit1                          nvbit1          0100
__Bnvbit2                          nvbit2          0200
__Bnvbit3                          nvbit3          0300
__Brbit0                           rbit0           0054
__Brbit1                           rbit1           0100
__Brbit2                           rbit2           0200
__Brbit3                           rbit3           0300
__Bstackps                         stackps         0300
__HInterruptRAM                    InterruptRAM    0300
__HPD_startup                      PD_startup      3FA0
__HSSCParmBlk                      SSCParmBlk      0100
__HTOP                             TOP             0065
__HUserModules                     UserModules     30D4
__Hbss                             bss             0300
__Hbss0                            bss0            0054
__Hbss1                            bss1            0100
__Hbss2                            bss2            0200
__Hbss3                            bss3            0300
__Hcdata                           cdata           3E1C
__Hend_init                        end_init        0003
__Hfnauto                          fnauto          0079
__Hinit                            init            3FD0
__Hintrtext                        intrtext        0003
__Hled_display_RAM                 led_display_RAM 0300
__Hlit                             lit             0300
__Hmaintext                        maintext        3E00
__Hnvbit0                          nvbit0          02E0
__Hnvbit1                          nvbit1          0800
__Hnvbit2                          nvbit2          1000
__Hnvbit3                          nvbit3          1800
__Hnvram0                          nvram0          005C
__Hnvram1                          nvram1          0100
__Hnvram2                          nvram2          0200
__Hnvram3                          nvram3          0300
__Hpowerup                         powerup         0003
__Hpsoc_config                     psoc_config     0300
__Hramdata0                        ramdata0        0059
__Hramdata1                        ramdata1        0100
__Hramdata2                        ramdata2        0200
__Hramdata3                        ramdata3        0300
__Hrbit0                           rbit0           02A0
__Hrbit1                           rbit1           0800
__Hrbit2                           rbit2           1000
__Hrbit3                           rbit3           1800
__Hromdata0                        romdata0        006A
__Hromdata1                        romdata1        0003
__Hromdata2                        romdata2        0003
__Hromdata3                        romdata3        0003
__Hstackps                         stackps         0300
__Hstrings                         strings         3F46
__Htext                            text            3C8E
__Hvectors                         vectors         0003
__LInterruptRAM                    InterruptRAM    0300
__LPD_startup                      PD_startup      3F46
__LSSCParmBlk                      SSCParmBlk      0000
__LTOP                             TOP             0000
__LUserModules                     UserModules     2CC8
__Lbss                             bss             0300
__Lbss0                            bss0            0000
__Lbss1                            bss1            0100
__Lbss2                            bss2            0200
__Lbss3                            bss3            0300
__Lcdata                           cdata           3E00
__Lend_init                        end_init        0003
__Lfnauto                          fnauto          005C
__Linit                            init            3FA0
__Lintrtext                        intrtext        0003
__Lled_display_RAM                 led_display_RAM 0300
__Llit                             lit             0300
__Lmaintext                        maintext        3C8E
__Lnvbit0                          nvbit0          02E0
__Lnvbit1                          nvbit1          0800
__Lnvbit2                          nvbit2          1000
__Lnvbit3                          nvbit3          1800
__Lnvram0                          nvram0          0059
__Lnvram1                          nvram1          0100
__Lnvram2                          nvram2          0200
__Lnvram3                          nvram3          0300
__Lpowerup                         powerup         0003
__Lpsoc_config                     psoc_config     0300
__Lramdata0                        ramdata0        0054
__Lramdata1                        ramdata1        0100
__Lramdata2                        ramdata2        0200
__Lramdata3                        ramdata3        0300
__Lrbit0                           rbit0           02A0
__Lrbit1                           rbit1           0800
__Lrbit2                           rbit2           1000
__Lrbit3                           rbit3           1800
__Lromdata0                        romdata0        0065
__Lromdata1                        romdata1        0003
__Lromdata2                        romdata2        0003
__Lromdata3                        romdata3        0003
__Lstackps                         stackps         0300
__Lstrings                         strings         3F00
__Ltext                            text            30D4
__Lvectors                         vectors         0000
__S0                               (abs)           3FD0
__S1                               (abs)           0079
__Start                            PD_startup      3F46
___awdiv                           text            387F
___awdiv@counter                   fnauto          006B
___awdiv@dividend                  fnauto          0066
___awdiv@divisor                   fnauto          0064
___awdiv@quotient                  fnauto          0068
___awdiv@sign                      fnauto          006A
___awmod                           text            380C
___awmod@counter                   fnauto          0069
___awmod@dividend                  fnauto          0066
___awmod@divisor                   fnauto          0064
___awmod@sign                      fnauto          0068
___end_of_c_program_code           text            3C8E
___lmul                            text            350C
___lmul@multiplicand               fnauto          006D
___lmul@multiplier                 fnauto          0069
___lmul@product                    fnauto          0071
___lwdiv                           text            39A6
___lwdiv@counter                   fnauto          006C
___lwdiv@dividend                  fnauto          0068
___lwdiv@divisor                   fnauto          0066
___lwdiv@quotient                  fnauto          006A
___lwmod                           text            3A09
___lwmod@counter                   fnauto          006A
___lwmod@dividend                  fnauto          0068
___lwmod@divisor                   fnauto          0066
___start_of_c_program_code         text            30D4
___wmul                            text            36B7
___wmul@multiplicand               fnauto          0069
___wmul@multiplier                 fnauto          006B
___wmul@product                    fnauto          006D
__end_of_Ack_I2c                   text            39A6
__end_of_BoardUART                 text            3B49
__end_of_CRC8Check                 text            339C
__end_of_ChangeToOD                text            3B15
__end_of_ChangeToRead              text            3B26
__end_of_FrameCheck                text            31CB
__end_of_IRcvBytes                 text            34CF
__end_of_ISendByte                 text            3932
__end_of_Init_IIC                  text            345F
__end_of_LED_Display               text            32FD
__end_of_LED_Init                  text            344E
__end_of_LeftRotate                text            350C
__end_of_Num2Char                  text            34E0
__end_of_RcvByte                   text            397A
__end_of_SendByte                  text            3ABF
__end_of_SensorUART                text            3C8E
__end_of_ShiftRegOutput            text            3BF2
__end_of_ShowHumiTemp              text            3803
__end_of_ShowPMxx                  text            36B7
__end_of_Si7020CalcRH              text            342F
__end_of_Si7020CalcTemp            text            329A
__end_of_Si7020Init                text            31D5
__end_of_Si7020Read_RH_NHM         text            3372
__end_of_Si7020Read_Temp_after_RHM text            31F6
__end_of_Si7020SendCommand         text            380C
__end_of_Start_I2c                 text            3AE4
__end_of_Stop_I2c                  text            3B06
__end_of_Timer16ISR                text            3C10
__end_of_Timer8ISR                 text            3BA3
__end_of_UartPutConstStr           text            372D
__end_of_UartPutHexByte            text            3356
__end_of_UartPutHexWord            text            317E
__end_of___awdiv                   text            38FD
__end_of___awmod                   text            387F
__end_of___lmul                    text            3554
__end_of___lwdiv                   text            39F0
__end_of___lwmod                   text            3A45
__end_of___wmul                    text            36E3
__end_of_abs                       text            3A09
__end_of_delay_us                  text            3B44
__end_of_main                      maintext        3E00
__stack_start__                    stackps         0300
_abs                               text            39F0
_ack                               bss0            004B
_bGetPowerSetting                  PD_startup      3F9D
_bTimer8_CaptureCounter            UserModules     2E2F
_bTimer8_ReadCompareValue          UserModules     2DFF
_bTimer8_ReadCounter               UserModules     2E02
_bTimer8_ReadTimer                 UserModules     2E2F
_bTimer8_ReadTimerSaveCV           UserModules     2E02
_bUART_Board_ReadRxData            UserModules     2E68
_bUART_Board_ReadRxStatus          UserModules     2E6B
_bUART_Board_ReadTxStatus          UserModules     2E65
_bUART_Sensor_ReadRxData           UserModules     2FB8
_bUART_Sensor_ReadRxStatus         UserModules     2FBB
_bUART_Sensor_ReadTxStatus         UserModules     2FB5
_data_length                       nvram0          005B
_data_pm2_5                        bss0            003D
_delay_us                          text            3B26
_main                              maintext        3C8E
_one_sec_timer                     ramdata0        0054
_p                                 ramdata0        0055
_poly_h                            ramdata0        0056
_poly_l                            ramdata0        0057
_rh_sample_timer                   ramdata0        0058
_wTimer16_CaptureCounter           UserModules     2DE1
_wTimer16_ReadCompareValue         UserModules     2DA3
_wTimer16_ReadCounter              UserModules     2DA9
_wTimer16_ReadTimer                UserModules     2DE1
_wTimer16_ReadTimerSaveCV          UserModules     2DA9
abs@a                              fnauto          0064
bGetPowerSetting                   PD_startup      3F9D
bTimer8_CaptureCounter             UserModules     2E2F
bTimer8_ReadCompareValue           UserModules     2DFF
bTimer8_ReadCounter                UserModules     2E02
bTimer8_ReadTimer                  UserModules     2E2F
bTimer8_ReadTimerSaveCV            UserModules     2E02
bUART_Board_ReadRxData             UserModules     2E68
bUART_Board_ReadRxStatus           UserModules     2E6B
bUART_Board_ReadTxStatus           UserModules     2E65
bUART_Sensor_ReadRxData            UserModules     2FB8
bUART_Sensor_ReadRxStatus          UserModules     2FBB
bUART_Sensor_ReadTxStatus          UserModules     2FB5
delay_us@us                        fnauto          0069
intlevel0                          romdata3        0003
intlevel1                          romdata3        0003
intlevel2                          romdata3        0003
main@ret                           fnauto          005C
reset_vec                          vectors         0000
start                              vectors         0000
startup                            init            3FA0
wTimer16_CaptureCounter            UserModules     2DE1
wTimer16_ReadCompareValue          UserModules     2DA3
wTimer16_ReadCounter               UserModules     2DA9
wTimer16_ReadTimer                 UserModules     2DE1
wTimer16_ReadTimerSaveCV           UserModules     2DA9
