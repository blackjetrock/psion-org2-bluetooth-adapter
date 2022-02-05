EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
Text GLabel 2075 3875 0    50   Input ~ 0
SMR
Text GLabel 2075 3975 0    50   Input ~ 0
SCLK
Text GLabel 2075 3775 0    50   Input ~ 0
SOE
Text GLabel 2075 3675 0    50   Input ~ 0
SS
Text GLabel 2075 3575 0    50   Input ~ 0
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
Text GLabel 8500 2925 0    50   Input ~ 0
P_SPGM
Text GLabel 8500 3025 0    50   Input ~ 0
P_SS
Text GLabel 9900 4025 2    50   Input ~ 0
P_SCLK
Text GLabel 8500 3625 0    50   Input ~ 0
P_SD0
Text GLabel 8500 4425 0    50   Input ~ 0
P_SD6
Text GLabel 8500 4125 0    50   Input ~ 0
P_SD4
Text GLabel 8500 3925 0    50   Input ~ 0
P_SD2
Text GLabel 8500 3725 0    50   Input ~ 0
P_SD1
Text GLabel 8500 4025 0    50   Input ~ 0
P_SD3
Text GLabel 8500 4225 0    50   Input ~ 0
P_SD5
Text GLabel 8500 4525 0    50   Input ~ 0
P_SD7
Text GLabel 8500 3525 0    50   Input ~ 0
P_SMR
Text GLabel 8500 3425 0    50   Input ~ 0
P_SOE
Wire Wire Line
	10325 3025 9900 3025
Wire Wire Line
	10875 3325 9900 3325
Wire Wire Line
	8500 4325 7775 4325
Wire Wire Line
	7775 4325 7775 4975
Wire Wire Line
	8500 3825 7775 3825
Wire Wire Line
	7775 3825 7775 4325
Connection ~ 7775 4325
Wire Wire Line
	8500 3325 7775 3325
Wire Wire Line
	7775 3325 7775 3825
Connection ~ 7775 3825
Wire Wire Line
	8500 2825 7775 2825
Wire Wire Line
	7775 2825 7775 3325
Connection ~ 7775 3325
Wire Wire Line
	9900 2825 10875 2825
Wire Wire Line
	10875 2825 10875 3325
Connection ~ 10875 3325
Wire Wire Line
	10325 2400 10325 3025
Wire Wire Line
	10875 3325 10875 3825
Wire Wire Line
	9900 4325 10875 4325
Connection ~ 10875 4325
Wire Wire Line
	10875 4325 10875 5025
Wire Wire Line
	9900 3825 10875 3825
Connection ~ 10875 3825
Wire Wire Line
	10875 3825 10875 4325
Text GLabel 9900 3225 2    50   Input ~ 0
I2C_SDA
Text GLabel 9900 4425 2    50   Input ~ 0
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
Text GLabel 3075 3875 2    50   Input ~ 0
P_SMR
Text GLabel 3075 3975 2    50   Input ~ 0
P_SCLK
Text GLabel 3075 3775 2    50   Input ~ 0
P_SOE
Text GLabel 3075 3675 2    50   Input ~ 0
P_SS
Text GLabel 3075 3575 2    50   Input ~ 0
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
P 7775 4975
AR Path="/61CCCB6C/61CE6182" Ref="#PWR?"  Part="1" 
AR Path="/61CE6182" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 7775 4725 50  0001 C CNN
F 1 "GND" H 7780 4802 50  0000 C CNN
F 2 "" H 7775 4975 50  0001 C CNN
F 3 "" H 7775 4975 50  0001 C CNN
	1    7775 4975
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE6188
P 10875 5025
AR Path="/61CCCB6C/61CE6188" Ref="#PWR?"  Part="1" 
AR Path="/61CE6188" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 10875 4775 50  0001 C CNN
F 1 "GND" H 10875 4825 50  0000 C CNN
F 2 "" H 10875 5025 50  0001 C CNN
F 3 "" H 10875 5025 50  0001 C CNN
	1    10875 5025
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE618E
P 10325 2400
AR Path="/61CCCB6C/61CE618E" Ref="#PWR?"  Part="1" 
AR Path="/61CE618E" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 10325 2250 50  0001 C CNN
F 1 "+3V3" H 10340 2573 50  0000 C CNN
F 2 "" H 10325 2400 50  0001 C CNN
F 3 "" H 10325 2400 50  0001 C CNN
	1    10325 2400
	1    0    0    -1  
