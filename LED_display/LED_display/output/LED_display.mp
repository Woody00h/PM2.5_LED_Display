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
     _UART_Board_IntCntl size 0,0 offset 2
     _UART_Sensor_Start size 0,0 offset 2
     _UART_Sensor_IntCntl size 0,0 offset 2
     _Timer8_WritePeriod size 0,0 offset 2
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
*        _ShiftRegOutput size 0,3 offset 26
     _Timer16ISR size 0,0 offset 25
     _SensorUART size 0,3 offset 25
         _UART_Sensor_bReadRxData size 0,0 offset 28

Estimated maximum call depth: 2


                Name          Link     Load   Length Selector Space Scale
output\startup.obj
                vectors          0        0        3       0     0
                init          3F9D     3F9D       30    3F46     0
                SSCParmBl       F8       F8        8       0     1
                TOP              4        4       61       0     0
output\LED_display.obj
                ramdata0        53       53        5       0     1
                romdata0        65       65        5      65     0
                maintext      3C9F     3C9F      161    3C9F     0
                text          3182     3182      B1D    3182     0
                bss0             0        0       53       0     1
                nvram0          58       58        3       0     1
                cdata         3E00     3E00       1C      3E     0
                strings       3F00     3F00       46      3F     0
./obj/boot.obj  PD_startu     3F46     3F46       57    3F46     0
                TOP              4        4       61       0     0

lib/libpsoc.lib
lib/obj/psocconfig.obj
                psoc_conf     2BE0     2BE0       64    2BE0     0
lib/obj/psocconfigtbl.obj
                lit           2C44     2C44      132    2C44     0
                psoc_conf     3E1C     3E1C       A5      3E     0
lib/obj/sar10.obj
                UserModul     2D76     2D76       BE    2D76     0
lib/obj/sar10int.obj
                UserModul     2E34     2E34        1    2D76     0
lib/obj/timer16.obj
                UserModul     2E35     2E35       62    2D76     0
lib/obj/timer8.obj
                UserModul     2E97     2E97       4B    2D76     0
lib/obj/uart_board.obj
                UserModul     2EE2     2EE2      14E    2D76     0
lib/obj/uart_boardint.obj
                UserModul     3030     3030        2    2D76     0
lib/obj/uart_sensor.obj
                UserModul     3032     3032      14E    2D76     0
lib/obj/uart_sensorint.obj
                UserModul     3180     3180        2    2D76     0

D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib

COMMON          fnauto          5B       5B       1D       0     1

TOTAL           Name          Link     Load   Length  Space
        CLASS   CODE           
                vectors          0        0        3     0
                maintext      3C9F     3C9F      161     0
                text          3182     3182      B1D     0
                PD_startu     3F46     3F46       57     0
                init          3F9D     3F9D       30     0

        CLASS   BANKROM        
                romdata0        65       65        5     0

        CLASS   ROM            
                cdata         3E00     3E00       1C     0
                strings       3F00     3F00       46     0
                UserModul     2D76     2D76      40C     0
                TOP              4        4       61     0
                psoc_conf     2BE0     2BE0       64     0
                lit           2C44     2C44      132     0
                psoc_conf     3E1C     3E1C       A5     0

        CLASS   RAM            
                ramdata0        53       53        5     1
                fnauto          5B       5B       1D     1
                SSCParmBl       F8       F8        8     1
                bss0             0        0       53     1
                nvram0          58       58        3     1



SEGMENTS        Name           Load    Length   Top     Selector    Space Class

                bss0            000000  000078  000078         0       1  RAM     
                vectors         000000  000003  000003         0       0  CODE    
                romdata0        000065  000005  00006A        65       0  BANKROM 
                psoc_config     002BE0  000064  002C44      2BE0       0  ROM     
                lit             002C44  000132  002D76      2C44       0  ROM     
                UserModules     002D76  00040C  003182      2D76       0  CODE    
                text            003182  000B1D  003C9F      3182       0  CODE    
                maintext        003C9F  000161  003E00      3C9F       0  CODE    
                cdata           003E00  0000C1  003EC1        3E       0  ROM     
                strings         003F00  000046  003F46        3F       0  ROM     
                PD_startup      003F46  000087  003FCD      3F46       0  CODE    


