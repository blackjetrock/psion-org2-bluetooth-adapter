EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
Wire Wire Line
	3575 6525 3575 6475
Wire Wire Line
	3575 6725 3575 6825
$Comp
L Device:C_Small C?
U 1 1 620E6688
P 3575 6625
AR Path="/61CCCB6C/620E6688" Ref="C?"  Part="1" 
AR Path="/620E6688" Ref="C2"  Part="1" 
F 0 "C2" H 3667 6671 50  0000 L CNN
F 1 "100nF" H 3667 6580 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3575 6625 50  0001 C CNN
F 3 "~" H 3575 6625 50  0001 C CNN
	1    3575 6625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620E6689
P 6700 4900
AR Path="/61CCCB6C/620E6689" Ref="#PWR?"  Part="1" 
AR Path="/620E6689" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 6700 4650 50  0001 C CNN
F 1 "GND" H 6705 4727 50  0000 C CNN
F 2 "" H 6700 4900 50  0001 C CNN
F 3 "" H 6700 4900 50  0001 C CNN
	1    6700 4900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE6188
P 9800 4950
AR Path="/61CCCB6C/61CE6188" Ref="#PWR?"  Part="1" 
AR Path="/61CE6188" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 9800 4700 50  0001 C CNN
F 1 "GND" H 9800 4750 50  0000 C CNN
F 2 "" H 9800 4950 50  0001 C CNN
F 3 "" H 9800 4950 50  0001 C CNN
	1    9800 4950
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE618E
P 9250 2325
AR Path="/61CCCB6C/61CE618E" Ref="#PWR?"  Part="1" 
AR Path="/61CE618E" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 9250 2175 50  0001 C CNN
F 1 "+3V3" H 9265 2498 50  0000 C CNN
F 2 "" H 9250 2325 50  0001 C CNN
F 3 "" H 9250 2325 50  0001 C CNN
	1    9250 2325
	1    0    0    -1  
$EndComp
$Comp
L rp2040:Pico U?
U 1 1 61CE6194
P 8125 3500
AR Path="/61CCCB6C/61CE6194" Ref="U?"  Part="1" 
AR Path="/61CE6194" Ref="U3"  Part="1" 
F 0 "U3" H 8125 4715 50  0000 C CNN
F 1 "Pico" H 8125 4624 50  0000 C CNN
F 2 "rp2040:RPi_Pico_SMD_TH" V 8125 3500 50  0001 C CNN
F 3 "" H 8125 3500 50  0001 C CNN
	1    8125 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE619A
