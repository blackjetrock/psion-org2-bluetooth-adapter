EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1925 975  2    50   Input ~ 0
SD1
Text GLabel 1925 1175 2    50   Input ~ 0
SD3
Text GLabel 1425 1075 0    50   Input ~ 0
SD5
Text GLabel 1425 875  0    50   Input ~ 0
SD7
Text GLabel 1925 1575 2    50   Input ~ 0
SMR
Text GLabel 1425 1575 0    50   Input ~ 0
SOE
Text GLabel 1425 1475 0    50   Input ~ 0
VCC
Text GLabel 2000 5775 0    50   Input ~ 0
SD0
Text GLabel 2000 5875 0    50   Input ~ 0
SD1
Text GLabel 2000 5975 0    50   Input ~ 0
SD2
Text GLabel 2000 6075 0    50   Input ~ 0
SD3
Text GLabel 2000 6175 0    50   Input ~ 0
SD4
Text GLabel 2000 6275 0    50   Input ~ 0
SD5
Text GLabel 2000 6375 0    50   Input ~ 0
SD6
Text GLabel 2000 6475 0    50   Input ~ 0
SD7
Text GLabel 1300 3075 0    50   Input ~ 0
SMR
Text GLabel 1300 3175 0    50   Input ~ 0
SCLK
Text GLabel 1300 2975 0    50   Input ~ 0
SOE
Text GLabel 1300 2875 0    50   Input ~ 0
SS
Text GLabel 1300 2775 0    50   Input ~ 0
SPGM
Text GLabel 1925 1375 2    50   Input ~ 0
SS
Text GLabel 1925 1275 2    50   Input ~ 0
SCLK
Text GLabel 1925 875  2    50   Input ~ 0
SD0
Text GLabel 1425 975  0    50   Input ~ 0
SD6
Text GLabel 1425 1175 0    50   Input ~ 0
SD4
Text GLabel 1925 1075 2    50   Input ~ 0
SD2
Text GLabel 7425 2850 0    50   Input ~ 0
P_SPGM
Text GLabel 7425 2950 0    50   Input ~ 0
P_SS
Text GLabel 8825 3950 2    50   Input ~ 0
P_SCLK
Text GLabel 7425 3550 0    50   Input ~ 0
P_SD0
Text GLabel 7425 4350 0    50   Input ~ 0
P_SD6
Text GLabel 7425 4050 0    50   Input ~ 0
P_SD4
Text GLabel 7425 3850 0    50   Input ~ 0
P_SD2
Text GLabel 7425 3650 0    50   Input ~ 0
P_SD1
Text GLabel 7425 3950 0    50   Input ~ 0
P_SD3
Text GLabel 7425 4150 0    50   Input ~ 0
P_SD5
Text GLabel 7425 4450 0    50   Input ~ 0
P_SD7
Text GLabel 7425 3450 0    50   Input ~ 0
P_SMR
Text GLabel 7425 3350 0    50   Input ~ 0
P_SOE
Wire Wire Line
	9250 2950 8825 2950
Wire Wire Line
	9800 3250 8825 3250
Wire Wire Line
	7425 4250 6700 4250
Wire Wire Line
	6700 4250 6700 4900
Wire Wire Line
	7425 3750 6700 3750
Wire Wire Line
	6700 3750 6700 4250
Connection ~ 6700 4250
Wire Wire Line
	7425 3250 6700 3250
Wire Wire Line
	6700 3250 6700 3750
Connection ~ 6700 3750
Wire Wire Line
	7425 2750 6700 2750
Wire Wire Line
	6700 2750 6700 3250
Connection ~ 6700 3250
Wire Wire Line
	8825 2750 9800 2750
Wire Wire Line
	9800 2750 9800 3250
Connection ~ 9800 3250
Wire Wire Line
	9250 2325 9250 2950
Wire Wire Line
	9800 3250 9800 3750
Wire Wire Line
	8825 4250 9800 4250
Connection ~ 9800 4250
Wire Wire Line
	9800 4250 9800 4950
Wire Wire Line
	8825 3750 9800 3750
Connection ~ 9800 3750
Wire Wire Line
	9800 3750 9800 4250