UNUSED ADDRESS RANGES

        BANKROM          0003-0003
                         006A-2BDF
                         3EC1-3EFF
                         3FCD-3FFF
        CODE             0003-0003
                         006A-2BDF
                         3EC1-3EFF
                         3FCD-3FFF
        RAM              0078-00F7
                         0100-03FF
        ROM              0003-0003
                         006A-2BDF
                         3EC1-3EFF
                         3FCD-3FFF

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
LoadConfigInit                     psoc_config     2BE0
LoadConfigTBL_led_display_Bank0    lit             2C44
LoadConfigTBL_led_display_Bank1    lit             2CDB
LoadConfigTBL_led_display_Ordered  psoc_config     3E1C
LoadConfig_led_display             psoc_config     2BE7
NO_SHADOW                          InterruptRAM    0078
Num2Char@num                       fnauto          0065
RcvByte@BitCnt                     fnauto          0066
RcvByte@retc                       fnauto          0065
SAR10_DisableInt                   UserModules     2D7A
SAR10_EnableAutoTrigger            UserModules     2DEC
SAR10_EnableInt                    UserModules     2D76
SAR10_SetADCChannel                UserModules     2DBC
SAR10_SetClk                       UserModules     2E04
SAR10_SetRunMode                   UserModules     2E1C
SAR10_SetTriggerSrc                UserModules     2DD4
SAR10_Start                        UserModules     2D7E
SAR10_Stop                         UserModules     2D86
SAR10_Trigger                      UserModules     2D8E
SAR10_bGetData                     UserModules     2DB9
SAR10_fIsDataAvailable             UserModules     2D96
SAR10_iGetData                     UserModules     2D9F
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
Timer16_DisableInt                 UserModules     2E39
Timer16_EnableInt                  UserModules     2E35
Timer16_Start                      UserModules     2E3D
Timer16_Stop                       UserModules     2E41
Timer16_WriteCompareValue          UserModules     2E4B
Timer16_WritePeriod                UserModules     2E45
Timer16_wReadCompareValue          UserModules     2E51
Timer16_wReadTimer                 UserModules     2E8F
Timer16_wReadTimerSaveCV           UserModules     2E57
Timer8_DisableInt                  UserModules     2E9B
Timer8_EnableInt                   UserModules     2E97
Timer8_Start                       UserModules     2E9F
Timer8_Stop                        UserModules     2EA3
Timer8_WriteCompareValue           UserModules     2EAA
Timer8_WritePeriod                 UserModules     2EA7
Timer8_bReadCompareValue           UserModules     2EAD
Timer8_bReadTimer                  UserModules     2EDD
Timer8_bReadTimerSaveCV            UserModules     2EB0
UART_Board_CPutString              UserModules     3015
UART_Board_CWrite                  UserModules     2FE7
UART_Board_DisableInt              UserModules     2EE9
UART_Board_EnableInt               UserModules     2EE2
UART_Board_IntCntl                 UserModules     2F2F
UART_Board_PutCRLF                 UserModules     3027
UART_Board_PutChar                 UserModules     2F74
UART_Board_PutSHexByte             UserModules     2F5A
UART_Board_PutSHexInt              UserModules     2F6D
UART_Board_PutString               UserModules     2FB1
UART_Board_SendData                UserModules     2F10
UART_Board_SetTxIntMode            UserModules     2EF0
UART_Board_Start                   UserModules     2F02
UART_Board_Stop                    UserModules     2F09
UART_Board_TxIntMode               UserModules     2F1C
UART_Board_Write                   UserModules     2FC1
UART_Board_bReadRxData             UserModules     2F16
UART_Board_bReadRxStatus           UserModules     2F19
UART_Board_bReadTxStatus           UserModules     2F13
UART_Board_cGetChar                UserModules     2F7C
UART_Board_cReadChar               UserModules     2F84
UART_Board_iReadChar               UserModules     2F9B
UART_Sensor_CPutString             UserModules     3165
UART_Sensor_CWrite                 UserModules     3137
UART_Sensor_DisableInt             UserModules     3039
UART_Sensor_EnableInt              UserModules     3032
UART_Sensor_IntCntl                UserModules     307F
UART_Sensor_PutCRLF                UserModules     3177
UART_Sensor_PutChar                UserModules     30C4
UART_Sensor_PutSHexByte            UserModules     30AA
UART_Sensor_PutSHexInt             UserModules     30BD
UART_Sensor_PutString              UserModules     3101
UART_Sensor_SendData               UserModules     3060
UART_Sensor_SetTxIntMode           UserModules     3040
UART_Sensor_Start                  UserModules     3052
UART_Sensor_Stop                   UserModules     3059
UART_Sensor_TxIntMode              UserModules     306C
UART_Sensor_Write                  UserModules     3111
UART_Sensor_bReadRxData            UserModules     3066
UART_Sensor_bReadRxStatus          UserModules     3069
UART_Sensor_bReadTxStatus          UserModules     3063
UART_Sensor_cGetChar               UserModules     30CC
UART_Sensor_cReadChar              UserModules     30D4
UART_Sensor_iReadChar              UserModules     30EB
UartPutConstStr@k                  fnauto          005F
UartPutConstStr@str                fnauto          005D
UartPutHexByte@ch                  fnauto          005F
UartPutHexByte@data                fnauto          005D
UartPutHexByte@temp                fnauto          005E
UartPutHexWord@ch                  fnauto          0062
UartPutHexWord@data                fnauto          005D
UartPutHexWord@temp                fnauto          0061
UartPutHexWord@value               fnauto          005F
_Ack_I2c                           text            399E
_BoardUART                         text            3B68
_CRC8Check                         text            3414
_ChangeToOD                        text            3B2A
_ChangeToRead                      text            3B39
_DataPtr                           bss0            003F
_DeadZone                          bss0            0040
_DigitArray                        cdata           3E00
_DisBit                            cdata           3E14
_DisPlayIndex                      bss0            0041
_DisplayBuf                        bss0            0050
_DisplayContent                    bss0            0028
_DisplayExchangeTimer              bss0            0042
_DisplayItem                       bss0            0043
_DisplayNum                        bss0            0038
_FrameCheck                        text            322C
_HeadFlag                          bss0            0044
_Humidity                          bss0            0045
_IICTimeOutTimer                   bss0            0046
_IRcvBytes                         text            34E2
_ISendByte                         text            3921
_IndexEnd                          nvram0          0058
_IndexStart                        nvram0          0059
_Init_IIC                          text            34D1
_LED_Display                       text            3348
_LeftRotate                        text            3563
_LeftRotate$3374                   fnauto          005E
_LoadConfigInit                    psoc_config     2BE0
_LoadConfig_led_display            psoc_config     2BE7
_MyPMSUnion                        bss0            0000
_NO_SHADOW                         InterruptRAM    0078
_Num2Char                          text            3552
_PMSFrameFlag                      bss0            0047
_RHSampleStep                      bss0            0048
_RcvByte                           text            3956
_RecBuf                            bss0            004B
_SAR10_DisableInt                  UserModules     2D7A
_SAR10_EnableAutoTrigger           UserModules     2DEC
_SAR10_EnableInt                   UserModules     2D76
_SAR10_ISR                         UserModules     2E34
_SAR10_SetADCChannel               UserModules     2DBC
_SAR10_SetClk                      UserModules     2E04
_SAR10_SetRunMode                  UserModules     2E1C
_SAR10_SetTriggerSrc               UserModules     2DD4
_SAR10_Start                       UserModules     2D7E
_SAR10_Stop                        UserModules     2D86
_SAR10_Trigger                     UserModules     2D8E
_SAR10_bGetData                    UserModules     2DB9
_SAR10_fIsDataAvailable            UserModules     2D96
_SAR10_iGetData                    UserModules     2D9F
_SendByte                          text            3A69
_SensorUART                        text            3C24
_ShiftRegOutput                    text            3BB7
_ShowHumiTemp                      text            3785
_ShowPMxx                          text            35D7
_Si7020CalcRH                      text            343E
_Si7020CalcTemp                    text            32A4
_Si7020Data                        bss0            003B
_Si7020Init                        text            3279
_Si7020Read_RH_NHM                 text            33F8
_Si7020Read_Temp_after_RHM         text            3283
_Si7020SendCommand                 text            3827
_Start_I2c                         text            3AE3
_Stop_I2c                          text            3B08
_Temperature                       bss0            0049
_Timer16ISR                        text            3C06
_Timer16_DisableInt                UserModules     2E39
_Timer16_EnableInt                 UserModules     2E35
_Timer16_Start                     UserModules     2E3D
_Timer16_Stop                      UserModules     2E41
_Timer16_WriteCompareValue         UserModules     2E4B
_Timer16_WritePeriod               UserModules     2E45
_Timer16_wReadCompareValue         UserModules     2E51
_Timer16_wReadTimer                UserModules     2E8F
_Timer16_wReadTimerSaveCV          UserModules     2E57
_Timer8ISR                         text            3B6D
_Timer8_DisableInt                 UserModules     2E9B
_Timer8_EnableInt                  UserModules     2E97
_Timer8_Start                      UserModules     2E9F
_Timer8_Stop                       UserModules     2EA3
_Timer8_WriteCompareValue          UserModules     2EAA
_Timer8_WritePeriod                UserModules     2EA7
_Timer8_bReadCompareValue          UserModules     2EAD
_Timer8_bReadTimer                 UserModules     2EDD
_Timer8_bReadTimerSaveCV           UserModules     2EB0
_UART_Board_CPutString             UserModules     3015
_UART_Board_CWrite                 UserModules     2FE7
_UART_Board_DisableInt             UserModules     2EE9
_UART_Board_EnableInt              UserModules     2EE2
_UART_Board_IntCntl                UserModules     2F2F
_UART_Board_PutCRLF                UserModules     3027
_UART_Board_PutChar                UserModules     2F74
_UART_Board_PutSHexByte            UserModules     2F5A
_UART_Board_PutSHexInt             UserModules     2F6D
_UART_Board_PutString              UserModules     2FB1
_UART_Board_RX_ISR                 UserModules     3031
_UART_Board_SendData               UserModules     2F10
_UART_Board_SetTxIntMode           UserModules     2EF0
_UART_Board_Start                  UserModules     2F02
_UART_Board_Stop                   UserModules     2F09
_UART_Board_TX_ISR                 UserModules     3030
_UART_Board_TxIntMode              UserModules     2F1C
_UART_Board_Write                  UserModules     2FC1
_UART_Board_bReadRxData            UserModules     2F16
_UART_Board_bReadRxStatus          UserModules     2F19
_UART_Board_bReadTxStatus          UserModules     2F13
_UART_Board_cGetChar               UserModules     2F7C
_UART_Board_cReadChar              UserModules     2F84
_UART_Board_iReadChar              UserModules     2F9B
_UART_Sensor_CPutString            UserModules     3165
_UART_Sensor_CWrite                UserModules     3137
_UART_Sensor_DisableInt            UserModules     3039
_UART_Sensor_EnableInt             UserModules     3032
_UART_Sensor_IntCntl               UserModules     307F
_UART_Sensor_PutCRLF               UserModules     3177
_UART_Sensor_PutChar               UserModules     30C4
_UART_Sensor_PutSHexByte           UserModules     30AA
_UART_Sensor_PutSHexInt            UserModules     30BD
_UART_Sensor_PutString             UserModules     3101
_UART_Sensor_RX_ISR                UserModules     3181
_UART_Sensor_SendData              UserModules     3060
_UART_Sensor_SetTxIntMode          UserModules     3040
_UART_Sensor_Start                 UserModules     3052
_UART_Sensor_Stop                  UserModules     3059
_UART_Sensor_TX_ISR                UserModules     3180
_UART_Sensor_TxIntMode             UserModules     306C
_UART_Sensor_Write                 UserModules     3111
_UART_Sensor_bReadRxData           UserModules     3066
_UART_Sensor_bReadRxStatus         UserModules     3069
_UART_Sensor_bReadTxStatus         UserModules     3063
_UART_Sensor_cGetChar              UserModules     30CC
_UART_Sensor_cReadChar             UserModules     30D4
_UART_Sensor_iReadChar             UserModules     30EB
_UartPutConstStr                   text            373B
_UartPutHexByte                    text            339F
_UartPutHexWord                    text            3182
__Bnvbit0                          nvbit0          005B
__Bnvbit1                          nvbit1          0100
__Bnvbit2                          nvbit2          0200
__Bnvbit3                          nvbit3          0300
__Brbit0                           rbit0           0053
__Brbit1                           rbit1           0100
__Brbit2                           rbit2           0200
__Brbit3                           rbit3           0300
__Bstackps                         stackps         0300
__HInterruptRAM                    InterruptRAM    0300
__HPD_startup                      PD_startup      3F9D
__HSSCParmBlk                      SSCParmBlk      0100
__HTOP                             TOP             0065
__HUserModules                     UserModules     3182
__Hbss                             bss             0300
__Hbss0                            bss0            0053
__Hbss1                            bss1            0100
__Hbss2                            bss2            0200
__Hbss3                            bss3            0300
__Hcdata                           cdata           3E1C
__Hend_init                        end_init        0003
__Hfnauto                          fnauto          0078
__Hinit                            init            3FCD
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
__Hramdata0                        ramdata0        0058
__Hramdata1                        ramdata1        0100
__Hramdata2                        ramdata2        0200
__Hramdata3                        ramdata3        0300
__Hrbit0                           rbit0           0298
__Hrbit1                           rbit1           0800
__Hrbit2                           rbit2           1000
__Hrbit3                           rbit3           1800
__Hromdata0                        romdata0        006A
__Hromdata1                        romdata1        0003
__Hromdata2                        romdata2        0003
__Hromdata3                        romdata3        0003
__Hstackps                         stackps         0300
__Hstrings                         strings         3F46
__Htext                            text            3C9F
__Hvectors                         vectors         0003
__LInterruptRAM                    InterruptRAM    0300
__LPD_startup                      PD_startup      3F46
__LSSCParmBlk                      SSCParmBlk      0000
__LTOP                             TOP             0000
__LUserModules                     UserModules     2D76
__Lbss                             bss             0300
__Lbss0                            bss0            0000
__Lbss1                            bss1            0100
__Lbss2                            bss2            0200
__Lbss3                            bss3            0300
__Lcdata                           cdata           3E00
__Lend_init                        end_init        0003
__Lfnauto                          fnauto          005B
__Linit                            init            3F9D
__Lintrtext                        intrtext        0003
__Lled_display_RAM                 led_display_RAM 0300
__Llit                             lit             0300
__Lmaintext                        maintext        3C9F
__Lnvbit0                          nvbit0          02D8
__Lnvbit1                          nvbit1          0800
__Lnvbit2                          nvbit2          1000
__Lnvbit3                          nvbit3          1800
__Lnvram0                          nvram0          0058
__Lnvram1                          nvram1          0100
__Lnvram2                          nvram2          0200
__Lnvram3                          nvram3          0300
__Lpowerup                         powerup         0003
__Lpsoc_config                     psoc_config     0300
__Lramdata0                        ramdata0        0053
__Lramdata1                        ramdata1        0100
__Lramdata2                        ramdata2        0200
__Lramdata3                        ramdata3        0300
__Lrbit0                           rbit0           0298
__Lrbit1                           rbit1           0800
__Lrbit2                           rbit2           1000
__Lrbit3                           rbit3           1800
__Lromdata0                        romdata0        0065
__Lromdata1                        romdata1        0003
__Lromdata2                        romdata2        0003
__Lromdata3                        romdata3        0003
__Lstackps                         stackps         0300
__Lstrings                         strings         3F00
__Ltext                            text            3182
__Lvectors                         vectors         0000
__S0                               (abs)           3FCD
__S1                               (abs)           0078
__Start                            PD_startup      3F46
___awdiv                           text            38A3
___awdiv@counter                   fnauto          006A
___awdiv@dividend                  fnauto          0065
___awdiv@divisor                   fnauto          0063
___awdiv@quotient                  fnauto          0067
___awdiv@sign                      fnauto          0069
___awmod                           text            3830
___awmod@counter                   fnauto          0068
___awmod@dividend                  fnauto          0065
___awmod@divisor                   fnauto          0063
___awmod@sign                      fnauto          0067
___end_of_c_program_code           text            3C9F
___lmul                            text            358F
___lmul@multiplicand               fnauto          006C
___lmul@multiplier                 fnauto          0068
___lmul@product                    fnauto          0070
___lwdiv                           text            39CA
___lwdiv@counter                   fnauto          006B
___lwdiv@dividend                  fnauto          0067
___lwdiv@divisor                   fnauto          0065
___lwdiv@quotient                  fnauto          0069
___lwmod                           text            3A2D
___lwmod@counter                   fnauto          0069
___lwmod@dividend                  fnauto          0067
___lwmod@divisor                   fnauto          0065
___start_of_c_program_code         text            3182
___wmul                            text            370F
___wmul@multiplicand               fnauto          0068
___wmul@multiplier                 fnauto          006A
___wmul@product                    fnauto          006C
__end_of_Ack_I2c                   text            39CA
__end_of_BoardUART                 text            3B6D
__end_of_CRC8Check                 text            343E
__end_of_ChangeToOD                text            3B39
__end_of_ChangeToRead              text            3B4A
__end_of_FrameCheck                text            3279
__end_of_IRcvBytes                 text            3552
__end_of_ISendByte                 text            3956
__end_of_Init_IIC                  text            34E2
__end_of_LED_Display               text            339F
__end_of_LeftRotate                text            358F
__end_of_Num2Char                  text            3563
__end_of_RcvByte                   text            399E
__end_of_SendByte                  text            3AE3
__end_of_SensorUART                text            3C9F
__end_of_ShiftRegOutput            text            3C06
__end_of_ShowHumiTemp              text            3827
__end_of_ShowPMxx                  text            370F
__end_of_Si7020CalcRH              text            34D1
__end_of_Si7020CalcTemp            text            3348
__end_of_Si7020Init                text            3283
__end_of_Si7020Read_RH_NHM         text            3414
__end_of_Si7020Read_Temp_after_RHM text            32A4
__end_of_Si7020SendCommand         text            3830
__end_of_Start_I2c                 text            3B08
__end_of_Stop_I2c                  text            3B2A
__end_of_Timer16ISR                text            3C24
__end_of_Timer8ISR                 text            3BB7
__end_of_UartPutConstStr           text            3785
__end_of_UartPutHexByte            text            33F8
__end_of_UartPutHexWord            text            322C
__end_of___awdiv                   text            3921
__end_of___awmod                   text            38A3
__end_of___lmul                    text            35D7
__end_of___lwdiv                   text            3A14
__end_of___lwmod                   text            3A69
__end_of___wmul                    text            373B
__end_of_abs                       text            3A2D
__end_of_delay_us                  text            3B68
__end_of_main                      maintext        3E00
__stack_start__                    stackps         0300
_abs                               text            3A14
_ack                               bss0            004A
_bGetPowerSetting                  PD_startup      3F9A
_bTimer8_CaptureCounter            UserModules     2EDD
_bTimer8_ReadCompareValue          UserModules     2EAD
_bTimer8_ReadCounter               UserModules     2EB0
_bTimer8_ReadTimer                 UserModules     2EDD
_bTimer8_ReadTimerSaveCV           UserModules     2EB0
_bUART_Board_ReadRxData            UserModules     2F16
_bUART_Board_ReadRxStatus          UserModules     2F19
_bUART_Board_ReadTxStatus          UserModules     2F13
_bUART_Sensor_ReadRxData           UserModules     3066
_bUART_Sensor_ReadRxStatus         UserModules     3069
_bUART_Sensor_ReadTxStatus         UserModules     3063
_data_length                       nvram0          005A
_data_pm2_5                        bss0            003D
_delay_us                          text            3B4A
_main                              maintext        3C9F
_one_sec_timer                     ramdata0        0053
_p                                 ramdata0        0054
_poly_h                            ramdata0        0055
_poly_l                            ramdata0        0056
_rh_sample_timer                   ramdata0        0057
_wTimer16_CaptureCounter           UserModules     2E8F
_wTimer16_ReadCompareValue         UserModules     2E51
_wTimer16_ReadCounter              UserModules     2E57
_wTimer16_ReadTimer                UserModules     2E8F
_wTimer16_ReadTimerSaveCV          UserModules     2E57
abs@a                              fnauto          0063
bGetPowerSetting                   PD_startup      3F9A
bTimer8_CaptureCounter             UserModules     2EDD
bTimer8_ReadCompareValue           UserModules     2EAD
bTimer8_ReadCounter                UserModules     2EB0
bTimer8_ReadTimer                  UserModules     2EDD
bTimer8_ReadTimerSaveCV            UserModules     2EB0
bUART_Board_ReadRxData             UserModules     2F16
bUART_Board_ReadRxStatus           UserModules     2F19
bUART_Board_ReadTxStatus           UserModules     2F13
bUART_Sensor_ReadRxData            UserModules     3066
bUART_Sensor_ReadRxStatus          UserModules     3069
bUART_Sensor_ReadTxStatus          UserModules     3063
delay_us@us                        fnauto          0068
intlevel0                          romdata3        0003
intlevel1                          romdata3        0003
intlevel2                          romdata3        0003
main@ret                           fnauto          005B
reset_vec                          vectors         0000
start                              vectors         0000
startup                            init            3F9D
wTimer16_CaptureCounter            UserModules     2E8F
wTimer16_ReadCompareValue          UserModules     2E51
wTimer16_ReadCounter               UserModules     2E57
wTimer16_ReadTimer                 UserModules     2E8F
wTimer16_ReadTimerSaveCV           UserModules     2E57
