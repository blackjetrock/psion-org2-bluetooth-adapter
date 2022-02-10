EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "Psion Organiser Bluetooth Adapter"
Date "2022-01-01"
Rev "1.1"
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
Text GLabel 2100 6075 0    50   Input ~ 0
SD0
Text GLabel 2100 6175 0    50   Input ~ 0
SD1
Text GLabel 2100 6275 0    50   Input ~ 0
SD2
Text GLabel 2100 6375 0    50   Input ~ 0
SD3
Text GLabel 2100 6475 0    50   Input ~ 0
SD4
Text GLabel 2100 6575 0    50   Input ~ 0
SD5
Text GLabel 2100 6675 0    50   Input ~ 0
SD6
Text GLabel 2100 6775 0    50   Input ~ 0
SD7
Text GLabel 1225 3850 0    50   Input ~ 0
SMR
Text GLabel 1225 3950 0    50   Input ~ 0
SCLK
Text GLabel 1225 3750 0    50   Input ~ 0
SOE
Text GLabel 1225 3650 0    50   Input ~ 0
SS
Text GLabel 1225 3550 0    50   Input ~ 0
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
Text GLabel 8075 3025 0    50   Input ~ 0
P_SPGM
Text GLabel 8075 3125 0    50   Input ~ 0
P_SS
Text GLabel 9475 4125 2    50   Input ~ 0
P_SCLK
Text GLabel 8075 3725 0    50   Input ~ 0
P_SD0
Text GLabel 8075 4525 0    50   Input ~ 0
P_SD6
Text GLabel 8075 4225 0    50   Input ~ 0
P_SD4
Text GLabel 8075 4025 0    50   Input ~ 0
P_SD2
Text GLabel 8075 3825 0    50   Input ~ 0
P_SD1
Text GLabel 8075 4125 0    50   Input ~ 0
P_SD3
Text GLabel 8075 4325 0    50   Input ~ 0
P_SD5
Text GLabel 8075 4625 0    50   Input ~ 0
P_SD7
Text GLabel 8075 3625 0    50   Input ~ 0
P_SMR
Text GLabel 8075 3525 0    50   Input ~ 0
P_SOE
Wire Wire Line
	9900 3125 9475 3125
Wire Wire Line
	10450 3425 9475 3425
Wire Wire Line
	8075 4425 7350 4425
Wire Wire Line
	7350 4425 7350 5075
Wire Wire Line
	8075 3925 7350 3925
Wire Wire Line
	7350 3925 7350 4425
Connection ~ 7350 4425
Wire Wire Line
	8075 3425 7350 3425
Wire Wire Line
	7350 3425 7350 3925
Connection ~ 7350 3925
Wire Wire Line
	8075 2925 7350 2925
Wire Wire Line
	7350 2925 7350 3425
Connection ~ 7350 3425
Wire Wire Line
	9475 2925 10450 2925
Wire Wire Line
	10450 2925 10450 3425
Connection ~ 10450 3425
Wire Wire Line
	9900 2500 9900 3125
Wire Wire Line
	10450 3425 10450 3925
Wire Wire Line
	9475 4425 10450 4425
Connection ~ 10450 4425
Wire Wire Line
	10450 4425 10450 5125
Wire Wire Line
	9475 3925 10450 3925
Connection ~ 10450 3925
Wire Wire Line
	10450 3925 10450 4425
Text GLabel 9475 3325 2    50   Input ~ 0
I2C_SDA
Text GLabel 9475 4525 2    50   Input ~ 0
I2C_SCLK
Text GLabel 3100 6075 2    50   Input ~ 0
P_SD0
Text GLabel 3100 6175 2    50   Input ~ 0
P_SD1
Text GLabel 3100 6275 2    50   Input ~ 0
P_SD2
Text GLabel 3100 6375 2    50   Input ~ 0
P_SD3
Text GLabel 3100 6475 2    50   Input ~ 0
P_SD4
Text GLabel 3100 6575 2    50   Input ~ 0
P_SD5
Text GLabel 3100 6675 2    50   Input ~ 0
P_SD6
Text GLabel 3100 6775 2    50   Input ~ 0
P_SD7
Text GLabel 2225 3850 2    50   Input ~ 0
P_SMR
Text GLabel 2225 3950 2    50   Input ~ 0
P_SCLK
Text GLabel 2225 3750 2    50   Input ~ 0
P_SOE
Text GLabel 2225 3650 2    50   Input ~ 0
P_SS
Text GLabel 2225 3550 2    50   Input ~ 0
P_SPGM
Wire Wire Line
	3675 6825 3675 6775
