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
                maintext      3C9E     3C9E      162    3C9E     0
                text          3106     3106      B98    3106     0
                bss0             0        0       54       0     1
                nvram0          59       59        2       0     1
                cdata         3E00     3E00       1C      3E     0
                strings       3F00     3F00       46      3F     0
./obj/boot.obj  PD_startu     3F46     3F46       5A    3F46     0
                TOP              4        4       61       0     0

lib/libpsoc.lib
lib/obj/psocconfig.obj
                psoc_conf     2B64     2B64       64    2B64     0
lib/obj/psocconfigtbl.obj
                lit           2BC8     2BC8      132    2BC8     0
                psoc_conf     3E1C     3E1C       A5      3E     0
lib/obj/sar10.obj
                UserModul     2CFA     2CFA       BE    2CFA     0
lib/obj/sar10int.obj
                UserModul     2DB8     2DB8        1    2CFA     0
lib/obj/timer16.obj
                UserModul     2DB9     2DB9       62    2CFA     0
lib/obj/timer8.obj
                UserModul     2E1B     2E1B       4B    2CFA     0
lib/obj/uart_board.obj
                UserModul     2E66     2E66      14E    2CFA     0
lib/obj/uart_boardint.obj
                UserModul     2FB4     2FB4        2    2CFA     0
lib/obj/uart_sensor.obj
                UserModul     2FB6     2FB6      14E    2CFA     0
lib/obj/uart_sensorint.obj
                UserModul     3104     3104        2    2CFA     0

D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib

COMMON          fnauto          5B       5B       1D       0     1

TOTAL           Name          Link     Load   Length  Space
        CLASS   CODE           
                vectors          0        0        3     0
                maintext      3C9E     3C9E      162     0
                text          3106     3106      B98     0
                PD_startu     3F46     3F46       5A     0
                init          3FA0     3FA0       30     0

        CLASS   BANKROM        
                romdata0        65       65        5     0

        CLASS   ROM            
                cdata         3E00     3E00       1C     0
                strings       3F00     3F00       46     0
                UserModul     2CFA     2CFA      40C     0
                TOP              4        4       61     0
                psoc_conf     2B64     2B64       64     0
                lit           2BC8     2BC8      132     0
                psoc_conf     3E1C     3E1C       A5     0

        CLASS   RAM            
                ramdata0        54       54        5     1
                fnauto          5B       5B       1D     1
                SSCParmBl       F8       F8        8     1
                bss0             0        0       54     1
                nvram0          59       59        2     1



SEGMENTS        Name           Load    Length   Top     Selector    Space Class

                bss0            000000  000078  000078         0       1  RAM     
                vectors         000000  000003  000003         0       0  CODE    
                romdata0        000065  000005  00006A        65       0  BANKROM 
                psoc_config     002B64  000064  002BC8      2B64       0  ROM     
                lit             002BC8  000132  002CFA      2BC8       0  ROM     
                UserModules     002CFA  00040C  003106      2CFA       0  CODE    
                text            003106  000B98  003C9E      3106       0  CODE    
                maintext        003C9E  000162  003E00      3C9E       0  CODE    
                cdata           003E00  0000C1  003EC1        3E       0  ROM     
                strings         003F00  000046  003F46        3F       0  ROM     
                PD_startup      003F46  00008A  003FD0      3F46       0  CODE    


UNUSED ADDRESS RANGES

        BANKROM          0003-0003
                         006A-2B63
                         3EC1-3EFF
                         3FD0-3FFF
        CODE             0003-0003
                         006A-2B63
                         3EC1-3EFF
                         3FD0-3FFF
        RAM              0078-00F7
                         0100-03FF
        ROM              0003-0003
                         006A-2B63
                         3EC1-3EFF
                         3FD0-3FFF

                                  Symbol Table