Text GLabel 8825 3150 2    50   Input ~ 0
I2C_SDA
Text GLabel 8825 4350 2    50   Input ~ 0
I2C_SCLK
Text GLabel 3000 5775 2    50   Input ~ 0
P_SD0
Text GLabel 3000 5875 2    50   Input ~ 0
P_SD1
Text GLabel 3000 5975 2    50   Input ~ 0
P_SD2
Text GLabel 3000 6075 2    50   Input ~ 0
P_SD3
Text GLabel 3000 6175 2    50   Input ~ 0
P_SD4
Text GLabel 3000 6275 2    50   Input ~ 0
P_SD5
Text GLabel 3000 6375 2    50   Input ~ 0
P_SD6
Text GLabel 3000 6475 2    50   Input ~ 0
P_SD7
Text GLabel 2300 3075 2    50   Input ~ 0
P_SMR
Text GLabel 2300 3175 2    50   Input ~ 0
P_SCLK
Text GLabel 2300 2975 2    50   Input ~ 0
P_SOE
Text GLabel 2300 2875 2    50   Input ~ 0
P_SS
Text GLabel 2300 2775 2    50   Input ~ 0
P_SPGM
Wire Wire Line
	3575 6525 3575 6475
Wire Wire Line
	3575 6725 3575 6825
$Comp
L Device:C_Small C?
U 1 1 61CE617C
P 3575 6625
AR Path="/61CCCB6C/61CE617C" Ref="C?"  Part="1" 
AR Path="/61CE617C" Ref="C2"  Part="1" 
AR Path="/6208051A/61CE617C" Ref="C24"  Part="1" 
F 0 "C24" H 3667 6671 50  0000 L CNN
F 1 "100nF" H 3667 6580 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3575 6625 50  0001 C CNN
F 3 "~" H 3575 6625 50  0001 C CNN
	1    3575 6625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE6182
P 6700 4900
AR Path="/61CCCB6C/61CE6182" Ref="#PWR?"  Part="1" 
AR Path="/61CE6182" Ref="#PWR0101"  Part="1" 
AR Path="/6208051A/61CE6182" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 6700 4650 50  0001 C CNN
F 1 "GND" H 6705 4727 50  0000 C CNN
F 2 "" H 6700 4900 50  0001 C CNN
F 3 "" H 6700 4900 50  0001 C CNN
	1    6700 4900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620E668A
P 9800 4950
AR Path="/61CCCB6C/620E668A" Ref="#PWR?"  Part="1" 
AR Path="/620E668A" Ref="#PWR0102"  Part="1" 
AR Path="/6208051A/620E668A" Ref="#PWR0159"  Part="1" 
F 0 "#PWR0159" H 9800 4700 50  0001 C CNN
F 1 "GND" H 9800 4750 50  0000 C CNN
F 2 "" H 9800 4950 50  0001 C CNN
F 3 "" H 9800 4950 50  0001 C CNN
	1    9800 4950
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 620E668B
P 9250 2325
AR Path="/61CCCB6C/620E668B" Ref="#PWR?"  Part="1" 
AR Path="/620E668B" Ref="#PWR0103"  Part="1" 
AR Path="/6208051A/620E668B" Ref="#PWR0160"  Part="1" 
F 0 "#PWR0160" H 9250 2175 50  0001 C CNN
F 1 "+3V3" H 9265 2498 50  0000 C CNN
F 2 "" H 9250 2325 50  0001 C CNN
F 3 "" H 9250 2325 50  0001 C CNN
	1    9250 2325
	1    0    0    -1  
$EndComp
$Comp
L rp2040:Pico U?
U 1 1 620E668C
P 8125 3500
AR Path="/61CCCB6C/620E668C" Ref="U?"  Part="1" 
AR Path="/620E668C" Ref="U3"  Part="1" 
AR Path="/6208051A/620E668C" Ref="U13"  Part="1" 
F 0 "U13" H 8125 4715 50  0000 C CNN
F 1 "Pico" H 8125 4624 50  0000 C CNN
F 2 "rp2040:RPi_Pico_SMD_TH" V 8125 3500 50  0001 C CNN
F 3 "" H 8125 3500 50  0001 C CNN
	1    8125 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 620E668D