Wire Wire Line
	3675 7025 3675 7125
$Comp
L Device:C_Small C?
U 1 1 61CE617C
P 3675 6925
AR Path="/61CCCB6C/61CE617C" Ref="C?"  Part="1" 
AR Path="/61CE617C" Ref="C2"  Part="1" 
F 0 "C2" H 3767 6971 50  0000 L CNN
F 1 "100nF" H 3767 6880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3675 6925 50  0001 C CNN
F 3 "~" H 3675 6925 50  0001 C CNN
	1    3675 6925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE6182
P 7350 5075
AR Path="/61CCCB6C/61CE6182" Ref="#PWR?"  Part="1" 
AR Path="/61CE6182" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 7350 4825 50  0001 C CNN
F 1 "GND" H 7355 4902 50  0000 C CNN
F 2 "" H 7350 5075 50  0001 C CNN
F 3 "" H 7350 5075 50  0001 C CNN
	1    7350 5075
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE6188
P 10450 5125
AR Path="/61CCCB6C/61CE6188" Ref="#PWR?"  Part="1" 
AR Path="/61CE6188" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 10450 4875 50  0001 C CNN
F 1 "GND" H 10450 4925 50  0000 C CNN
F 2 "" H 10450 5125 50  0001 C CNN
F 3 "" H 10450 5125 50  0001 C CNN
	1    10450 5125
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE618E
P 9900 2500
AR Path="/61CCCB6C/61CE618E" Ref="#PWR?"  Part="1" 
AR Path="/61CE618E" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 9900 2350 50  0001 C CNN
F 1 "+3V3" H 9915 2673 50  0000 C CNN
F 2 "" H 9900 2500 50  0001 C CNN
F 3 "" H 9900 2500 50  0001 C CNN
	1    9900 2500
	1    0    0    -1  
$EndComp
$Comp
L rp2040:Pico U?
U 1 1 61CE6194
P 8775 3675
AR Path="/61CCCB6C/61CE6194" Ref="U?"  Part="1" 
AR Path="/61CE6194" Ref="U3"  Part="1" 
F 0 "U3" H 8775 4890 50  0000 C CNN
F 1 "Pico" H 8775 4799 50  0000 C CNN
F 2 "rp2040:RPi_Pico_SMD_TH" V 8775 3675 50  0001 C CNN
F 3 "" H 8775 3675 50  0001 C CNN
	1    8775 3675
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE619A
P 3675 6775
AR Path="/61CCCB6C/61CE619A" Ref="#PWR?"  Part="1" 
AR Path="/61CE619A" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3675 6625 50  0001 C CNN
F 1 "+3V3" H 3690 6948 50  0000 C CNN
F 2 "" H 3675 6775 50  0001 C CNN
F 3 "" H 3675 6775 50  0001 C CNN
	1    3675 6775
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE61A0
P 2600 7475
AR Path="/61CCCB6C/61CE61A0" Ref="#PWR?"  Part="1" 
AR Path="/61CE61A0" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 2600 7225 50  0001 C CNN
F 1 "GND" H 2605 7302 50  0000 C CNN
F 2 "" H 2600 7475 50  0001 C CNN
F 3 "" H 2600 7475 50  0001 C CNN
	1    2600 7475
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE61A6
P 925 1625
AR Path="/61CCCB6C/61CE61A6" Ref="#PWR?"  Part="1" 
AR Path="/61CE61A6" Ref="#PWR0106"  Part="1" 
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
Text GLabel 9475 3025 2    50   Input ~ 0
3V3_EN
Text GLabel 9475 3225 2    50   Input ~ 0
ADC_REF
Text GLabel 9475 3725 2    50   Input ~ 0
RUN
Text GLabel 9475 2725 2    50   Input ~ 0
VBUS
$Comp
L 74xx:74LS245 U?
U 1 1 61CE61C7
P 2600 6575
AR Path="/61CCCB6C/61CE61C7" Ref="U?"  Part="1" 
AR Path="/61CE61C7" Ref="U2"  Part="1" 
F 0 "U2" H 2950 7475 50  0000 C CNN
F 1 "74LS245" H 3025 7400 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 2600 6575 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 2600 6575 50  0001 C CNN
	1    2600 6575
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5500 2600 5625
Wire Wire Line
	2600 7475 2600 7425