P 3575 6475
AR Path="/61CCCB6C/61CE619A" Ref="#PWR?"  Part="1" 
AR Path="/61CE619A" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3575 6325 50  0001 C CNN
F 1 "+3V3" H 3590 6648 50  0000 C CNN
F 2 "" H 3575 6475 50  0001 C CNN
F 3 "" H 3575 6475 50  0001 C CNN
	1    3575 6475
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620E668E
P 2500 7175
AR Path="/61CCCB6C/620E668E" Ref="#PWR?"  Part="1" 
AR Path="/620E668E" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 2500 6925 50  0001 C CNN
F 1 "GND" H 2505 7002 50  0000 C CNN
F 2 "" H 2500 7175 50  0001 C CNN
F 3 "" H 2500 7175 50  0001 C CNN
	1    2500 7175
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620E668F
P 925 1625
AR Path="/61CCCB6C/620E668F" Ref="#PWR?"  Part="1" 
AR Path="/620E668F" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 925 1375 50  0001 C CNN
F 1 "GND" H 925 1450 50  0000 C CNN
F 2 "" H 925 1625 50  0001 C CNN
F 3 "" H 925 1625 50  0001 C CNN
	1    925  1625
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 61CE61AC
P 1625 1175
AR Path="/61CCCB6C/61CE61AC" Ref="J?"  Part="1" 
AR Path="/61CE61AC" Ref="J1"  Part="1" 
F 0 "J1" H 1675 1692 50  0000 C CNN
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
$Comp
L 74xx:74LS245 U?
U 1 1 61CE61C7
P 2500 6275
AR Path="/61CCCB6C/61CE61C7" Ref="U?"  Part="1" 
AR Path="/61CE61C7" Ref="U2"  Part="1" 
F 0 "U2" H 2850 7175 50  0000 C CNN
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
U 1 1 620E6692
P 2500 5200
AR Path="/61CCCB6C/620E6692" Ref="#PWR?"  Part="1" 
AR Path="/620E6692" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 2500 5050 50  0001 C CNN
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
U 1 1 61CE61DB
P 1225 6225
AR Path="/60C45767/61CE61DB" Ref="R?"  Part="1" 
AR Path="/61CE61DB" Ref="R3"  Part="1" 
AR Path="/61CCCB6C/61CE61DB" Ref="R?"  Part="1" 
F 0 "R3" H 1284 6271 50  0000 L CNN
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
U 1 1 620E6695
P 1800 2225
AR Path="/61CCCB6C/620E6695" Ref="#PWR?"  Part="1" 
AR Path="/620E6695" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 1800 2075 50  0001 C CNN
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
U 1 1 61CE6206
P 8125 5675
AR Path="/61CCCB6C/61CE6206" Ref="J?"  Part="1" 
AR Path="/61CE6206" Ref="J7"  Part="1" 
F 0 "J7" V 7971 5823 50  0000 L CNN
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
U 1 1 61CE6219
P 4000 5200
AR Path="/61CCCB6C/61CE6219" Ref="J?"  Part="1" 
AR Path="/61CE6219" Ref="J5"  Part="1" 
F 0 "J5" H 3892 5485 50  0000 C CNN
F 1 "Conn_01x04_Female" H 3892 5394 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4000 5200 50  0001 C CNN
F 3 "~" H 4000 5200 50  0001 C CNN
	1    4000 5200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61CE621F
P 5050 4650
AR Path="/61CCCB6C/61CE621F" Ref="R?"  Part="1" 
AR Path="/61CE621F" Ref="R4"  Part="1" 
F 0 "R4" H 5109 4696 50  0000 L CNN
F 1 "4k7" H 5109 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5050 4650 50  0001 C CNN
F 3 "~" H 5050 4650 50  0001 C CNN
	1    5050 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61CE6225
P 5525 4650
AR Path="/61CCCB6C/61CE6225" Ref="R?"  Part="1" 
AR Path="/61CE6225" Ref="R5"  Part="1" 
F 0 "R5" H 5584 4696 50  0000 L CNN
F 1 "4k7" H 5584 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5525 4650 50  0001 C CNN
F 3 "~" H 5525 4650 50  0001 C CNN
	1    5525 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE622B
P 4775 4350
AR Path="/61CCCB6C/61CE622B" Ref="#PWR?"  Part="1" 
AR Path="/61CE622B" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 4775 4200 50  0001 C CNN
F 1 "+3V3" H 4790 4523 50  0000 C CNN
F 2 "" H 4775 4350 50  0001 C CNN
F 3 "" H 4775 4350 50  0001 C CNN
	1    4775 4350
	1    0    0    -1  
$EndComp
Connection ~ 5050 4475
Wire Wire Line
	5525 4475 5525 4550
Wire Wire Line
	5050 4475 5525 4475
Wire Wire Line
	5050 4475 5050 4550
Wire Wire Line
	4775 4475 5050 4475
Wire Wire Line
	4775 4350 4775 4475
Wire Wire Line
	4200 5200 5525 5200
Connection ~ 5525 5200
Wire Wire Line
	5925 5200 5525 5200
Connection ~ 5050 5100
Wire Wire Line
	5925 5100 5050 5100
Text GLabel 5925 5200 2    50   Input ~ 0
I2C_SCLK
Text GLabel 5925 5100 2    50   Input ~ 0
I2C_SDA
Wire Wire Line
	5525 4750 5525 5200
Wire Wire Line
	5050 5100 5050 4750