P 3575 6475
AR Path="/61CCCB6C/620E668D" Ref="#PWR?"  Part="1" 
AR Path="/620E668D" Ref="#PWR0104"  Part="1" 
AR Path="/6208051A/620E668D" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 3575 6325 50  0001 C CNN
F 1 "+3V3" H 3590 6648 50  0000 C CNN
F 2 "" H 3575 6475 50  0001 C CNN
F 3 "" H 3575 6475 50  0001 C CNN
	1    3575 6475
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE61A0
P 2500 7175
AR Path="/61CCCB6C/61CE61A0" Ref="#PWR?"  Part="1" 
AR Path="/61CE61A0" Ref="#PWR0105"  Part="1" 
AR Path="/6208051A/61CE61A0" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 2500 6925 50  0001 C CNN
F 1 "GND" H 2505 7002 50  0000 C CNN
F 2 "" H 2500 7175 50  0001 C CNN
F 3 "" H 2500 7175 50  0001 C CNN
	1    2500 7175
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE61A6
P 925 1625
AR Path="/61CCCB6C/61CE61A6" Ref="#PWR?"  Part="1" 
AR Path="/61CE61A6" Ref="#PWR0106"  Part="1" 
AR Path="/6208051A/61CE61A6" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 925 1375 50  0001 C CNN
F 1 "GND" H 925 1450 50  0000 C CNN
F 2 "" H 925 1625 50  0001 C CNN
F 3 "" H 925 1625 50  0001 C CNN
	1    925  1625
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 620E6690
P 1625 1175
AR Path="/61CCCB6C/620E6690" Ref="J?"  Part="1" 
AR Path="/620E6690" Ref="J1"  Part="1" 
AR Path="/6208051A/620E6690" Ref="J9"  Part="1" 
F 0 "J9" H 1675 1692 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 1675 1601 50  0000 C CNN
F 2 "psion_org_2:Psion_datapak_2x08_P2.54mm_Horizontal" H 1625 1175 50  0001 C CNN
F 3 "~" H 1625 1175 50  0001 C CNN
	1    1625 1175
	1    0    0    -1  
$EndComp
Text GLabel 8825 2850 2    50   Input ~ 0
3V3_EN
Text GLabel 8825 3050 2    50   Input ~ 0
ADC_REF
Text GLabel 8825 3550 2    50   Input ~ 0
RUN
Text GLabel 8825 2550 2    50   Input ~ 0
VBUS
$Comp
L 74xx:74LS245 U?
U 1 1 620E6691
P 2500 6275
AR Path="/61CCCB6C/620E6691" Ref="U?"  Part="1" 
AR Path="/620E6691" Ref="U2"  Part="1" 
AR Path="/6208051A/620E6691" Ref="U12"  Part="1" 
F 0 "U12" H 2850 7175 50  0000 C CNN
F 1 "74LS245" H 2925 7100 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 2500 6275 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 2500 6275 50  0001 C CNN
	1    2500 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5200 2500 5325
Wire Wire Line
	2500 7175 2500 7125
$Comp
L mirotan-due-cassette-shield-cache:+3.3V #PWR?
U 1 1 61CE61CF
P 2500 5200
AR Path="/61CCCB6C/61CE61CF" Ref="#PWR?"  Part="1" 
AR Path="/61CE61CF" Ref="#PWR0109"  Part="1" 
AR Path="/6208051A/61CE61CF" Ref="#PWR0164"  Part="1" 
F 0 "#PWR0164" H 2500 5050 50  0001 C CNN
F 1 "+3.3V" H 2515 5373 50  0000 C CNN
F 2 "" H 2500 5200 50  0001 C CNN
F 3 "" H 2500 5200 50  0001 C CNN
	1    2500 5200
	1    0    0    -1  
$EndComp
Text GLabel 950  6675 0    50   Input ~ 0
LS_DIR
Text GLabel 8825 3350 2    50   Input ~ 0
LS_DIR
Wire Wire Line
	2000 7125 2500 7125