$EndComp
$Comp
L rp2040:Pico U?
U 1 1 61CE6194
P 9200 3575
AR Path="/61CCCB6C/61CE6194" Ref="U?"  Part="1" 
AR Path="/61CE6194" Ref="U3"  Part="1" 
F 0 "U3" H 9200 4790 50  0000 C CNN
F 1 "Pico" H 9200 4699 50  0000 C CNN
F 2 "rp2040:RPi_Pico_SMD_TH" V 9200 3575 50  0001 C CNN
F 3 "" H 9200 3575 50  0001 C CNN
	1    9200 3575
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
Text GLabel 9900 2925 2    50   Input ~ 0
3V3_EN
Text GLabel 9900 3125 2    50   Input ~ 0
ADC_REF
Text GLabel 9900 3625 2    50   Input ~ 0
RUN
Text GLabel 9900 2625 2    50   Input ~ 0
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
Text GLabel 9900 3425 2    50   Input ~ 0
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
P 2575 3025
AR Path="/61CCCB6C/61CE61EF" Ref="#PWR?"  Part="1" 
AR Path="/61CE61EF" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 2575 2875 50  0001 C CNN
F 1 "+3.3V" H 2590 3198 50  0000 C CNN
F 2 "" H 2575 3025 50  0001 C CNN
F 3 "" H 2575 3025 50  0001 C CNN
	1    2575 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 3025 2575 3150
Wire Wire Line
	2575 3150 1450 3150
Wire Wire Line
	1450 3150 1450 4475
Wire Wire Line
	1450 4475 2075 4475
Connection ~ 2575 3150
Wire Wire Line
	2575 3150 2575 3275
Wire Wire Line
	2575 4875 2575 4900
Wire Wire Line
	2575 4900 2075 4900
Wire Wire Line
	2075 4900 2075 4575
Connection ~ 2575 4900
Wire Wire Line
	2575 4900 2575 5025
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 61CE6206
P 9200 5750
AR Path="/61CCCB6C/61CE6206" Ref="J?"  Part="1" 
AR Path="/61CE6206" Ref="J7"  Part="1" 
F 0 "J7" V 9046 5898 50  0000 L CNN
F 1 "Conn_01x03_Female" V 9137 5898 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9200 5750 50  0001 C CNN
F 3 "~" H 9200 5750 50  0001 C CNN
	1    9200 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 5550 9300 4725
Wire Wire Line
	9100 4725 9100 5550
Wire Wire Line
	9725 5300 9200 5300
Wire Wire Line
	9200 4725 9200 5300
Wire Wire Line
	9725 5300 9725 6150
Wire Wire Line
	9200 5550 9200 5300
Connection ~ 9200 5300
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
	3450 4425 3450 4375
Wire Wire Line
	3450 4625 3450 4725
$Comp
L Device:C_Small C?
U 1 1 61CE6280
P 3450 4525
AR Path="/61CCCB6C/61CE6280" Ref="C?"  Part="1" 
AR Path="/61CE6280" Ref="C1"  Part="1" 
F 0 "C1" H 3542 4571 50  0000 L CNN
F 1 "100nF" H 3542 4480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3450 4525 50  0001 C CNN
F 3 "~" H 3450 4525 50  0001 C CNN
	1    3450 4525
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61CE6286
P 3450 4375
AR Path="/61CCCB6C/61CE6286" Ref="#PWR?"  Part="1" 
AR Path="/61CE6286" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 3450 4225 50  0001 C CNN
F 1 "+3V3" H 3465 4548 50  0000 C CNN
F 2 "" H 3450 4375 50  0001 C CNN
F 3 "" H 3450 4375 50  0001 C CNN
	1    3450 4375
	-1   0    0    -1  
$EndComp
Text Notes 5425 1125 0    50   ~ 10
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
P 2575 5025
F 0 "#PWR0107" H 2575 4775 50  0001 C CNN
F 1 "GND" H 2580 4852 50  0000 C CNN
F 2 "" H 2575 5025 50  0001 C CNN
F 3 "" H 2575 5025 50  0001 C CNN
	1    2575 5025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61CEDAFC
P 3450 4725
F 0 "#PWR0108" H 3450 4475 50  0001 C CNN
F 1 "GND" H 3455 4552 50  0000 C CNN
F 2 "" H 3450 4725 50  0001 C CNN
F 3 "" H 3450 4725 50  0001 C CNN
	1    3450 4725
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
P 9725 6150
F 0 "#PWR0115" H 9725 5900 50  0001 C CNN
F 1 "GND" H 9730 5977 50  0000 C CNN
F 2 "" H 9725 6150 50  0001 C CNN
F 3 "" H 9725 6150 50  0001 C CNN
	1    9725 6150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 61CE61E9