$Comp
L mirotan-due-cassette-shield-cache:+3.3V #PWR?
U 1 1 61CE61CF
P 2600 5500
AR Path="/61CCCB6C/61CE61CF" Ref="#PWR?"  Part="1" 
AR Path="/61CE61CF" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 2600 5350 50  0001 C CNN
F 1 "+3.3V" H 2615 5673 50  0000 C CNN
F 2 "" H 2600 5500 50  0001 C CNN
F 3 "" H 2600 5500 50  0001 C CNN
	1    2600 5500
	1    0    0    -1  
$EndComp
Text GLabel 1050 6975 0    50   Input ~ 0
LS_DIR
Text GLabel 9475 3525 2    50   Input ~ 0
LS_DIR
Wire Wire Line
	2100 7425 2600 7425
Wire Wire Line
	2100 7075 2100 7425
Connection ~ 2600 7425
Wire Wire Line
	2600 7425 2600 7375
$Comp
L Device:R_Small R?
U 1 1 61CE61DB
P 1325 6525
AR Path="/60C45767/61CE61DB" Ref="R?"  Part="1" 
AR Path="/61CE61DB" Ref="R3"  Part="1" 
AR Path="/61CCCB6C/61CE61DB" Ref="R?"  Part="1" 
F 0 "R3" H 1384 6571 50  0000 L CNN
F 1 "R_Small" H 1384 6480 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1325 6525 50  0001 C CNN
F 3 "~" H 1325 6525 50  0001 C CNN
	1    1325 6525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5625 1325 5625
Wire Wire Line
	1325 5625 1325 6425
Connection ~ 2600 5625
Wire Wire Line
	2600 5625 2600 5775
Wire Wire Line
	1325 6625 1325 6975
Wire Wire Line
	1325 6975 2100 6975
Wire Wire Line
	1050 6975 1325 6975
Connection ~ 1325 6975
$Comp
L mirotan-due-cassette-shield-cache:+3.3V #PWR?
U 1 1 61CE61EF
P 1725 3000
AR Path="/61CCCB6C/61CE61EF" Ref="#PWR?"  Part="1" 
AR Path="/61CE61EF" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 1725 2850 50  0001 C CNN
F 1 "+3.3V" H 1740 3173 50  0000 C CNN
F 2 "" H 1725 3000 50  0001 C CNN
F 3 "" H 1725 3000 50  0001 C CNN
	1    1725 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 3000 1725 3125
Wire Wire Line
	1725 3125 600  3125
Wire Wire Line
	600  3125 600  4450
Wire Wire Line
	600  4450 1225 4450
Connection ~ 1725 3125
Wire Wire Line
	1725 3125 1725 3250
Wire Wire Line
	1725 4850 1725 4875
Wire Wire Line
	1725 4875 1225 4875
Wire Wire Line
	1225 4875 1225 4550
Connection ~ 1725 4875
Wire Wire Line
	1725 4875 1725 5000
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 61CE6206
P 8775 5850
AR Path="/61CCCB6C/61CE6206" Ref="J?"  Part="1" 
AR Path="/61CE6206" Ref="J7"  Part="1" 
F 0 "J7" V 8621 5998 50  0000 L CNN
F 1 "Conn_01x03_Female" V 8712 5998 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8775 5850 50  0001 C CNN
F 3 "~" H 8775 5850 50  0001 C CNN
	1    8775 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	8875 5650 8875 4825
Wire Wire Line
	8675 4825 8675 5650
Wire Wire Line
	9300 5400 8775 5400
Wire Wire Line
	8775 4825 8775 5400
Wire Wire Line
	9300 5400 9300 6250
Wire Wire Line
	8775 5650 8775 5400
Connection ~ 8775 5400
$Comp
L Connector:Conn_01x04_Female J?
U 1 1 61CE6219
P 4925 3250
AR Path="/61CCCB6C/61CE6219" Ref="J?"  Part="1" 
AR Path="/61CE6219" Ref="J5"  Part="1" 
F 0 "J5" H 4817 3535 50  0000 C CNN
F 1 "Conn_01x04_Female" H 4817 3444 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4925 3250 50  0001 C CNN
F 3 "~" H 4925 3250 50  0001 C CNN
	1    4925 3250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61CE621F