Wire Wire Line
	2000 6775 2000 7125
Connection ~ 2500 7125
Wire Wire Line
	2500 7125 2500 7075
$Comp
L Device:R_Small R?
U 1 1 620E6693
P 1225 6225
AR Path="/60C45767/620E6693" Ref="R?"  Part="1" 
AR Path="/620E6693" Ref="R3"  Part="1" 
AR Path="/61CCCB6C/620E6693" Ref="R?"  Part="1" 
AR Path="/6208051A/620E6693" Ref="R16"  Part="1" 
F 0 "R16" H 1284 6271 50  0000 L CNN
F 1 "R_Small" H 1284 6180 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1225 6225 50  0001 C CNN
F 3 "~" H 1225 6225 50  0001 C CNN
	1    1225 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5325 1225 5325
Wire Wire Line
	1225 5325 1225 6125
Connection ~ 2500 5325
Wire Wire Line
	2500 5325 2500 5475
Wire Wire Line
	1225 6325 1225 6675
Wire Wire Line
	1225 6675 2000 6675
Wire Wire Line
	950  6675 1225 6675
Connection ~ 1225 6675
$Comp
L mirotan-due-cassette-shield-cache:+3.3V #PWR?
U 1 1 61CE61EF
P 1800 2225
AR Path="/61CCCB6C/61CE61EF" Ref="#PWR?"  Part="1" 
AR Path="/61CE61EF" Ref="#PWR0110"  Part="1" 
AR Path="/6208051A/61CE61EF" Ref="#PWR0165"  Part="1" 
F 0 "#PWR0165" H 1800 2075 50  0001 C CNN
F 1 "+3.3V" H 1815 2398 50  0000 C CNN
F 2 "" H 1800 2225 50  0001 C CNN
F 3 "" H 1800 2225 50  0001 C CNN
	1    1800 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2225 1800 2350
Wire Wire Line
	1800 2350 675  2350
Wire Wire Line
	675  2350 675  3675
Wire Wire Line
	675  3675 1300 3675
Connection ~ 1800 2350
Wire Wire Line
	1800 2350 1800 2475
Wire Wire Line
	1800 4075 1800 4100
Wire Wire Line
	1800 4100 1300 4100
Wire Wire Line
	1300 4100 1300 3775
Connection ~ 1800 4100
Wire Wire Line
	1800 4100 1800 4225
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 620E6696
P 8125 5675
AR Path="/61CCCB6C/620E6696" Ref="J?"  Part="1" 
AR Path="/620E6696" Ref="J7"  Part="1" 
AR Path="/6208051A/620E6696" Ref="J11"  Part="1" 
F 0 "J11" V 7971 5823 50  0000 L CNN
F 1 "Conn_01x03_Female" V 8062 5823 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8125 5675 50  0001 C CNN
F 3 "~" H 8125 5675 50  0001 C CNN
	1    8125 5675
	0    1    1    0   
$EndComp
Wire Wire Line
	8225 5475 8225 4650
Wire Wire Line
	8025 4650 8025 5475
Wire Wire Line
	8650 5225 8125 5225
Wire Wire Line
	8125 4650 8125 5225
Wire Wire Line
	8650 5225 8650 6075
Wire Wire Line
	8125 5475 8125 5225