P 2575 4075
AR Path="/61CCCB6C/61CE61E9" Ref="U?"  Part="1" 
AR Path="/61CE61E9" Ref="U1"  Part="1" 
F 0 "U1" H 2850 4975 50  0000 C CNN
F 1 "74LS245" H 2950 4875 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 2575 4075 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 2575 4075 50  0001 C CNN
	1    2575 4075
	1    0    0    -1  
$EndComp
$Sheet
S 9150 900  900  450 
U 61D041C0
F0 "Sheet61D041BF" 50
F1 "file61D041BF.sch" 50
$EndSheet
Text GLabel 8500 3125 0    50   Input ~ 0
PICO_TX
Text GLabel 8500 3225 0    50   Input ~ 0
PICO_RX
Text Notes 8025 2050 0    50   ~ 0
Pico USB could be used as USB \nserial if a connection is made to it.
Text GLabel 9900 4125 2    50   Input ~ 0
WROOM_ON
$Comp
L Device:D_Schottky D1
U 1 1 61D1AB6B
P 10725 2200
F 0 "D1" V 10771 2121 50  0000 R CNN
F 1 "D_Schottky" V 10680 2121 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 10725 2200 50  0001 C CNN
F 3 "~" H 10725 2200 50  0001 C CNN
	1    10725 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10725 2350 10725 2725
Wire Wire Line
	10725 2725 9900 2725
Text GLabel 10525 1825 0    50   Input ~ 0
VREG
Wire Wire Line
	10525 1825 10725 1825
Wire Wire Line
	10725 1825 10725 2050
$Sheet
S 5150 6750 1450 700 
U 61D0535C
F0 "Sheet61D0535B" 50
F1 "Power.sch" 50
$EndSheet
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 61FE4035
P 3875 1575
F 0 "TR?" H 4152 1621 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 4152 1530 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3905 1725 20  0001 C CNN
F 3 "" H 3875 1575 50  0001 C CNN
	1    3875 1575
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61FE693E
P 3775 1075
F 0 "R?" H 3834 1121 50  0000 L CNN
F 1 "10k" H 3834 1030 50  0000 L CNN
F 2 "" H 3775 1075 50  0001 C CNN
F 3 "~" H 3775 1075 50  0001 C CNN
	1    3775 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 1175 3775 1250
Text GLabel 3650 825  0    50   Input ~ 0
VCC
Wire Wire Line
	3650 825  3775 825 
Wire Wire Line
	3775 825  3775 975 
$Comp
L power:GND #PWR?
U 1 1 61FEC72B
P 3775 1975
F 0 "#PWR?" H 3775 1725 50  0001 C CNN
F 1 "GND" H 3780 1802 50  0000 C CNN
F 2 "" H 3775 1975 50  0001 C CNN
F 3 "" H 3775 1975 50  0001 C CNN
	1    3775 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 1975 3775 1875
Text GLabel 9900 4225 2    50   Input ~ 0
TX_TO_PSION
Text GLabel 4825 1675 2    50   Input ~ 0
TX_TO_PSION
$Comp
L Device:R_Small R?
U 1 1 61FF1FB0
P 4400 1875
F 0 "R?" H 4459 1921 50  0000 L CNN
F 1 "100k" H 4459 1830 50  0000 L CNN
F 2 "" H 4400 1875 50  0001 C CNN
F 3 "~" H 4400 1875 50  0001 C CNN
	1    4400 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 1675 4400 1675
Wire Wire Line
	4400 1775 4400 1675
Connection ~ 4400 1675
Wire Wire Line
	4400 1675 4825 1675
$Comp
L power:GND #PWR?
U 1 1 61FF78FC
P 4400 1975
F 0 "#PWR?" H 4400 1725 50  0001 C CNN
F 1 "GND" H 4405 1802 50  0000 C CNN
F 2 "" H 4400 1975 50  0001 C CNN
F 3 "" H 4400 1975 50  0001 C CNN
	1    4400 1975
	1    0    0    -1  
$EndComp
Text GLabel 3300 1250 0    50   Input ~ 0
SD3
Wire Wire Line
	3300 1250 3775 1250
Connection ~ 3775 1250
Wire Wire Line
	3775 1250 3775 1275
Text Notes 1375 2600 0    50   ~ 0
The 74LVC245 diection is set for all 8 data bits,\nso we run a separate TX from the Pico to the RX of the\nPsion (on bit 3). This is open collector as a level shifter\nand also inverts the data. Fortunately a stop bit is a 1 and a \nstart bit is a 0. The transistor being off can be driven by the psion\nwhen loading the ROM and is seen as a stop bit (idle) when in\nserial mode.
$EndSCHEMATC