P 5975 2700
AR Path="/61CCCB6C/61CE621F" Ref="R?"  Part="1" 
AR Path="/61CE621F" Ref="R4"  Part="1" 
F 0 "R4" H 6034 2746 50  0000 L CNN
F 1 "4k7" H 6034 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5975 2700 50  0001 C CNN
F 3 "~" H 5975 2700 50  0001 C CNN
	1    5975 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61CE6225
P 6450 2700
AR Path="/61CCCB6C/61CE6225" Ref="R?"  Part="1" 
AR Path="/61CE6225" Ref="R5"  Part="1" 
F 0 "R5" H 6509 2746 50  0000 L CNN
F 1 "4k7" H 6509 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6450 2700 50  0001 C CNN
F 3 "~" H 6450 2700 50  0001 C CNN
	1    6450 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE622B
P 5700 2400
AR Path="/61CCCB6C/61CE622B" Ref="#PWR?"  Part="1" 
AR Path="/61CE622B" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 5700 2250 50  0001 C CNN
F 1 "+3V3" H 5715 2573 50  0000 C CNN
F 2 "" H 5700 2400 50  0001 C CNN
F 3 "" H 5700 2400 50  0001 C CNN
	1    5700 2400
	1    0    0    -1  
$EndComp
Connection ~ 5975 2525
Wire Wire Line
	6450 2525 6450 2600
Wire Wire Line
	5975 2525 6450 2525
Wire Wire Line
	5975 2525 5975 2600
Wire Wire Line
	5700 2525 5975 2525
Wire Wire Line
	5700 2400 5700 2525
Wire Wire Line
	5125 3250 6450 3250
Connection ~ 6450 3250
Wire Wire Line
	6850 3250 6450 3250
Connection ~ 5975 3150
Wire Wire Line
	6850 3150 5975 3150
Text GLabel 6850 3250 2    50   Input ~ 0
I2C_SCLK
Text GLabel 6850 3150 2    50   Input ~ 0
I2C_SDA
Wire Wire Line
	6450 2800 6450 3250
Wire Wire Line
	5975 3150 5975 2800
Wire Wire Line
	5125 3150 5975 3150
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 61CE6247
P 5850 3600
AR Path="/61CCCB6C/61CE6247" Ref="JP?"  Part="1" 
AR Path="/61CE6247" Ref="JP3"  Part="1" 
F 0 "JP3" H 5850 3785 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5850 3694 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5850 3600 50  0001 C CNN
F 3 "~" H 5850 3600 50  0001 C CNN
	1    5850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 61CE624D
P 5850 3775
AR Path="/61CCCB6C/61CE624D" Ref="JP?"  Part="1" 
AR Path="/61CE624D" Ref="JP4"  Part="1" 
F 0 "JP4" H 5850 3960 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5850 3869 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5850 3775 50  0001 C CNN
F 3 "~" H 5850 3775 50  0001 C CNN
	1    5850 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 61CE6253
P 5825 4125
AR Path="/61CCCB6C/61CE6253" Ref="JP?"  Part="1" 
AR Path="/61CE6253" Ref="JP1"  Part="1" 
F 0 "JP1" H 5825 4310 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5825 4219 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5825 4125 50  0001 C CNN
F 3 "~" H 5825 4125 50  0001 C CNN
	1    5825 4125
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 61CE6259
P 5825 4300
AR Path="/61CCCB6C/61CE6259" Ref="JP?"  Part="1" 
AR Path="/61CE6259" Ref="JP2"  Part="1" 
F 0 "JP2" H 5825 4485 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5825 4394 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5825 4300 50  0001 C CNN
F 3 "~" H 5825 4300 50  0001 C CNN
	1    5825 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 3350 5575 3350
Wire Wire Line
	5575 3350 5575 3600
Wire Wire Line
	5575 3600 5750 3600
Wire Wire Line
	5575 3600 5575 4125
Wire Wire Line
	5575 4125 5725 4125
Connection ~ 5575 3600
Wire Wire Line
	5125 3450 5425 3450