??_Ack_I2c                         fnauto          0065
??_FrameCheck                      fnauto          005D
??_IRcvBytes                       fnauto          0060
??_ISendByte                       fnauto          0060
??_LeftRotate                      fnauto          005D
??_Num2Char                        fnauto          0065
??_RcvByte                         fnauto          0065
??_SendByte                        fnauto          0065
??_SensorUART                      fnauto          0074
??_ShiftRegOutput                  fnauto          0075
??_ShowHumiTemp                    fnauto          005D
??_ShowPMxx                        fnauto          005D
??_Si7020CalcRH                    fnauto          005D
??_Si7020CalcTemp                  fnauto          005D
??_Si7020Init                      fnauto          005D
??_Si7020Read_RH_NHM               fnauto          005D
??_Si7020Read_Temp_after_RHM       fnauto          005D
??_Si7020SendCommand               fnauto          005F
??_UartPutConstStr                 fnauto          005D
??_UartPutHexByte                  fnauto          005D
??_UartPutHexWord                  fnauto          005D
??___awdiv                         fnauto          0065
??___awmod                         fnauto          0065
??___lmul                          fnauto          0070
??___lwdiv                         fnauto          0067
??___lwmod                         fnauto          0067
??___wmul                          fnauto          006A
??_abs                             fnauto          0063
??_delay_us                        fnauto          0068
??_main                            fnauto          005B
?_IRcvBytes                        fnauto          005F
?___awdiv                          fnauto          0063
?___awmod                          fnauto          0063
?___lmul                           fnauto          0068
?___lwdiv                          fnauto          0065
?___lwmod                          fnauto          0065
?___wmul                           fnauto          0068
Ack_I2c@a                          fnauto          0065
FrameCheck@checksum                fnauto          005D
FrameCheck@i                       fnauto          005F
IRcvBytes@i                        fnauto          0062
IRcvBytes@no                       fnauto          005F
IRcvBytes@s                        fnauto          0060
IRcvBytes@sla                      fnauto          0061
ISendByte@c                        fnauto          0060
ISendByte@sla                      fnauto          0061
LeftRotate@k                       fnauto          005D
LoadConfigInit                     psoc_config     2B64
LoadConfigTBL_led_display_Bank0    lit             2BC8
LoadConfigTBL_led_display_Bank1    lit             2C5F
LoadConfigTBL_led_display_Ordered  psoc_config     3E1C
LoadConfig_led_display             psoc_config     2B6B
NO_SHADOW                          InterruptRAM    0078
Num2Char@num                       fnauto          0065
RcvByte@BitCnt                     fnauto          0066
RcvByte@retc                       fnauto          0065
SAR10_DisableInt                   UserModules     2CFE
SAR10_EnableAutoTrigger            UserModules     2D70
SAR10_EnableInt                    UserModules     2CFA
SAR10_SetADCChannel                UserModules     2D40
SAR10_SetClk                       UserModules     2D88
SAR10_SetRunMode                   UserModules     2DA0
SAR10_SetTriggerSrc                UserModules     2D58
SAR10_Start                        UserModules     2D02
SAR10_Stop                         UserModules     2D0A
SAR10_Trigger                      UserModules     2D12
SAR10_bGetData                     UserModules     2D3D
SAR10_fIsDataAvailable             UserModules     2D1A
SAR10_iGetData                     UserModules     2D23
SendByte@BitCnt                    fnauto          0066
SendByte@c                         fnauto          0065
SensorUART@rxdata                  fnauto          0074
ShiftRegOutput@i                   fnauto          0077
ShiftRegOutput@k                   fnauto          0076
ShiftRegOutput@temp_data           fnauto          0075
ShowHumiTemp@index                 fnauto          005F
ShowHumiTemp@temp                  fnauto          005E
ShowHumiTemp@value                 fnauto          005D
ShowPMxx@index                     fnauto          0061
ShowPMxx@k                         fnauto          0063
ShowPMxx@pm                        fnauto          005D
ShowPMxx@temp                      fnauto          005F
Si7020CalcRH@data                  fnauto          005D
Si7020CalcRH@result                fnauto          0063
Si7020CalcRH@temp                  fnauto          005F
Si7020CalcTemp@data                fnauto          005D
Si7020CalcTemp@result              fnauto          0063
Si7020CalcTemp@temp                fnauto          005F
Si7020Init@my_data                 fnauto          005D
Si7020Read_RH_NHM@buffer           fnauto          005D
Si7020Read_RH_NHM@ret              fnauto          005E
Si7020Read_Temp_after_RHM@buffer   fnauto          005D
Si7020Read_Temp_after_RHM@ret      fnauto          005E
Si7020SendCommand@cmd              fnauto          005F
Timer16_DisableInt                 UserModules     2DBD
Timer16_EnableInt                  UserModules     2DB9
Timer16_Start                      UserModules     2DC1
Timer16_Stop                       UserModules     2DC5
Timer16_WriteCompareValue          UserModules     2DCF
Timer16_WritePeriod                UserModules     2DC9
Timer16_wReadCompareValue          UserModules     2DD5
Timer16_wReadTimer                 UserModules     2E13
Timer16_wReadTimerSaveCV           UserModules     2DDB
Timer8_DisableInt                  UserModules     2E1F
Timer8_EnableInt                   UserModules     2E1B
Timer8_Start                       UserModules     2E23
Timer8_Stop                        UserModules     2E27
Timer8_WriteCompareValue           UserModules     2E2E
Timer8_WritePeriod                 UserModules     2E2B
Timer8_bReadCompareValue           UserModules     2E31
Timer8_bReadTimer                  UserModules     2E61
Timer8_bReadTimerSaveCV            UserModules     2E34
UART_Board_CPutString              UserModules     2F99
UART_Board_CWrite                  UserModules     2F6B
UART_Board_DisableInt              UserModules     2E6D
UART_Board_EnableInt               UserModules     2E66
UART_Board_IntCntl                 UserModules     2EB3
UART_Board_PutCRLF                 UserModules     2FAB
UART_Board_PutChar                 UserModules     2EF8
UART_Board_PutSHexByte             UserModules     2EDE
UART_Board_PutSHexInt              UserModules     2EF1
UART_Board_PutString               UserModules     2F35
UART_Board_SendData                UserModules     2E94
UART_Board_SetTxIntMode            UserModules     2E74
UART_Board_Start                   UserModules     2E86
UART_Board_Stop                    UserModules     2E8D
UART_Board_TxIntMode               UserModules     2EA0
UART_Board_Write                   UserModules     2F45
UART_Board_bReadRxData             UserModules     2E9A
UART_Board_bReadRxStatus           UserModules     2E9D
UART_Board_bReadTxStatus           UserModules     2E97
UART_Board_cGetChar                UserModules     2F00
UART_Board_cReadChar               UserModules     2F08
UART_Board_iReadChar               UserModules     2F1F
UART_Sensor_CPutString             UserModules     30E9
UART_Sensor_CWrite                 UserModules     30BB
UART_Sensor_DisableInt             UserModules     2FBD
UART_Sensor_EnableInt              UserModules     2FB6
UART_Sensor_IntCntl                UserModules     3003
UART_Sensor_PutCRLF                UserModules     30FB
UART_Sensor_PutChar                UserModules     3048
UART_Sensor_PutSHexByte            UserModules     302E
UART_Sensor_PutSHexInt             UserModules     3041
UART_Sensor_PutString              UserModules     3085
UART_Sensor_SendData               UserModules     2FE4
UART_Sensor_SetTxIntMode           UserModules     2FC4
UART_Sensor_Start                  UserModules     2FD6
UART_Sensor_Stop                   UserModules     2FDD
UART_Sensor_TxIntMode              UserModules     2FF0
UART_Sensor_Write                  UserModules     3095
UART_Sensor_bReadRxData            UserModules     2FEA
UART_Sensor_bReadRxStatus          UserModules     2FED
UART_Sensor_bReadTxStatus          UserModules     2FE7
UART_Sensor_cGetChar               UserModules     3050
UART_Sensor_cReadChar              UserModules     3058
UART_Sensor_iReadChar              UserModules     306F
UartPutConstStr@k                  fnauto          005F
UartPutConstStr@str                fnauto          005D
UartPutHexByte@ch                  fnauto          005F
UartPutHexByte@data                fnauto          005D
UartPutHexByte@temp                fnauto          005E
UartPutHexWord@ch                  fnauto          0062
UartPutHexWord@data                fnauto          005D
UartPutHexWord@temp                fnauto          0061
UartPutHexWord@value               fnauto          005F
_Ack_I2c                           text            398D
_BoardUART                         text            3B57
_CRC8Check                         text            33A4
_ChangeToOD                        text            3B19
_ChangeToRead                      text            3B28
_DataPtr                           bss0            003F
_DeadZone                          bss0            0040
_DigitArray                        cdata           3E00
_DisBit                            cdata           3E14
_DisPlayIndex                      bss0            0041
_DisplayBuf                        bss0            0051
_DisplayContent                    bss0            0028
_DisplayExchangeTimer              bss0            0042
_DisplayItem                       bss0            0043
_DisplayNum                        bss0            0038
_FrameCheck                        text            31B0
_HeadFlag                          bss0            0044
_Humidity                          bss0            0045
_IICTimeOutTimer                   bss0            0046
_IRcvBytes                         text            3472
_ISendByte                         text            3910
_IndexEnd                          nvram0          0059
_IndexStart                        bss0            0047
_Init_IIC                          text            3461
_LED_Display                       text            32CC
_LeftRotate                        text            34F3
_LeftRotate$3372                   fnauto          005E
_LoadConfigInit                    psoc_config     2B64
_LoadConfig_led_display            psoc_config     2B6B
_MyPMSUnion                        bss0            0000
_NO_SHADOW                         InterruptRAM    0078
_Num2Char                          text            34E2
_PMSFrameFlag                      bss0            0048
_RHSampleStep                      bss0            0049
_RcvByte                           text            3945
_RecBuf                            bss0            004C
_SAR10_DisableInt                  UserModules     2CFE
_SAR10_EnableAutoTrigger           UserModules     2D70
_SAR10_EnableInt                   UserModules     2CFA
_SAR10_ISR                         UserModules     2DB8
_SAR10_SetADCChannel               UserModules     2D40
_SAR10_SetClk                      UserModules     2D88
_SAR10_SetRunMode                  UserModules     2DA0
_SAR10_SetTriggerSrc               UserModules     2D58
_SAR10_Start                       UserModules     2D02
_SAR10_Stop                        UserModules     2D0A
_SAR10_Trigger                     UserModules     2D12
_SAR10_bGetData                    UserModules     2D3D
_SAR10_fIsDataAvailable            UserModules     2D1A
_SAR10_iGetData                    UserModules     2D23
_SendByte                          text            3A58
_SensorUART                        text            3C23
_ShiftRegOutput                    text            3BB6
_ShowHumiTemp                      text            3740
_ShowPMxx                          text            3567
_Si7020CalcRH                      text            33CE
_Si7020CalcTemp                    text            3228
_Si7020Data                        bss0            003B
_Si7020Init                        text            31FD
_Si7020Read_RH_NHM                 text            3388
_Si7020Read_Temp_after_RHM         text            3207
_Si7020SendCommand                 text            3816
_Start_I2c                         text            3AD2
_Stop_I2c                          text            3AF7
_Temperature                       bss0            004A
_Timer16ISR                        text            3C05
_Timer16_DisableInt                UserModules     2DBD
_Timer16_EnableInt                 UserModules     2DB9
_Timer16_Start                     UserModules     2DC1
_Timer16_Stop                      UserModules     2DC5
_Timer16_WriteCompareValue         UserModules     2DCF
_Timer16_WritePeriod               UserModules     2DC9
_Timer16_wReadCompareValue         UserModules     2DD5
_Timer16_wReadTimer                UserModules     2E13
_Timer16_wReadTimerSaveCV          UserModules     2DDB
_Timer8ISR                         text            3B5C
_Timer8_DisableInt                 UserModules     2E1F
_Timer8_EnableInt                  UserModules     2E1B
_Timer8_Start                      UserModules     2E23
_Timer8_Stop                       UserModules     2E27
_Timer8_WriteCompareValue          UserModules     2E2E
_Timer8_WritePeriod                UserModules     2E2B
_Timer8_bReadCompareValue          UserModules     2E31
_Timer8_bReadTimer                 UserModules     2E61
_Timer8_bReadTimerSaveCV           UserModules     2E34
_UART_Board_CPutString             UserModules     2F99
_UART_Board_CWrite                 UserModules     2F6B
_UART_Board_DisableInt             UserModules     2E6D
_UART_Board_EnableInt              UserModules     2E66
_UART_Board_IntCntl                UserModules     2EB3
_UART_Board_PutCRLF                UserModules     2FAB
_UART_Board_PutChar                UserModules     2EF8
_UART_Board_PutSHexByte            UserModules     2EDE
_UART_Board_PutSHexInt             UserModules     2EF1
_UART_Board_PutString              UserModules     2F35
_UART_Board_RX_ISR                 UserModules     2FB5
_UART_Board_SendData               UserModules     2E94
_UART_Board_SetTxIntMode           UserModules     2E74
_UART_Board_Start                  UserModules     2E86
_UART_Board_Stop                   UserModules     2E8D
_UART_Board_TX_ISR                 UserModules     2FB4
_UART_Board_TxIntMode              UserModules     2EA0
_UART_Board_Write                  UserModules     2F45
_UART_Board_bReadRxData            UserModules     2E9A
_UART_Board_bReadRxStatus          UserModules     2E9D
_UART_Board_bReadTxStatus          UserModules     2E97
_UART_Board_cGetChar               UserModules     2F00
_UART_Board_cReadChar              UserModules     2F08
_UART_Board_iReadChar              UserModules     2F1F
_UART_Sensor_CPutString            UserModules     30E9
_UART_Sensor_CWrite                UserModules     30BB
_UART_Sensor_DisableInt            UserModules     2FBD
_UART_Sensor_EnableInt             UserModules     2FB6
_UART_Sensor_IntCntl               UserModules     3003
_UART_Sensor_PutCRLF               UserModules     30FB
_UART_Sensor_PutChar               UserModules     3048
_UART_Sensor_PutSHexByte           UserModules     302E
_UART_Sensor_PutSHexInt            UserModules     3041
_UART_Sensor_PutString             UserModules     3085
_UART_Sensor_RX_ISR                UserModules     3105
_UART_Sensor_SendData              UserModules     2FE4
_UART_Sensor_SetTxIntMode          UserModules     2FC4
_UART_Sensor_Start                 UserModules     2FD6
_UART_Sensor_Stop                  UserModules     2FDD
_UART_Sensor_TX_ISR                UserModules     3104
_UART_Sensor_TxIntMode             UserModules     2FF0
_UART_Sensor_Write                 UserModules     3095
_UART_Sensor_bReadRxData           UserModules     2FEA
_UART_Sensor_bReadRxStatus         UserModules     2FED
_UART_Sensor_bReadTxStatus         UserModules     2FE7
_UART_Sensor_cGetChar              UserModules     3050
_UART_Sensor_cReadChar             UserModules     3058
_UART_Sensor_iReadChar             UserModules     306F
_UartPutConstStr                   text            36F6
_UartPutHexByte                    text            332F
_UartPutHexWord                    text            3106
__Bnvbit0                          nvbit0          005B
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
__HUserModules                     UserModules     3106
__Hbss                             bss             0300
__Hbss0                            bss0            0054
__Hbss1                            bss1            0100
__Hbss2                            bss2            0200
__Hbss3                            bss3            0300
__Hcdata                           cdata           3E1C
__Hend_init                        end_init        0003
__Hfnauto                          fnauto          0078
__Hinit                            init            3FD0
__Hintrtext                        intrtext        0003
__Hled_display_RAM                 led_display_RAM 0300
__Hlit                             lit             0300
__Hmaintext                        maintext        3E00
__Hnvbit0                          nvbit0          02D8
__Hnvbit1                          nvbit1          0800
__Hnvbit2                          nvbit2          1000
__Hnvbit3                          nvbit3          1800
__Hnvram0                          nvram0          005B
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
__Htext                            text            3C9E
__Hvectors                         vectors         0003
__LInterruptRAM                    InterruptRAM    0300
__LPD_startup                      PD_startup      3F46
__LSSCParmBlk                      SSCParmBlk      0000
__LTOP                             TOP             0000
__LUserModules                     UserModules     2CFA
__Lbss                             bss             0300
__Lbss0                            bss0            0000
__Lbss1                            bss1            0100
__Lbss2                            bss2            0200
__Lbss3                            bss3            0300
__Lcdata                           cdata           3E00
__Lend_init                        end_init        0003
__Lfnauto                          fnauto          005B
__Linit                            init            3FA0
__Lintrtext                        intrtext        0003
__Lled_display_RAM                 led_display_RAM 0300
__Llit                             lit             0300
__Lmaintext                        maintext        3C9E
__Lnvbit0                          nvbit0          02D8
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
__Ltext                            text            3106
__Lvectors                         vectors         0000
__S0                               (abs)           3FD0
__S1                               (abs)           0078
__Start                            PD_startup      3F46
___awdiv                           text            3892
___awdiv@counter                   fnauto          006A
___awdiv@dividend                  fnauto          0065
___awdiv@divisor                   fnauto          0063
___awdiv@quotient                  fnauto          0067
___awdiv@sign                      fnauto          0069
___awmod                           text            381F
___awmod@counter                   fnauto          0068
___awmod@dividend                  fnauto          0065
___awmod@divisor                   fnauto          0063
___awmod@sign                      fnauto          0067
___end_of_c_program_code           text            3C9E
___lmul                            text            351F
___lmul@multiplicand               fnauto          006C
___lmul@multiplier                 fnauto          0068
___lmul@product                    fnauto          0070
___lwdiv                           text            39B9
___lwdiv@counter                   fnauto          006B
___lwdiv@dividend                  fnauto          0067
___lwdiv@divisor                   fnauto          0065
___lwdiv@quotient                  fnauto          0069
___lwmod                           text            3A1C
___lwmod@counter                   fnauto          0069
___lwmod@dividend                  fnauto          0067
___lwmod@divisor                   fnauto          0065
___start_of_c_program_code         text            3106
___wmul                            text            36CA
___wmul@multiplicand               fnauto          0068
___wmul@multiplier                 fnauto          006A
___wmul@product                    fnauto          006C
__end_of_Ack_I2c                   text            39B9
__end_of_BoardUART                 text            3B5C
__end_of_CRC8Check                 text            33CE
__end_of_ChangeToOD                text            3B28
__end_of_ChangeToRead              text            3B39
__end_of_FrameCheck                text            31FD
__end_of_IRcvBytes                 text            34E2
__end_of_ISendByte                 text            3945
__end_of_Init_IIC                  text            3472
__end_of_LED_Display               text            332F
__end_of_LeftRotate                text            351F
__end_of_Num2Char                  text            34F3
__end_of_RcvByte                   text            398D
__end_of_SendByte                  text            3AD2
__end_of_SensorUART                text            3C9E
__end_of_ShiftRegOutput            text            3C05
__end_of_ShowHumiTemp              text            3816
__end_of_ShowPMxx                  text            36CA
__end_of_Si7020CalcRH              text            3461
__end_of_Si7020CalcTemp            text            32CC
__end_of_Si7020Init                text            3207
__end_of_Si7020Read_RH_NHM         text            33A4
__end_of_Si7020Read_Temp_after_RHM text            3228
__end_of_Si7020SendCommand         text            381F
__end_of_Start_I2c                 text            3AF7
__end_of_Stop_I2c                  text            3B19
__end_of_Timer16ISR                text            3C23
__end_of_Timer8ISR                 text            3BB6
__end_of_UartPutConstStr           text            3740
__end_of_UartPutHexByte            text            3388
__end_of_UartPutHexWord            text            31B0
__end_of___awdiv                   text            3910
__end_of___awmod                   text            3892
__end_of___lmul                    text            3567
__end_of___lwdiv                   text            3A03
__end_of___lwmod                   text            3A58
__end_of___wmul                    text            36F6
__end_of_abs                       text            3A1C
__end_of_delay_us                  text            3B57
__end_of_main                      maintext        3E00
__stack_start__                    stackps         0300
_abs                               text            3A03
_ack                               bss0            004B
_bGetPowerSetting                  PD_startup      3F9D
_bTimer8_CaptureCounter            UserModules     2E61
_bTimer8_ReadCompareValue          UserModules     2E31
_bTimer8_ReadCounter               UserModules     2E34
_bTimer8_ReadTimer                 UserModules     2E61
_bTimer8_ReadTimerSaveCV           UserModules     2E34
_bUART_Board_ReadRxData            UserModules     2E9A
_bUART_Board_ReadRxStatus          UserModules     2E9D
_bUART_Board_ReadTxStatus          UserModules     2E97
_bUART_Sensor_ReadRxData           UserModules     2FEA
_bUART_Sensor_ReadRxStatus         UserModules     2FED
_bUART_Sensor_ReadTxStatus         UserModules     2FE7
_data_length                       nvram0          005A
_data_pm2_5                        bss0            003D
_delay_us                          text            3B39
_main                              maintext        3C9E
_one_sec_timer                     ramdata0        0054
_p                                 ramdata0        0055
_poly_h                            ramdata0        0056
_poly_l                            ramdata0        0057
_rh_sample_timer                   ramdata0        0058
_wTimer16_CaptureCounter           UserModules     2E13
_wTimer16_ReadCompareValue         UserModules     2DD5
_wTimer16_ReadCounter              UserModules     2DDB
_wTimer16_ReadTimer                UserModules     2E13
_wTimer16_ReadTimerSaveCV          UserModules     2DDB
abs@a                              fnauto          0063
bGetPowerSetting                   PD_startup      3F9D
bTimer8_CaptureCounter             UserModules     2E61
bTimer8_ReadCompareValue           UserModules     2E31
bTimer8_ReadCounter                UserModules     2E34
bTimer8_ReadTimer                  UserModules     2E61
bTimer8_ReadTimerSaveCV            UserModules     2E34
bUART_Board_ReadRxData             UserModules     2E9A
bUART_Board_ReadRxStatus           UserModules     2E9D
bUART_Board_ReadTxStatus           UserModules     2E97
bUART_Sensor_ReadRxData            UserModules     2FEA
bUART_Sensor_ReadRxStatus          UserModules     2FED
bUART_Sensor_ReadTxStatus          UserModules     2FE7
delay_us@us                        fnauto          0068
intlevel0                          romdata3        0003
intlevel1                          romdata3        0003
intlevel2                          romdata3        0003
main@ret                           fnauto          005B
reset_vec                          vectors         0000
start                              vectors         0000
startup                            init            3FA0
wTimer16_CaptureCounter            UserModules     2E13
wTimer16_ReadCompareValue          UserModules     2DD5
wTimer16_ReadCounter               UserModules     2DDB
wTimer16_ReadTimer                 UserModules     2E13
wTimer16_ReadTimerSaveCV           UserModules     2DDB