Wire Wire Line
	4200 5100 5050 5100
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 61CE6247
P 4925 5550
AR Path="/61CCCB6C/61CE6247" Ref="JP?"  Part="1" 
AR Path="/61CE6247" Ref="JP3"  Part="1" 
F 0 "JP3" H 4925 5735 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4925 5644 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 5550 50  0001 C CNN
F 3 "~" H 4925 5550 50  0001 C CNN
	1    4925 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 61CE624D
P 4925 5725
AR Path="/61CCCB6C/61CE624D" Ref="JP?"  Part="1" 
AR Path="/61CE624D" Ref="JP4"  Part="1" 
F 0 "JP4" H 4925 5910 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4925 5819 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 5725 50  0001 C CNN
F 3 "~" H 4925 5725 50  0001 C CNN
	1    4925 5725
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 61CE6253
P 4900 6075
AR Path="/61CCCB6C/61CE6253" Ref="JP?"  Part="1" 
AR Path="/61CE6253" Ref="JP1"  Part="1" 
F 0 "JP1" H 4900 6260 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4900 6169 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4900 6075 50  0001 C CNN
F 3 "~" H 4900 6075 50  0001 C CNN
	1    4900 6075
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 620E669E
P 4900 6250
AR Path="/61CCCB6C/620E669E" Ref="JP?"  Part="1" 
AR Path="/620E669E" Ref="JP2"  Part="1" 
F 0 "JP2" H 4900 6435 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4900 6344 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4900 6250 50  0001 C CNN
F 3 "~" H 4900 6250 50  0001 C CNN
	1    4900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5300 4650 5300
Wire Wire Line
	4650 5300 4650 5550
Wire Wire Line
	4650 5550 4825 5550
Wire Wire Line
	4650 5550 4650 6075
Wire Wire Line
	4650 6075 4800 6075
Connection ~ 4650 5550
Wire Wire Line
	4200 5400 4500 5400
Wire Wire Line
	4500 5400 4500 5725
Wire Wire Line
	4500 5725 4825 5725
Wire Wire Line
	4500 5725 4500 6250
Wire Wire Line
	4500 6250 4800 6250
Connection ~ 4500 5725
Wire Wire Line
	5000 6250 5500 6250
Wire Wire Line
	5500 6250 5500 6425
Wire Wire Line
	5000 6075 5500 6075
Wire Wire Line
	5500 6075 5500 6250
Connection ~ 5500 6250
Wire Wire Line
	4775 4475 4775 5250
Wire Wire Line
	4775 5250 5150 5250
Wire Wire Line
	5150 5250 5150 5550
Wire Wire Line
	5150 5550 5025 5550
Connection ~ 4775 4475
Wire Wire Line
	5025 5725 5150 5725
Wire Wire Line
	5150 5725 5150 5550
Connection ~ 5150 5550
Wire Wire Line
	2675 3625 2675 3575
Wire Wire Line
	2675 3825 2675 3925
$Comp
L Device:C_Small C?
U 1 1 620E669F
P 2675 3725
AR Path="/61CCCB6C/620E669F" Ref="C?"  Part="1" 
AR Path="/620E669F" Ref="C1"  Part="1" 
F 0 "C1" H 2767 3771 50  0000 L CNN
F 1 "100nF" H 2767 3680 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2675 3725 50  0001 C CNN
F 3 "~" H 2675 3725 50  0001 C CNN
	1    2675 3725
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 620E66A0
P 2675 3575
AR Path="/61CCCB6C/620E66A0" Ref="#PWR?"  Part="1" 
AR Path="/620E66A0" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 2675 3425 50  0001 C CNN
F 1 "+3V3" H 2690 3748 50  0000 C CNN
F 2 "" H 2675 3575 50  0001 C CNN
F 3 "" H 2675 3575 50  0001 C CNN
	1    2675 3575
	-1   0    0    -1  
$EndComp
Text Notes 5450 -200 0    50   ~ 0
Top Slot Adapter Breakout Board\nAttaches to top slot and provides general hardware interface\nCan have ROM in Pico flash
Wire Wire Line
	1425 1275 925  1275
