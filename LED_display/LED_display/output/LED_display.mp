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
     _Si7020CalcRH size 0,7 offset 2
         ___lmul size 8,4 offset 13
     _UartPutHexByte size 0,3 offset 2
         _Num2Char size 0,1 offset 10
         _UART_Board_bReadTxStatus size 0,0 offset 10
         _UART_Board_SendData size 0,0 offset 10
     _Si7020ClearBuf size 0,1 offset 2
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
                init          3F8F     3F8F       30    3F38     0
                SSCParmBl       F8       F8        8       0     1
                TOP              4        4       61       0     0
output\LED_display.obj
                ramdata0        53       53        3       0     1
                romdata0        65       65        3      65     0
                maintext      3C9A     3C9A      166    3C9A     0
                text          31CE     31CE      ACC    31CE     0
                bss0             0        0       53       0     1
                nvram0          56       56        2       0     1
                cdata         3E00     3E00       1C      3E     0
                strings       3F00     3F00       38      3F     0
./obj/boot.obj  PD_startu     3F38     3F38       57    3F38     0
                TOP              4        4       61       0     0

lib/libpsoc.lib
lib/obj/psocconfig.obj
                psoc_conf     2C2C     2C2C       64    2C2C     0
lib/obj/psocconfigtbl.obj
                lit           2C90     2C90      132    2C90     0
                psoc_conf     3E1C     3E1C       A5      3E     0
lib/obj/sar10.obj
                UserModul     2DC2     2DC2       BE    2DC2     0
lib/obj/sar10int.obj
                UserModul     2E80     2E80        1    2DC2     0
lib/obj/timer16.obj
                UserModul     2E81     2E81       62    2DC2     0
lib/obj/timer8.obj
                UserModul     2EE3     2EE3       4B    2DC2     0
lib/obj/uart_board.obj
                UserModul     2F2E     2F2E      14E    2DC2     0
lib/obj/uart_boardint.obj
                UserModul     307C     307C        2    2DC2     0
lib/obj/uart_sensor.obj
                UserModul     307E     307E      14E    2DC2     0
lib/obj/uart_sensorint.obj
                UserModul     31CC     31CC        2    2DC2     0

D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib

COMMON          fnauto          58       58       1D       0     1

TOTAL           Name          Link     Load   Length  Space
        CLASS   CODE           
                vectors          0        0        3     0
                maintext      3C9A     3C9A      166     0
                text          31CE     31CE      ACC     0
                PD_startu     3F38     3F38       57     0
                init          3F8F     3F8F       30     0

        CLASS   BANKROM        
                romdata0        65       65        3     0

        CLASS   ROM            
                cdata         3E00     3E00       1C     0
                strings       3F00     3F00       38     0
                UserModul     2DC2     2DC2      40C     0
                TOP              4        4       61     0
                psoc_conf     2C2C     2C2C       64     0
                lit           2C90     2C90      132     0
                psoc_conf     3E1C     3E1C       A5     0

        CLASS   RAM            
                ramdata0        53       53        3     1
                fnauto          58       58       1D     1
                SSCParmBl       F8       F8        8     1
                bss0             0        0       53     1
                nvram0          56       56        2     1



SEGMENTS        Name           Load    Length   Top     Selector    Space Class

                bss0            000000  000075  000075         0       1  RAM     
                vectors         000000  000003  000003         0       0  CODE    
                romdata0        000065  000003  000068        65       0  BANKROM 
                psoc_config     002C2C  000064  002C90      2C2C       0  ROM     
                lit             002C90  000132  002DC2      2C90       0  ROM     
                UserModules     002DC2  00040C  0031CE      2DC2       0  CODE    
                text            0031CE  000ACC  003C9A      31CE       0  CODE    
                maintext        003C9A  000166  003E00      3C9A       0  CODE    
                cdata           003E00  0000C1  003EC1        3E       0  ROM     
                strings         003F00  000038  003F38        3F       0  ROM     
                PD_startup      003F38  000087  003FBF      3F38       0  CODE    