Wire Wire Line
	5425 3450 5425 3775
Wire Wire Line
	5425 3775 5750 3775
Wire Wire Line
	5425 3775 5425 4300
Wire Wire Line
	5425 4300 5725 4300
Connection ~ 5425 3775
Wire Wire Line
	5925 4300 6425 4300
Wire Wire Line
	6425 4300 6425 4475
Wire Wire Line
	5925 4125 6425 4125
Wire Wire Line
	6425 4125 6425 4300
Connection ~ 6425 4300
Wire Wire Line
	5700 2525 5700 3300
Wire Wire Line
	5700 3300 6075 3300
Wire Wire Line
	6075 3300 6075 3600
Wire Wire Line
	6075 3600 5950 3600
Connection ~ 5700 2525
Wire Wire Line
	5950 3775 6075 3775
Wire Wire Line
	6075 3775 6075 3600
Connection ~ 6075 3600
Wire Wire Line
	2600 4400 2600 4350
Wire Wire Line
	2600 4600 2600 4700
$Comp
L Device:C_Small C?
U 1 1 61CE6280
P 2600 4500
AR Path="/61CCCB6C/61CE6280" Ref="C?"  Part="1" 
AR Path="/61CE6280" Ref="C1"  Part="1" 
F 0 "C1" H 2692 4546 50  0000 L CNN
F 1 "100nF" H 2692 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2600 4500 50  0001 C CNN
F 3 "~" H 2600 4500 50  0001 C CNN
	1    2600 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE6286
P 2600 4350
AR Path="/61CCCB6C/61CE6286" Ref="#PWR?"  Part="1" 
AR Path="/61CE6286" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 2600 4200 50  0001 C CNN
F 1 "+3V3" H 2615 4523 50  0000 C CNN
F 2 "" H 2600 4350 50  0001 C CNN
F 3 "" H 2600 4350 50  0001 C CNN
	1    2600 4350
	-1   0    0    -1  
$EndComp
Text Notes 5350 -175 0    50   ~ 10
Bluetooth Adapter Breakout Board\nAttaches to top slot and allows Bluetooth communication\nCan have ROM in Pico flash (COMMS link)\nRTS/DTS not used\nOLED display for debug only, not needed for final PCB\n
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
P 1725 5000
F 0 "#PWR0107" H 1725 4750 50  0001 C CNN
F 1 "GND" H 1730 4827 50  0000 C CNN
F 2 "" H 1725 5000 50  0001 C CNN
F 3 "" H 1725 5000 50  0001 C CNN
	1    1725 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61CEDAFC
P 2600 4700
F 0 "#PWR0108" H 2600 4450 50  0001 C CNN
F 1 "GND" H 2605 4527 50  0000 C CNN
F 2 "" H 2600 4700 50  0001 C CNN
F 3 "" H 2600 4700 50  0001 C CNN
	1    2600 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 61CEDD65
P 3675 7125
F 0 "#PWR0113" H 3675 6875 50  0001 C CNN
F 1 "GND" H 3680 6952 50  0000 C CNN
F 2 "" H 3675 7125 50  0001 C CNN
F 3 "" H 3675 7125 50  0001 C CNN
	1    3675 7125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61CEDF39
P 6425 4475
F 0 "#PWR0114" H 6425 4225 50  0001 C CNN
F 1 "GND" H 6430 4302 50  0000 C CNN
F 2 "" H 6425 4475 50  0001 C CNN
F 3 "" H 6425 4475 50  0001 C CNN
	1    6425 4475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 61CEE0B8
P 9300 6250
F 0 "#PWR0115" H 9300 6000 50  0001 C CNN
F 1 "GND" H 9305 6077 50  0000 C CNN
F 2 "" H 9300 6250 50  0001 C CNN
F 3 "" H 9300 6250 50  0001 C CNN
	1    9300 6250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 61CE61E9
P 1725 4050
AR Path="/61CCCB6C/61CE61E9" Ref="U?"  Part="1" 
AR Path="/61CE61E9" Ref="U1"  Part="1" 
F 0 "U1" H 2000 4950 50  0000 C CNN
F 1 "74LS245" H 2100 4850 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 1725 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 1725 4050 50  0001 C CNN
	1    1725 4050
	1    0    0    -1  