Wire Wire Line
	925  1275 925  1625
Text GLabel 1925 1475 2    50   Input ~ 0
AC
Text GLabel 1425 1375 0    50   Input ~ 0
VB
$Comp
L power:GND #PWR0107
U 1 1 61CED555
P 1800 4225
F 0 "#PWR0107" H 1800 3975 50  0001 C CNN
F 1 "GND" H 1805 4052 50  0000 C CNN
F 2 "" H 1800 4225 50  0001 C CNN
F 3 "" H 1800 4225 50  0001 C CNN
	1    1800 4225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 620E66A2
P 2675 3925
F 0 "#PWR0108" H 2675 3675 50  0001 C CNN
F 1 "GND" H 2680 3752 50  0000 C CNN
F 2 "" H 2675 3925 50  0001 C CNN
F 3 "" H 2675 3925 50  0001 C CNN
	1    2675 3925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 620E66A3
P 3575 6825
F 0 "#PWR0113" H 3575 6575 50  0001 C CNN
F 1 "GND" H 3580 6652 50  0000 C CNN
F 2 "" H 3575 6825 50  0001 C CNN
F 3 "" H 3575 6825 50  0001 C CNN
	1    3575 6825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61CEDF39
P 5500 6425
F 0 "#PWR0114" H 5500 6175 50  0001 C CNN
F 1 "GND" H 5505 6252 50  0000 C CNN
F 2 "" H 5500 6425 50  0001 C CNN
F 3 "" H 5500 6425 50  0001 C CNN
	1    5500 6425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 620E66A5
P 8650 6075
F 0 "#PWR0115" H 8650 5825 50  0001 C CNN
F 1 "GND" H 8655 5902 50  0000 C CNN
F 2 "" H 8650 6075 50  0001 C CNN
F 3 "" H 8650 6075 50  0001 C CNN
	1    8650 6075
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 61CE61E9
P 1800 3275
AR Path="/61CCCB6C/61CE61E9" Ref="U?"  Part="1" 
AR Path="/61CE61E9" Ref="U1"  Part="1" 
F 0 "U1" H 2075 4175 50  0000 C CNN
F 1 "74LS245" H 2175 4075 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 1800 3275 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 1800 3275 50  0001 C CNN
	1    1800 3275
	1    0    0    -1  
$EndComp
$Sheet
S 9150 900  900  450 
U 61D041C0
F0 "Sheet61D041BF" 50
F1 "file61D041BF.sch" 50
$EndSheet
Text GLabel 7425 3050 0    50   Input ~ 0
PICO_TX
Text GLabel 7425 3150 0    50   Input ~ 0
PICO_RX
Text GLabel 8825 4050 2    50   Input ~ 0
WROOM_ON
$Comp
L Device:D_Schottky D1
U 1 1 61D1AB6B
P 9650 2125
F 0 "D1" V 9696 2046 50  0000 R CNN
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
U 61D0535C
F0 "Sheet61D0535B" 50
F1 "Power.sch" 50
$EndSheet
$Comp
L Device:R_Small R8
U 1 1 620E66DA
P 10350 3825
F 0 "R8" H 10409 3871 50  0000 L CNN
F 1 "R_Small" H 10409 3780 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10350 3825 50  0001 C CNN
F 3 "~" H 10350 3825 50  0001 C CNN
	1    10350 3825
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 620E66DB
P 10350 3300
F 0 "R7" H 10409 3346 50  0000 L CNN
F 1 "R_Small" H 10409 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10350 3300 50  0001 C CNN
F 3 "~" H 10350 3300 50  0001 C CNN
	1    10350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621C3C0A