Connection ~ 8125 5225
$Comp
L Connector:Conn_01x04_Female J?
U 1 1 620E6697
P 3575 2625
AR Path="/61CCCB6C/620E6697" Ref="J?"  Part="1" 
AR Path="/620E6697" Ref="J5"  Part="1" 
AR Path="/6208051A/620E6697" Ref="J10"  Part="1" 
F 0 "J10" H 3467 2910 50  0000 C CNN
F 1 "Conn_01x04_Female" H 3467 2819 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3575 2625 50  0001 C CNN
F 3 "~" H 3575 2625 50  0001 C CNN
	1    3575 2625
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 620E6698
P 4625 2075
AR Path="/61CCCB6C/620E6698" Ref="R?"  Part="1" 
AR Path="/620E6698" Ref="R4"  Part="1" 
AR Path="/6208051A/620E6698" Ref="R17"  Part="1" 
F 0 "R17" H 4684 2121 50  0000 L CNN
F 1 "4k7" H 4684 2030 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4625 2075 50  0001 C CNN
F 3 "~" H 4625 2075 50  0001 C CNN
	1    4625 2075
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 620E6699
P 5100 2075
AR Path="/61CCCB6C/620E6699" Ref="R?"  Part="1" 
AR Path="/620E6699" Ref="R5"  Part="1" 
AR Path="/6208051A/620E6699" Ref="R18"  Part="1" 
F 0 "R18" H 5159 2121 50  0000 L CNN
F 1 "4k7" H 5159 2030 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5100 2075 50  0001 C CNN
F 3 "~" H 5100 2075 50  0001 C CNN
	1    5100 2075
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 620E669A
P 4350 1775
AR Path="/61CCCB6C/620E669A" Ref="#PWR?"  Part="1" 
AR Path="/620E669A" Ref="#PWR0111"  Part="1" 
AR Path="/6208051A/620E669A" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 4350 1625 50  0001 C CNN
F 1 "+3V3" H 4365 1948 50  0000 C CNN
F 2 "" H 4350 1775 50  0001 C CNN
F 3 "" H 4350 1775 50  0001 C CNN
	1    4350 1775
	1    0    0    -1  
$EndComp
Connection ~ 4625 1900
Wire Wire Line
	5100 1900 5100 1975
Wire Wire Line
	4625 1900 5100 1900
Wire Wire Line
	4625 1900 4625 1975
Wire Wire Line
	4350 1900 4625 1900
Wire Wire Line
	4350 1775 4350 1900
Wire Wire Line
	3775 2625 5100 2625
Connection ~ 5100 2625
Wire Wire Line
	5500 2625 5100 2625
Connection ~ 4625 2525
Wire Wire Line
	5500 2525 4625 2525
Text GLabel 5500 2625 2    50   Input ~ 0
I2C_SCLK
Text GLabel 5500 2525 2    50   Input ~ 0
I2C_SDA
Wire Wire Line
	5100 2175 5100 2625
Wire Wire Line
	4625 2525 4625 2175
Wire Wire Line
	3775 2525 4625 2525
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 620E669B
P 4500 2975
AR Path="/61CCCB6C/620E669B" Ref="JP?"  Part="1" 
AR Path="/620E669B" Ref="JP3"  Part="1" 
AR Path="/6208051A/620E669B" Ref="JP12"  Part="1" 
F 0 "JP12" H 4500 3160 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4500 3069 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4500 2975 50  0001 C CNN
F 3 "~" H 4500 2975 50  0001 C CNN
	1    4500 2975
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 620E669C
P 4500 3150
AR Path="/61CCCB6C/620E669C" Ref="JP?"  Part="1" 
AR Path="/620E669C" Ref="JP4"  Part="1" 
AR Path="/6208051A/620E669C" Ref="JP13"  Part="1" 
F 0 "JP13" H 4500 3335 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4500 3244 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4500 3150 50  0001 C CNN
F 3 "~" H 4500 3150 50  0001 C CNN
	1    4500 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 620E669D
P 4475 3500
AR Path="/61CCCB6C/620E669D" Ref="JP?"  Part="1" 
AR Path="/620E669D" Ref="JP1"  Part="1" 
AR Path="/6208051A/620E669D" Ref="JP10"  Part="1" 
F 0 "JP10" H 4475 3685 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4475 3594 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4475 3500 50  0001 C CNN
F 3 "~" H 4475 3500 50  0001 C CNN
	1    4475 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 61CE6259
P 4475 3675
AR Path="/61CCCB6C/61CE6259" Ref="JP?"  Part="1" 
AR Path="/61CE6259" Ref="JP2"  Part="1" 
AR Path="/6208051A/61CE6259" Ref="JP11"  Part="1" 
F 0 "JP11" H 4475 3860 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4475 3769 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4475 3675 50  0001 C CNN
F 3 "~" H 4475 3675 50  0001 C CNN
	1    4475 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 2725 4225 2725
Wire Wire Line
	4225 2725 4225 2975