$EndComp
$Sheet
S 10200 675  900  450 
U 61D041C0
F0 "Sheet61D041BF" 50
F1 "file61D041BF.sch" 50
$EndSheet
Text GLabel 8075 3225 0    50   Input ~ 0
PICO_TX
Text GLabel 8075 3325 0    50   Input ~ 0
PICO_RX
Text Notes 6850 6300 0    50   ~ 0
Pico USB could be used as USB \nserial if a connection is made to it.
Text GLabel 9475 4225 2    50   Input ~ 0
WROOM_ON
$Comp
L Device:D_Schottky D1
U 1 1 61D1AB6B
P 10300 2300
F 0 "D1" V 10346 2221 50  0000 R CNN
F 1 "D_Schottky" V 10255 2221 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 10300 2300 50  0001 C CNN
F 3 "~" H 10300 2300 50  0001 C CNN
	1    10300 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10300 2450 10300 2825
Wire Wire Line
	10300 2825 9475 2825
Text GLabel 10100 1925 0    50   Input ~ 0
VREG
Wire Wire Line
	10100 1925 10300 1925
Wire Wire Line
	10300 1925 10300 2150
$Sheet
S 5150 6750 1450 700 
U 61D0535C
F0 "Sheet61D0535B" 50
F1 "Power.sch" 50
$EndSheet
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 61FE4035
P 3475 2125
F 0 "TR?" H 3752 2171 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 3752 2080 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3505 2275 20  0001 C CNN
F 3 "" H 3475 2125 50  0001 C CNN
	1    3475 2125
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61FE693E
P 6925 2000
F 0 "R?" H 6984 2046 50  0000 L CNN
F 1 "10k" H 6984 1955 50  0000 L CNN
F 2 "" H 6925 2000 50  0001 C CNN
F 3 "~" H 6925 2000 50  0001 C CNN
	1    6925 2000
	1    0    0    -1  
$EndComp
Text GLabel 2975 550  0    50   Input ~ 0
VCC
$Comp
L power:GND #PWR?
U 1 1 61FEC72B
P 3375 2525
F 0 "#PWR?" H 3375 2275 50  0001 C CNN
F 1 "GND" H 3380 2352 50  0000 C CNN
F 2 "" H 3375 2525 50  0001 C CNN
F 3 "" H 3375 2525 50  0001 C CNN
	1    3375 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 2525 3375 2425
Text GLabel 9475 4325 2    50   Input ~ 0
TX_TO_PSION
Text GLabel 4425 2225 2    50   Input ~ 0
TX_TO_PSION
$Comp
L Device:R_Small R?
U 1 1 61FF1FB0
P 4000 2425
F 0 "R?" H 4059 2471 50  0000 L CNN
F 1 "10k" H 4059 2380 50  0000 L CNN
F 2 "" H 4000 2425 50  0001 C CNN
F 3 "~" H 4000 2425 50  0001 C CNN
	1    4000 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3675 2225 4000 2225
Wire Wire Line
	4000 2325 4000 2225
Connection ~ 4000 2225
Wire Wire Line
	4000 2225 4425 2225
$Comp
L power:GND #PWR?
U 1 1 61FF78FC
P 4000 2525
F 0 "#PWR?" H 4000 2275 50  0001 C CNN
F 1 "GND" H 4005 2352 50  0000 C CNN
F 2 "" H 4000 2525 50  0001 C CNN
F 3 "" H 4000 2525 50  0001 C CNN
	1    4000 2525
	1    0    0    -1  
$EndComp
Text GLabel 2900 1800 0    50   Input ~ 0
SD3
Wire Wire Line
	2900 1800 3375 1800
Connection ~ 3375 1800
Wire Wire Line
	3375 1800 3375 1825
Text Notes -250 -150 0    50   ~ 0
The 74LVC245 diection is set for all 8 data bits,\nso we run a separate TX from the Pico to the RX of the\nPsion (on bit 3). This is open collector as a level shifter\nand also inverts the data. Fortunately a stop bit is a 1 and a \nstart bit is a 0. The transistor being off can be driven by the psion\nwhen loading the ROM and is seen as a stop bit (idle) when in\nserial mode.
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 62005AB1
P 6375 1750
F 0 "TR?" H 6652 1796 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 6652 1705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6405 1900 20  0001 C CNN
F 3 "" H 6375 1750 50  0001 C CNN
	1    6375 1750
	-1   0    0    -1  