P 10350 4100
AR Path="/61CCCB6C/621C3C0A" Ref="#PWR?"  Part="1" 
AR Path="/621C3C0A" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 10350 3850 50  0001 C CNN
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
Text GLabel 8825 4150 2    50   Input ~ 0
TX_TO_PSION
Text GLabel 8825 4450 2    50   Input ~ 0
TRI_TX
$Comp
L cq1re1-cache:New_Library_Si2302CDS-n-channel TR2
U 1 1 62084301
P 3925 2250
F 0 "TR2" H 4203 2296 50  0000 L CNN
F 1 "si2302" H 4203 2205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3955 2400 20  0001 C CNN
F 3 "" H 3925 2250 50  0001 C CNN
	1    3925 2250
	1    0    0    -1  
$EndComp
$Comp
L cq1re1-cache:GeekAmmo_P-CHANNEL-MOSFET M2
U 1 1 62085A1D
P 4125 1125
F 0 "M2" H 4403 1171 50  0000 L CNN
F 1 "Si2301" H 4403 1080 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4155 1275 20  0001 C CNN
F 3 "" H 4125 1125 50  0001 C CNN
	1    4125 1125
	-1   0    0    -1  
$EndComp
Text GLabel 3725 2350 0    50   Input ~ 0
TX_TO_PSION
$Comp
L power:GND #PWR0135
U 1 1 620A1225
P 4025 3625
F 0 "#PWR0135" H 4025 3375 50  0001 C CNN
F 1 "GND" H 4030 3452 50  0000 C CNN
F 2 "" H 4025 3625 50  0001 C CNN
F 3 "" H 4025 3625 50  0001 C CNN
	1    4025 3625
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 620A65E3
P 4025 1650
F 0 "R9" H 4084 1696 50  0000 L CNN
F 1 "R_Small" H 4084 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4025 1650 50  0001 C CNN
F 3 "~" H 4025 1650 50  0001 C CNN
	1    4025 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 1425 4025 1550
$Comp
L Device:R_Small R10
U 1 1 620B3C51
P 4800 800
F 0 "R10" H 4859 846 50  0000 L CNN
F 1 "10k" H 4859 755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4800 800 50  0001 C CNN
F 3 "~" H 4800 800 50  0001 C CNN
	1    4800 800 
	1    0    0    -1  
$EndComp
Text GLabel 3575 575  0    50   Input ~ 0
VCC
Wire Wire Line
	3575 575  4025 575 
Wire Wire Line
	4025 575  4025 825 
Wire Wire Line
	4025 575  4800 575 
Wire Wire Line
	4800 575  4800 700 
Connection ~ 4025 575 
Wire Wire Line
	4325 1025 4800 1025
Wire Wire Line
	4800 1025 4800 900 
Wire Wire Line
	5100 2075 5100 1025
Wire Wire Line
	5100 1025 4800 1025
Connection ~ 4800 1025
Text GLabel 3275 1875 0    50   Input ~ 0
SD3
Wire Wire Line
	3275 1875 4025 1875
Wire Wire Line
	4025 1750 4025 1875
Connection ~ 4025 1875
Wire Wire Line
	4025 1875 4025 1950
$Comp
L Device:R_Small R11
U 1 1 620C85E1
P 5700 2700
F 0 "R11" H 5759 2746 50  0000 L CNN
F 1 "10k" H 5759 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5700 2700 50  0001 C CNN
F 3 "~" H 5700 2700 50  0001 C CNN
	1    5700 2700
	1    0    0    -1  
$EndComp
$Comp
L cq1re1-cache:New_Library_Si2302CDS-n-channel TR3
U 1 1 62098506
P 5200 2375
F 0 "TR3" H 5478 2421 50  0000 L CNN
F 1 "Si2302" H 5478 2330 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5230 2525 20  0001 C CNN
F 3 "" H 5200 2375 50  0001 C CNN
	1    5200 2375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 2475 5525 2475
Wire Wire Line
	5700 2475 5700 2600
$Comp
L power:GND #PWR0136
U 1 1 620D26D9
P 5700 2925
F 0 "#PWR0136" H 5700 2675 50  0001 C CNN
F 1 "GND" H 5705 2752 50  0000 C CNN
F 2 "" H 5700 2925 50  0001 C CNN
F 3 "" H 5700 2925 50  0001 C CNN
	1    5700 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2925 5700 2800