Wire Wire Line
	4225 2975 4400 2975
Wire Wire Line
	4225 2975 4225 3500
Wire Wire Line
	4225 3500 4375 3500
Connection ~ 4225 2975
Wire Wire Line
	3775 2825 4075 2825
Wire Wire Line
	4075 2825 4075 3150
Wire Wire Line
	4075 3150 4400 3150
Wire Wire Line
	4075 3150 4075 3675
Wire Wire Line
	4075 3675 4375 3675
Connection ~ 4075 3150
Wire Wire Line
	4575 3675 5075 3675
Wire Wire Line
	5075 3675 5075 3850
Wire Wire Line
	4575 3500 5075 3500
Wire Wire Line
	5075 3500 5075 3675
Connection ~ 5075 3675
Wire Wire Line
	4350 1900 4350 2675
Wire Wire Line
	4350 2675 4725 2675
Wire Wire Line
	4725 2675 4725 2975
Wire Wire Line
	4725 2975 4600 2975
Connection ~ 4350 1900
Wire Wire Line
	4600 3150 4725 3150
Wire Wire Line
	4725 3150 4725 2975
Connection ~ 4725 2975
Wire Wire Line
	2675 3625 2675 3575
Wire Wire Line
	2675 3825 2675 3925
$Comp
L Device:C_Small C?
U 1 1 61CE6280
P 2675 3725
AR Path="/61CCCB6C/61CE6280" Ref="C?"  Part="1" 
AR Path="/61CE6280" Ref="C1"  Part="1" 
AR Path="/6208051A/61CE6280" Ref="C23"  Part="1" 
F 0 "C23" H 2767 3771 50  0000 L CNN
F 1 "100nF" H 2767 3680 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2675 3725 50  0001 C CNN
F 3 "~" H 2675 3725 50  0001 C CNN
	1    2675 3725
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE6286
P 2675 3575
AR Path="/61CCCB6C/61CE6286" Ref="#PWR?"  Part="1" 
AR Path="/61CE6286" Ref="#PWR0112"  Part="1" 
AR Path="/6208051A/61CE6286" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 2675 3425 50  0001 C CNN
F 1 "+3V3" H 2690 3748 50  0000 C CNN
F 2 "" H 2675 3575 50  0001 C CNN
F 3 "" H 2675 3575 50  0001 C CNN
	1    2675 3575
	-1   0    0    -1  
$EndComp
Text Notes 5425 1125 0    50   ~ 0
Top Slot Adapter Breakout Board\nAttaches to top slot and provides general hardware interface\nCan have ROM in Pico flash
Wire Wire Line
	1425 1275 925  1275
Wire Wire Line
	925  1275 925  1625
Text GLabel 1925 1475 2    50   Input ~ 0
AC
Text GLabel 1425 1375 0    50   Input ~ 0
VB
Text GLabel 8825 3850 2    50   Input ~ 0
IP_CLK
Text GLabel 8825 3650 2    50   Input ~ 0
OP_CLK
$Comp
L power:GND #PWR0168
U 1 1 620E66A1
P 1800 4225
F 0 "#PWR0168" H 1800 3975 50  0001 C CNN
F 1 "GND" H 1805 4052 50  0000 C CNN
F 2 "" H 1800 4225 50  0001 C CNN
F 3 "" H 1800 4225 50  0001 C CNN
	1    1800 4225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0169
U 1 1 61CEDAFC
P 2675 3925
F 0 "#PWR0169" H 2675 3675 50  0001 C CNN
F 1 "GND" H 2680 3752 50  0000 C CNN
F 2 "" H 2675 3925 50  0001 C CNN
F 3 "" H 2675 3925 50  0001 C CNN
	1    2675 3925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0170
U 1 1 61CEDD65
P 3575 6825
F 0 "#PWR0170" H 3575 6575 50  0001 C CNN
F 1 "GND" H 3580 6652 50  0000 C CNN
F 2 "" H 3575 6825 50  0001 C CNN
F 3 "" H 3575 6825 50  0001 C CNN
	1    3575 6825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0171