$EndComp
$Comp
L cq1re1-cache:GeekAmmo_P-CHANNEL-MOSFET M?
U 1 1 6200A654
P 3475 1325
F 0 "M?" H 3752 1371 50  0000 L CNN
F 1 "GeekAmmo_P-CHANNEL-MOSFET" H 3752 1280 50  0000 L CNN
F 2 "SOT23-3" H 3505 1475 20  0001 C CNN
F 3 "" H 3475 1325 50  0001 C CNN
	1    3475 1325
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6201D748
P 3375 825
F 0 "R?" H 3434 871 50  0000 L CNN
F 1 "4k7" H 3434 780 50  0000 L CNN
F 2 "" H 3375 825 50  0001 C CNN
F 3 "~" H 3375 825 50  0001 C CNN
	1    3375 825 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 550  3375 550 
Wire Wire Line
	3375 550  3375 725 
Wire Wire Line
	3375 1625 3375 1800
$Comp
L power:GND #PWR?
U 1 1 62031B0D
P 6275 2150
F 0 "#PWR?" H 6275 1900 50  0001 C CNN
F 1 "GND" H 6280 1977 50  0000 C CNN
F 2 "" H 6275 2150 50  0001 C CNN
F 3 "" H 6275 2150 50  0001 C CNN
	1    6275 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62032555
P 6925 2200
F 0 "#PWR?" H 6925 1950 50  0001 C CNN
F 1 "GND" H 6930 2027 50  0000 C CNN
F 2 "" H 6925 2200 50  0001 C CNN
F 3 "" H 6925 2200 50  0001 C CNN
	1    6925 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6925 2200 6925 2100
Wire Wire Line
	6275 2150 6275 2050
Wire Wire Line
	6575 1850 6925 1850
Wire Wire Line
	3375 925  3375 1025
Wire Wire Line
	6275 1450 6275 1225
Wire Wire Line
	6275 1225 4000 1225
$Comp
L Device:R_Small R?
U 1 1 62042A93
P 4000 825
F 0 "R?" H 4059 871 50  0000 L CNN
F 1 "10k" H 4059 780 50  0000 L CNN
F 2 "" H 4000 825 50  0001 C CNN
F 3 "~" H 4000 825 50  0001 C CNN
	1    4000 825 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 550  4000 550 
Wire Wire Line
	4000 550  4000 725 
Connection ~ 3375 550 
Wire Wire Line
	4000 925  4000 1225
Connection ~ 4000 1225
Wire Wire Line
	4000 1225 3675 1225
Text GLabel 7525 1850 2    50   Input ~ 0
TRITX
Wire Wire Line
	6925 1900 6925 1850
Wire Wire Line
	7525 1850 6925 1850
Connection ~ 6925 1850
Text GLabel 9475 4625 2    50   Input ~ 0
TRITX
$Comp
L Device:R_Small R?
U 1 1 6206CB12
P 10775 3400
F 0 "R?" H 10834 3446 50  0000 L CNN
F 1 "R_Small" H 10834 3355 50  0000 L CNN
F 2 "" H 10775 3400 50  0001 C CNN
F 3 "~" H 10775 3400 50  0001 C CNN
	1    10775 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6206D93A
P 10775 4050
F 0 "R?" H 10834 4096 50  0000 L CNN
F 1 "R_Small" H 10834 4005 50  0000 L CNN
F 2 "" H 10775 4050 50  0001 C CNN
F 3 "~" H 10775 4050 50  0001 C CNN
	1    10775 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10775 3950 10775 3625
Wire Wire Line
	9475 3625 10775 3625
Connection ~ 10775 3625
Wire Wire Line
	10775 3625 10775 3500
$Comp
L power:GND #PWR?
U 1 1 6208D396
P 10775 4250
F 0 "#PWR?" H 10775 4000 50  0001 C CNN
F 1 "GND" H 10780 4077 50  0000 C CNN
F 2 "" H 10775 4250 50  0001 C CNN
F 3 "" H 10775 4250 50  0001 C CNN
	1    10775 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10775 4250 10775 4150
Wire Wire Line
	10300 1925 10775 1925
Wire Wire Line
	10775 1925 10775 3300
Connection ~ 10300 1925
$EndSCHEMATC