UNUSED ADDRESS RANGES

        BANKROM          0003-0003
                         0068-2C2B
                         3EC1-3EFF
                         3FBF-3FFF
        CODE             0003-0003
                         0068-2C2B
                         3EC1-3EFF
                         3FBF-3FFF
        RAM              0075-00F7
                         0100-03FF
        ROM              0003-0003
                         0068-2C2B
                         3EC1-3EFF
                         3FBF-3FFF

                                  Symbol Table

??_Ack_I2c                         fnauto          0062
??_FrameCheck                      fnauto          005A
??_IRcvBytes                       fnauto          005D
??_ISendByte                       fnauto          005D
??_Num2Char                        fnauto          0062
??_RcvByte                         fnauto          0062
??_SendByte                        fnauto          0062
??_SensorUART                      fnauto          0071
??_ShiftRegOutput                  fnauto          0072
??_ShowHumiTemp                    fnauto          005A
??_ShowPMxx                        fnauto          005A
??_Si7020CalcRH                    fnauto          005A
??_Si7020CalcTemp                  fnauto          005A
??_Si7020ClearBuf                  fnauto          005A
??_Si7020Read_RH_NHM               fnauto          005A
??_Si7020Read_Temp_after_RHM       fnauto          005A
??_Si7020SendCommand               fnauto          005C
??_UartPutConstStr                 fnauto          005A
??_UartPutHexByte                  fnauto          005A
??_UartPutHexWord                  fnauto          005A
??___awdiv                         fnauto          0062
??___awmod                         fnauto          0062
??___lmul                          fnauto          006D
??___lwdiv                         fnauto          0064
??___lwmod                         fnauto          0064
??___wmul                          fnauto          0067
??_abs                             fnauto          0060
??_delay_us                        fnauto          0065
??_main                            fnauto          0058
?_IRcvBytes                        fnauto          005C
?___awdiv                          fnauto          0060
?___awmod                          fnauto          0060
?___lmul                           fnauto          0065
?___lwdiv                          fnauto          0062
?___lwmod                          fnauto          0062
?___wmul                           fnauto          0065
Ack_I2c@a                          fnauto          0062
FrameCheck@checksum                fnauto          005A
FrameCheck@i                       fnauto          005C
IRcvBytes@i                        fnauto          005F
IRcvBytes@no                       fnauto          005C
IRcvBytes@s                        fnauto          005D
IRcvBytes@sla                      fnauto          005E
ISendByte@c                        fnauto          005D
ISendByte@sla                      fnauto          005E
LoadConfigInit                     psoc_config     2C2C
LoadConfigTBL_led_display_Bank0    lit             2C90
LoadConfigTBL_led_display_Bank1    lit             2D27
LoadConfigTBL_led_display_Ordered  psoc_config     3E1C
LoadConfig_led_display             psoc_config     2C33
NO_SHADOW                          InterruptRAM    0075
Num2Char@num                       fnauto          0062
RcvByte@BitCnt                     fnauto          0063
RcvByte@retc                       fnauto          0062
SAR10_DisableInt                   UserModules     2DC6
SAR10_EnableAutoTrigger            UserModules     2E38
SAR10_EnableInt                    UserModules     2DC2
SAR10_SetADCChannel                UserModules     2E08
SAR10_SetClk                       UserModules     2E50
SAR10_SetRunMode                   UserModules     2E68
SAR10_SetTriggerSrc                UserModules     2E20
SAR10_Start                        UserModules     2DCA
SAR10_Stop                         UserModules     2DD2
SAR10_Trigger                      UserModules     2DDA
SAR10_bGetData                     UserModules     2E05
SAR10_fIsDataAvailable             UserModules     2DE2
SAR10_iGetData                     UserModules     2DEB
SendByte@BitCnt                    fnauto          0063
SendByte@c                         fnauto          0062
SensorUART@rxdata                  fnauto          0071
ShiftRegOutput@i                   fnauto          0074
ShiftRegOutput@k                   fnauto          0073
ShiftRegOutput@temp_data           fnauto          0072
ShowHumiTemp@index                 fnauto          005C
ShowHumiTemp@temp                  fnauto          005B
ShowHumiTemp@value                 fnauto          005A
ShowPMxx@index                     fnauto          005E
ShowPMxx@k                         fnauto          0060
ShowPMxx@pm                        fnauto          005A
ShowPMxx@temp                      fnauto          005C
Si7020CalcRH@data                  fnauto          005A
Si7020CalcRH@result                fnauto          0060
Si7020CalcRH@temp                  fnauto          005C
Si7020CalcTemp@data                fnauto          005A
Si7020CalcTemp@result              fnauto          0060
Si7020CalcTemp@temp                fnauto          005C
Si7020ClearBuf@k                   fnauto          005A
Si7020Read_RH_NHM@buffer           fnauto          005A
Si7020Read_RH_NHM@ret              fnauto          005B
Si7020Read_Temp_after_RHM@buffer   fnauto          005A
Si7020Read_Temp_after_RHM@ret      fnauto          005B
Si7020SendCommand@cmd              fnauto          005C
Timer16_DisableInt                 UserModules     2E85
Timer16_EnableInt                  UserModules     2E81
Timer16_Start                      UserModules     2E89
Timer16_Stop                       UserModules     2E8D
Timer16_WriteCompareValue          UserModules     2E97
Timer16_WritePeriod                UserModules     2E91
Timer16_wReadCompareValue          UserModules     2E9D
Timer16_wReadTimer                 UserModules     2EDB
Timer16_wReadTimerSaveCV           UserModules     2EA3
Timer8_DisableInt                  UserModules     2EE7
Timer8_EnableInt                   UserModules     2EE3
Timer8_Start                       UserModules     2EEB
Timer8_Stop                        UserModules     2EEF
Timer8_WriteCompareValue           UserModules     2EF6
Timer8_WritePeriod                 UserModules     2EF3
Timer8_bReadCompareValue           UserModules     2EF9
Timer8_bReadTimer                  UserModules     2F29
Timer8_bReadTimerSaveCV            UserModules     2EFC
UART_Board_CPutString              UserModules     3061
UART_Board_CWrite                  UserModules     3033
UART_Board_DisableInt              UserModules     2F35
UART_Board_EnableInt               UserModules     2F2E
UART_Board_IntCntl                 UserModules     2F7B
UART_Board_PutCRLF                 UserModules     3073
UART_Board_PutChar                 UserModules     2FC0
UART_Board_PutSHexByte             UserModules     2FA6
UART_Board_PutSHexInt              UserModules     2FB9
UART_Board_PutString               UserModules     2FFD
UART_Board_SendData                UserModules     2F5C
UART_Board_SetTxIntMode            UserModules     2F3C
UART_Board_Start                   UserModules     2F4E
UART_Board_Stop                    UserModules     2F55
UART_Board_TxIntMode               UserModules     2F68
UART_Board_Write                   UserModules     300D
UART_Board_bReadRxData             UserModules     2F62
UART_Board_bReadRxStatus           UserModules     2F65
UART_Board_bReadTxStatus           UserModules     2F5F
UART_Board_cGetChar                UserModules     2FC8
UART_Board_cReadChar               UserModules     2FD0
UART_Board_iReadChar               UserModules     2FE7
UART_Sensor_CPutString             UserModules     31B1
UART_Sensor_CWrite                 UserModules     3183
UART_Sensor_DisableInt             UserModules     3085
UART_Sensor_EnableInt              UserModules     307E
UART_Sensor_IntCntl                UserModules     30CB
UART_Sensor_PutCRLF                UserModules     31C3
UART_Sensor_PutChar                UserModules     3110
UART_Sensor_PutSHexByte            UserModules     30F6
UART_Sensor_PutSHexInt             UserModules     3109
UART_Sensor_PutString              UserModules     314D
UART_Sensor_SendData               UserModules     30AC
UART_Sensor_SetTxIntMode           UserModules     308C
UART_Sensor_Start                  UserModules     309E
UART_Sensor_Stop                   UserModules     30A5
UART_Sensor_TxIntMode              UserModules     30B8
UART_Sensor_Write                  UserModules     315D
UART_Sensor_bReadRxData            UserModules     30B2
UART_Sensor_bReadRxStatus          UserModules     30B5
UART_Sensor_bReadTxStatus          UserModules     30AF
UART_Sensor_cGetChar               UserModules     3118
UART_Sensor_cReadChar              UserModules     3120
UART_Sensor_iReadChar              UserModules     3137
UartPutConstStr@k                  fnauto          005C
UartPutConstStr@str                fnauto          005A
UartPutHexByte@ch                  fnauto          005C
UartPutHexByte@data                fnauto          005A
UartPutHexByte@temp                fnauto          005B
UartPutHexWord@ch                  fnauto          005F
UartPutHexWord@data                fnauto          005A
UartPutHexWord@temp                fnauto          005E
UartPutHexWord@value               fnauto          005C
_Ack_I2c                           text            382B
_BoardUART                         text            3B63
_ChangeToOD                        text            3B25
_ChangeToRead                      text            3B34
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
_FrameCheck                        text            3278
_HeadFlag                          bss0            0044
_Humidity                          bss0            0045
_IICTimeOutTimer                   bss0            0046
_IRcvBytes                         text            3509
_ISendByte                         text            3857
_IndexEnd                          nvram0          0056
_IndexStart                        nvram0          0057
_Init_IIC                          text            34F8
_LED_Display                       text            338A
_LoadConfigInit                    psoc_config     2C2C
_LoadConfig_led_display            psoc_config     2C33
_MyPMSUnion                        bss0            0000
_NO_SHADOW                         InterruptRAM    0075
_Num2Char                          text            366C
_PMSFrameFlag                      bss0            0047
_RHSampleStep                      bss0            0048
_RcvByte                           text            39C7
_RecBuf                            bss0            004B
_SAR10_DisableInt                  UserModules     2DC6
_SAR10_EnableAutoTrigger           UserModules     2E38
_SAR10_EnableInt                   UserModules     2DC2
_SAR10_ISR                         UserModules     2E80
_SAR10_SetADCChannel               UserModules     2E08
_SAR10_SetClk                      UserModules     2E50
_SAR10_SetRunMode                  UserModules     2E68
_SAR10_SetTriggerSrc               UserModules     2E20
_SAR10_Start                       UserModules     2DCA
_SAR10_Stop                        UserModules     2DD2
_SAR10_Trigger                     UserModules     2DDA
_SAR10_bGetData                    UserModules     2E05
_SAR10_fIsDataAvailable            UserModules     2DE2
_SAR10_iGetData                    UserModules     2DEB
_SendByte                          text            3A64
_SensorUART                        text            3C1F
_ShiftRegOutput                    text            3BB2
_ShowHumiTemp                      text            35C1
_ShowPMxx                          text            36F3
_Si7020CalcRH                      text            340C
_Si7020CalcTemp                    text            32E6
_Si7020ClearBuf                    text            33E1
_Si7020Data                        bss0            003B
_Si7020Read_RH_NHM                 text            33F0
_Si7020Read_Temp_after_RHM         text            32C5
_Si7020SendCommand                 text            3663
_Start_I2c                         text            3ADE
_Stop_I2c                          text            3B03
_Temperature                       bss0            0049
_Timer16ISR                        text            3C01
_Timer16_DisableInt                UserModules     2E85
_Timer16_EnableInt                 UserModules     2E81
_Timer16_Start                     UserModules     2E89
_Timer16_Stop                      UserModules     2E8D
_Timer16_WriteCompareValue         UserModules     2E97
_Timer16_WritePeriod               UserModules     2E91
_Timer16_wReadCompareValue         UserModules     2E9D
_Timer16_wReadTimer                UserModules     2EDB
_Timer16_wReadTimerSaveCV          UserModules     2EA3
_Timer8ISR                         text            3B68
_Timer8_DisableInt                 UserModules     2EE7
_Timer8_EnableInt                  UserModules     2EE3
_Timer8_Start                      UserModules     2EEB
_Timer8_Stop                       UserModules     2EEF
_Timer8_WriteCompareValue          UserModules     2EF6
_Timer8_WritePeriod                UserModules     2EF3
_Timer8_bReadCompareValue          UserModules     2EF9
_Timer8_bReadTimer                 UserModules     2F29
_Timer8_bReadTimerSaveCV           UserModules     2EFC
_UART_Board_CPutString             UserModules     3061
_UART_Board_CWrite                 UserModules     3033
_UART_Board_DisableInt             UserModules     2F35
_UART_Board_EnableInt              UserModules     2F2E
_UART_Board_IntCntl                UserModules     2F7B
_UART_Board_PutCRLF                UserModules     3073
_UART_Board_PutChar                UserModules     2FC0
_UART_Board_PutSHexByte            UserModules     2FA6
_UART_Board_PutSHexInt             UserModules     2FB9
_UART_Board_PutString              UserModules     2FFD
_UART_Board_RX_ISR                 UserModules     307D
_UART_Board_SendData               UserModules     2F5C
_UART_Board_SetTxIntMode           UserModules     2F3C
_UART_Board_Start                  UserModules     2F4E
_UART_Board_Stop                   UserModules     2F55
_UART_Board_TX_ISR                 UserModules     307C
_UART_Board_TxIntMode              UserModules     2F68
_UART_Board_Write                  UserModules     300D
_UART_Board_bReadRxData            UserModules     2F62
_UART_Board_bReadRxStatus          UserModules     2F65
_UART_Board_bReadTxStatus          UserModules     2F5F
_UART_Board_cGetChar               UserModules     2FC8
_UART_Board_cReadChar              UserModules     2FD0
_UART_Board_iReadChar              UserModules     2FE7
_UART_Sensor_CPutString            UserModules     31B1
_UART_Sensor_CWrite                UserModules     3183
_UART_Sensor_DisableInt            UserModules     3085
_UART_Sensor_EnableInt             UserModules     307E
_UART_Sensor_IntCntl               UserModules     30CB
_UART_Sensor_PutCRLF               UserModules     31C3
_UART_Sensor_PutChar               UserModules     3110
_UART_Sensor_PutSHexByte           UserModules     30F6
_UART_Sensor_PutSHexInt            UserModules     3109
_UART_Sensor_PutString             UserModules     314D
_UART_Sensor_RX_ISR                UserModules     31CD
_UART_Sensor_SendData              UserModules     30AC
_UART_Sensor_SetTxIntMode          UserModules     308C
_UART_Sensor_Start                 UserModules     309E
_UART_Sensor_Stop                  UserModules     30A5
_UART_Sensor_TX_ISR                UserModules     31CC
_UART_Sensor_TxIntMode             UserModules     30B8
_UART_Sensor_Write                 UserModules     315D
_UART_Sensor_bReadRxData           UserModules     30B2
_UART_Sensor_bReadRxStatus         UserModules     30B5
_UART_Sensor_bReadTxStatus         UserModules     30AF
_UART_Sensor_cGetChar              UserModules     3118
_UART_Sensor_cReadChar             UserModules     3120
_UART_Sensor_iReadChar             UserModules     3137
_UartPutConstStr                   text            36A9
_UartPutHexByte                    text            349F
_UartPutHexWord                    text            31CE
__Bnvbit0                          nvbit0          0058
__Bnvbit1                          nvbit1          0100
__Bnvbit2                          nvbit2          0200
__Bnvbit3                          nvbit3          0300
__Brbit0                           rbit0           0053
__Brbit1                           rbit1           0100
__Brbit2                           rbit2           0200
__Brbit3                           rbit3           0300
__Bstackps                         stackps         0300
__HInterruptRAM                    InterruptRAM    0300
__HPD_startup                      PD_startup      3F8F
__HSSCParmBlk                      SSCParmBlk      0100
__HTOP                             TOP             0065
__HUserModules                     UserModules     31CE
__Hbss                             bss             0300
__Hbss0                            bss0            0053
__Hbss1                            bss1            0100
__Hbss2                            bss2            0200
__Hbss3                            bss3            0300
__Hcdata                           cdata           3E1C
__Hend_init                        end_init        0003
__Hfnauto                          fnauto          0075
__Hinit                            init            3FBF
__Hintrtext                        intrtext        0003
__Hled_display_RAM                 led_display_RAM 0300
__Hlit                             lit             0300
__Hmaintext                        maintext        3E00
__Hnvbit0                          nvbit0          02C0
__Hnvbit1                          nvbit1          0800
__Hnvbit2                          nvbit2          1000
__Hnvbit3                          nvbit3          1800
__Hnvram0                          nvram0          0058
__Hnvram1                          nvram1          0100
__Hnvram2                          nvram2          0200
__Hnvram3                          nvram3          0300
__Hpowerup                         powerup         0003
__Hpsoc_config                     psoc_config     0300
__Hramdata0                        ramdata0        0056
__Hramdata1                        ramdata1        0100
__Hramdata2                        ramdata2        0200
__Hramdata3                        ramdata3        0300
__Hrbit0                           rbit0           0298
__Hrbit1                           rbit1           0800
__Hrbit2                           rbit2           1000
__Hrbit3                           rbit3           1800
__Hromdata0                        romdata0        0068
__Hromdata1                        romdata1        0003
__Hromdata2                        romdata2        0003
__Hromdata3                        romdata3        0003
__Hstackps                         stackps         0300
__Hstrings                         strings         3F38
__Htext                            text            3C9A
__Hvectors                         vectors         0003
__LInterruptRAM                    InterruptRAM    0300
__LPD_startup                      PD_startup      3F38
__LSSCParmBlk                      SSCParmBlk      0000
__LTOP                             TOP             0000
__LUserModules                     UserModules     2DC2
__Lbss                             bss             0300
__Lbss0                            bss0            0000
__Lbss1                            bss1            0100
__Lbss2                            bss2            0200
__Lbss3                            bss3            0300
__Lcdata                           cdata           3E00
__Lend_init                        end_init        0003
__Lfnauto                          fnauto          0058
__Linit                            init            3F8F
__Lintrtext                        intrtext        0003
__Lled_display_RAM                 led_display_RAM 0300
__Llit                             lit             0300
__Lmaintext                        maintext        3C9A
__Lnvbit0                          nvbit0          02C0
__Lnvbit1                          nvbit1          0800
__Lnvbit2                          nvbit2          1000
__Lnvbit3                          nvbit3          1800
__Lnvram0                          nvram0          0056
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
__Ltext                            text            31CE
__Lvectors                         vectors         0000
__S0                               (abs)           3FBF
__S1                               (abs)           0075
__Start                            PD_startup      3F38
___awdiv                           text            38FF
___awdiv@counter                   fnauto          0067
___awdiv@dividend                  fnauto          0062
___awdiv@divisor                   fnauto          0060
___awdiv@quotient                  fnauto          0064
___awdiv@sign                      fnauto          0066
___awmod                           text            388C
___awmod@counter                   fnauto          0065
___awmod@dividend                  fnauto          0062
___awmod@divisor                   fnauto          0060
___awmod@sign                      fnauto          0064
___end_of_c_program_code           text            3C9A
___lmul                            text            3579
___lmul@multiplicand               fnauto          0069
___lmul@multiplier                 fnauto          0065
___lmul@product                    fnauto          006D
___lwdiv                           text            397D
___lwdiv@counter                   fnauto          0068
___lwdiv@dividend                  fnauto          0064
___lwdiv@divisor                   fnauto          0062
___lwdiv@quotient                  fnauto          0066
___lwmod                           text            3A28
___lwmod@counter                   fnauto          0066
___lwmod@dividend                  fnauto          0064
___lwmod@divisor                   fnauto          0062
___start_of_c_program_code         text            31CE
___wmul                            text            367D
___wmul@multiplicand               fnauto          0065
___wmul@multiplier                 fnauto          0067
___wmul@product                    fnauto          0069
__end_of_Ack_I2c                   text            3857
__end_of_BoardUART                 text            3B68
__end_of_ChangeToOD                text            3B34
__end_of_ChangeToRead              text            3B45
__end_of_FrameCheck                text            32C5
__end_of_IRcvBytes                 text            3579
__end_of_ISendByte                 text            388C
__end_of_Init_IIC                  text            3509
__end_of_LED_Display               text            33E1
__end_of_Num2Char                  text            367D
__end_of_RcvByte                   text            3A0F
__end_of_SendByte                  text            3ADE
__end_of_SensorUART                text            3C9A
__end_of_ShiftRegOutput            text            3C01
__end_of_ShowHumiTemp              text            3663
__end_of_ShowPMxx                  text            382B
__end_of_Si7020CalcRH              text            349F
__end_of_Si7020CalcTemp            text            338A
__end_of_Si7020ClearBuf            text            33F0
__end_of_Si7020Read_RH_NHM         text            340C
__end_of_Si7020Read_Temp_after_RHM text            32E6
__end_of_Si7020SendCommand         text            366C
__end_of_Start_I2c                 text            3B03
__end_of_Stop_I2c                  text            3B25
__end_of_Timer16ISR                text            3C1F
__end_of_Timer8ISR                 text            3BB2
__end_of_UartPutConstStr           text            36F3
__end_of_UartPutHexByte            text            34F8
__end_of_UartPutHexWord            text            3278
__end_of___awdiv                   text            397D
__end_of___awmod                   text            38FF
__end_of___lmul                    text            35C1
__end_of___lwdiv                   text            39C7
__end_of___lwmod                   text            3A64
__end_of___wmul                    text            36A9
__end_of_abs                       text            3A28
__end_of_delay_us                  text            3B63
__end_of_main                      maintext        3E00
__stack_start__                    stackps         0300
_abs                               text            3A0F
_ack                               bss0            004A
_bGetPowerSetting                  PD_startup      3F8C
_bTimer8_CaptureCounter            UserModules     2F29
_bTimer8_ReadCompareValue          UserModules     2EF9
_bTimer8_ReadCounter               UserModules     2EFC
_bTimer8_ReadTimer                 UserModules     2F29
_bTimer8_ReadTimerSaveCV           UserModules     2EFC
_bUART_Board_ReadRxData            UserModules     2F62
_bUART_Board_ReadRxStatus          UserModules     2F65
_bUART_Board_ReadTxStatus          UserModules     2F5F
_bUART_Sensor_ReadRxData           UserModules     30B2
_bUART_Sensor_ReadRxStatus         UserModules     30B5
_bUART_Sensor_ReadTxStatus         UserModules     30AF
_data_pm2_5                        bss0            003D
_delay_us                          text            3B45
_main                              maintext        3C9A
_one_sec_timer                     ramdata0        0053
_p                                 ramdata0        0054
_rh_sample_timer                   ramdata0        0055
_wTimer16_CaptureCounter           UserModules     2EDB
_wTimer16_ReadCompareValue         UserModules     2E9D
_wTimer16_ReadCounter              UserModules     2EA3
_wTimer16_ReadTimer                UserModules     2EDB
_wTimer16_ReadTimerSaveCV          UserModules     2EA3
abs@a                              fnauto          0060
bGetPowerSetting                   PD_startup      3F8C
bTimer8_CaptureCounter             UserModules     2F29
bTimer8_ReadCompareValue           UserModules     2EF9
bTimer8_ReadCounter                UserModules     2EFC
bTimer8_ReadTimer                  UserModules     2F29
bTimer8_ReadTimerSaveCV            UserModules     2EFC
bUART_Board_ReadRxData             UserModules     2F62
bUART_Board_ReadRxStatus           UserModules     2F65
bUART_Board_ReadTxStatus           UserModules     2F5F
bUART_Sensor_ReadRxData            UserModules     30B2
bUART_Sensor_ReadRxStatus          UserModules     30B5
bUART_Sensor_ReadTxStatus          UserModules     30AF
delay_us@us                        fnauto          0065
intlevel0                          romdata3        0003
intlevel1                          romdata3        0003
intlevel2                          romdata3        0003
main@ret                           fnauto          0058
reset_vec                          vectors         0000
start                              vectors         0000
startup                            init            3F8F
wTimer16_CaptureCounter            UserModules     2EDB
wTimer16_ReadCompareValue          UserModules     2E9D
wTimer16_ReadCounter               UserModules     2EA3
wTimer16_ReadTimer                 UserModules     2EDB
wTimer16_ReadTimerSaveCV           UserModules     2EA3