U 1 1 620E66A4
P 5075 3850
F 0 "#PWR0171" H 5075 3600 50  0001 C CNN
F 1 "GND" H 5080 3677 50  0000 C CNN
F 2 "" H 5075 3850 50  0001 C CNN
F 3 "" H 5075 3850 50  0001 C CNN
	1    5075 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0172
U 1 1 61CEE0B8
P 8650 6075
F 0 "#PWR0172" H 8650 5825 50  0001 C CNN
F 1 "GND" H 8655 5902 50  0000 C CNN
F 2 "" H 8650 6075 50  0001 C CNN
F 3 "" H 8650 6075 50  0001 C CNN
	1    8650 6075
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 620E6694
P 1800 3275
AR Path="/61CCCB6C/620E6694" Ref="U?"  Part="1" 
AR Path="/620E6694" Ref="U1"  Part="1" 
AR Path="/6208051A/620E6694" Ref="U11"  Part="1" 
F 0 "U11" H 2075 4175 50  0000 C CNN
F 1 "74LS245" H 2175 4075 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 1800 3275 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 1800 3275 50  0001 C CNN
	1    1800 3275
	1    0    0    -1  
$EndComp
$Sheet
S 9150 900  900  450 
U 62080ABB
F0 "Sheet62080ABB" 50
F1 "file61D041BF.sch" 50
$EndSheet
Text GLabel 7425 3050 0    50   Input ~ 0
PICO_TX
Text GLabel 7425 3150 0    50   Input ~ 0
PICO_RX
Text Notes 6950 1975 0    50   ~ 0
Pico USB could be used as USB \nserial if a connection is made to it.
Text GLabel 8825 4050 2    50   Input ~ 0
WROOM_ON
$Comp
L Device:D_Schottky D3
U 1 1 620E66A8
P 9650 2125
F 0 "D3" V 9696 2046 50  0000 R CNN
F 1 "D_Schottky" V 9605 2046 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 9650 2125 50  0001 C CNN
F 3 "~" H 9650 2125 50  0001 C CNN
	1    9650 2125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 2275 9650 2650
Wire Wire Line
	9650 2650 8825 2650
Text GLabel 9450 1750 0    50   Input ~ 0
VREG
Wire Wire Line
	9450 1750 9650 1750
Wire Wire Line
	9650 1750 9650 1975
$Sheet
S 5225 6750 1450 700 
U 62080ABC
F0 "Sheet62080ABC" 50
F1 "Power.sch" 50
$EndSheet
$Comp
L Device:R_Small R20
U 1 1 621A7B2D
P 10350 3825
F 0 "R20" H 10409 3871 50  0000 L CNN
F 1 "R_Small" H 10409 3780 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10350 3825 50  0001 C CNN
F 3 "~" H 10350 3825 50  0001 C CNN
	1    10350 3825
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R19
U 1 1 621A7FFC
P 10350 3300
F 0 "R19" H 10409 3346 50  0000 L CNN
F 1 "R_Small" H 10409 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10350 3300 50  0001 C CNN
F 3 "~" H 10350 3300 50  0001 C CNN
	1    10350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620E66DC
P 10350 4100
AR Path="/61CCCB6C/620E66DC" Ref="#PWR?"  Part="1" 
AR Path="/620E66DC" Ref="#PWR0132"  Part="1" 
AR Path="/6208051A/620E66DC" Ref="#PWR0173"  Part="1" 
F 0 "#PWR0173" H 10350 3850 50  0001 C CNN
F 1 "GND" H 10350 3900 50  0000 C CNN
F 2 "" H 10350 4100 50  0001 C CNN
F 3 "" H 10350 4100 50  0001 C CNN
	1    10350 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10350 4100 10350 3925
Wire Wire Line
	10350 3725 10350 3575
Wire Wire Line
	8825 3450 10100 3450
Wire Wire Line
	10100 3450 10100 3575
Wire Wire Line
	10100 3575 10350 3575
Connection ~ 10350 3575
Wire Wire Line
	10350 3575 10350 3400
Wire Wire Line
	9650 1750 10350 1750
Wire Wire Line
	10350 1750 10350 3200
Connection ~ 9650 1750
$EndSCHEMATC