$Comp
L power:GND #PWR0137
U 1 1 620DA510
P 5100 2925
F 0 "#PWR0137" H 5100 2675 50  0001 C CNN
F 1 "GND" H 5105 2752 50  0000 C CNN
F 2 "" H 5100 2925 50  0001 C CNN
F 3 "" H 5100 2925 50  0001 C CNN
	1    5100 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2925 5100 2675
Text GLabel 6000 2475 2    50   Input ~ 0
TRI_TX
Wire Wire Line
	6000 2475 5700 2475
Connection ~ 5700 2475
$Comp
L Memory_EEPROM:24LC32 U5
U 1 1 62133209
P 6750 1375
F 0 "U5" H 6375 1850 50  0000 C CNN
F 1 "24LC32" H 6475 1775 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6750 1375 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21072G.pdf" H 6750 1375 50  0001 C CNN
	1    6750 1375
	1    0    0    -1  
$EndComp
Text GLabel 7150 1375 2    50   Input ~ 0
I2C_SCLK
Text GLabel 7150 1275 2    50   Input ~ 0
I2C_SDA
$Comp
L power:GND #PWR0138
U 1 1 6213881D
P 6750 1750
F 0 "#PWR0138" H 6750 1500 50  0001 C CNN
F 1 "GND" H 6755 1577 50  0000 C CNN
F 2 "" H 6750 1750 50  0001 C CNN
F 3 "" H 6750 1750 50  0001 C CNN
	1    6750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1750 6750 1725
$Comp
L power:+3V3 #PWR0139
U 1 1 6213CC87
P 6750 825
F 0 "#PWR0139" H 6750 675 50  0001 C CNN
F 1 "+3V3" H 6765 998 50  0000 C CNN
F 2 "" H 6750 825 50  0001 C CNN
F 3 "" H 6750 825 50  0001 C CNN
	1    6750 825 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 825  6750 975 
Connection ~ 6750 1725
Wire Wire Line
	6750 1725 6750 1675
Wire Wire Line
	6750 1725 6125 1725
Wire Wire Line
	6125 1725 6125 1475
Wire Wire Line
	6125 1275 6350 1275
Wire Wire Line
	6350 1375 6125 1375
Connection ~ 6125 1375
Wire Wire Line
	6125 1375 6125 1275
Wire Wire Line
	6350 1475 6125 1475
Connection ~ 6125 1475
Wire Wire Line
	6125 1475 6125 1375
$Comp
L Device:R_Small R12
U 1 1 62152431
P 7800 1200
F 0 "R12" H 7859 1246 50  0000 L CNN
F 1 "R_Small" H 7859 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7800 1200 50  0001 C CNN
F 3 "~" H 7800 1200 50  0001 C CNN
	1    7800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1475 7800 1300
Wire Wire Line
	7150 1475 7800 1475
Wire Wire Line
	7800 1100 7800 975 
Wire Wire Line
	7800 975  6750 975 
Connection ~ 6750 975 
Wire Wire Line
	6750 975  6750 1075
Text GLabel 8000 1475 2    50   Input ~ 0
EEPROM_WP
Wire Wire Line
	8000 1475 7800 1475
Connection ~ 7800 1475
Text GLabel 8825 3650 2    50   Input ~ 0
EEPROM_WP
Text GLabel 8825 3850 2    50   Input ~ 0
AC_ON
$Comp
L cq1re1-cache:New_Library_Si2302CDS-n-channel TR?
U 1 1 62319062
P 4125 3025
F 0 "TR?" H 4403 3071 50  0000 L CNN
F 1 "Si2302" H 4403 2980 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4155 3175 20  0001 C CNN
F 3 "" H 4125 3025 50  0001 C CNN
	1    4125 3025
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4025 2550 4025 2725
Wire Wire Line
	4025 3625 4025 3325
Wire Wire Line
	5525 2475 5525 3125
Wire Wire Line
	5525 3125 4325 3125
Connection ~ 5525 2475
Wire Wire Line
	5525 2475 5700 2475
$EndSCHEMATC
