EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS244 U4
U 1 1 613E77B4
P 3275 2425
F 0 "U4" H 3075 3400 50  0000 C CNN
F 1 "74LS244" H 2950 3300 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3275 2425 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 3275 2425 50  0001 C CNN
	1    3275 2425
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS374 U5
U 1 1 613E92C3
P 3325 4650
F 0 "U5" H 3675 5600 50  0000 C CNN
F 1 "74LS374" H 3800 5500 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3325 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 3325 4650 50  0001 C CNN
	1    3325 4650
	1    0    0    -1  
$EndComp
Text GLabel 2775 1925 0    50   Input ~ 0
P_SD0
Text GLabel 2775 2025 0    50   Input ~ 0
P_SD1
Text GLabel 2775 2125 0    50   Input ~ 0
P_SD2
Text GLabel 2775 2225 0    50   Input ~ 0
P_SD3
Text GLabel 2775 2325 0    50   Input ~ 0
P_SD4
Text GLabel 2775 2425 0    50   Input ~ 0
P_SD5
Text GLabel 2775 2525 0    50   Input ~ 0
P_SD6
Text GLabel 2775 2625 0    50   Input ~ 0
P_SD7
Text GLabel 2825 4150 0    50   Input ~ 0
P_SD0
Text GLabel 2825 4250 0    50   Input ~ 0
P_SD1
Text GLabel 2825 4350 0    50   Input ~ 0
P_SD2
Text GLabel 2825 4450 0    50   Input ~ 0
P_SD3
Text GLabel 2825 4550 0    50   Input ~ 0
P_SD4
Text GLabel 2825 4650 0    50   Input ~ 0
P_SD5
Text GLabel 2825 4750 0    50   Input ~ 0
P_SD6
Text GLabel 2825 4850 0    50   Input ~ 0
P_SD7
$Comp
L power:+3V3 #PWR0113
U 1 1 613ED41F
P 3275 1625
F 0 "#PWR0113" H 3275 1475 50  0001 C CNN
F 1 "+3V3" H 3290 1798 50  0000 C CNN
F 2 "" H 3275 1625 50  0001 C CNN
F 3 "" H 3275 1625 50  0001 C CNN
	1    3275 1625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 613F0264
P 3275 3325
F 0 "#PWR0115" H 3275 3075 50  0001 C CNN
F 1 "GND" H 3280 3152 50  0000 C CNN
F 2 "" H 3275 3325 50  0001 C CNN
F 3 "" H 3275 3325 50  0001 C CNN
	1    3275 3325
	1    0    0    -1  
$EndComp
Text GLabel 3775 1925 2    50   Input ~ 0
IP0
Text GLabel 3775 2025 2    50   Input ~ 0
IP1
Text GLabel 3775 2125 2    50   Input ~ 0
IP2
Text GLabel 3775 2225 2    50   Input ~ 0
IP3
Text GLabel 3775 2325 2    50   Input ~ 0
IP4
Text GLabel 3775 2425 2    50   Input ~ 0
IP5
Text GLabel 3775 2525 2    50   Input ~ 0
IP6
Text GLabel 3775 2625 2    50   Input ~ 0
IP7
Text GLabel 3825 4150 2    50   Input ~ 0
OP0
Text GLabel 3825 4250 2    50   Input ~ 0
OP1
Text GLabel 3825 4350 2    50   Input ~ 0
OP2
Text GLabel 3825 4450 2    50   Input ~ 0
OP3
Text GLabel 3825 4550 2    50   Input ~ 0
OP4
Text GLabel 3825 4650 2    50   Input ~ 0
OP5
Text GLabel 3825 4750 2    50   Input ~ 0
OP6
Text GLabel 3825 4850 2    50   Input ~ 0
OP7
Text GLabel 2050 5050 0    50   Input ~ 0
OP_CLK
Wire Wire Line
	2725 5150 2825 5150
Text GLabel 4450 2825 2    50   Input ~ 0
IP_CLK
Wire Wire Line
	3775 2825 3900 2825
Wire Wire Line
	3900 2825 3900 2925
Wire Wire Line
	3900 2925 3775 2925
Connection ~ 3900 2825
$Comp
L Device:C_Small C1
U 1 1 613F5CF5
P 1125 6125
F 0 "C1" H 1217 6171 50  0000 L CNN
F 1 "C_Small" H 1217 6080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1125 6125 50  0001 C CNN
F 3 "~" H 1125 6125 50  0001 C CNN
	1    1125 6125
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 613F6184
P 1800 6125
F 0 "C3" H 1892 6171 50  0000 L CNN
F 1 "C_Small" H 1892 6080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1800 6125 50  0001 C CNN
F 3 "~" H 1800 6125 50  0001 C CNN
	1    1800 6125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 613F8EAB
P 1125 6375
F 0 "#PWR0114" H 1125 6125 50  0001 C CNN
F 1 "GND" H 1125 6200 50  0000 C CNN
F 2 "" H 1125 6375 50  0001 C CNN
F 3 "" H 1125 6375 50  0001 C CNN
	1    1125 6375
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 613FA3A3
P 1125 5900
F 0 "#PWR0117" H 1125 5750 50  0001 C CNN
F 1 "+3V3" H 1140 6073 50  0000 C CNN
F 2 "" H 1125 5900 50  0001 C CNN
F 3 "" H 1125 5900 50  0001 C CNN
	1    1125 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 5900 1125 5950
Wire Wire Line
	1125 6225 1125 6300
Wire Wire Line
	1125 5950 1800 5950
Wire Wire Line
	1800 5950 1800 6025
Connection ~ 1125 5950
Wire Wire Line
	1125 5950 1125 6025
Wire Wire Line
	1800 6225 1800 6300
Wire Wire Line
	1800 6300 1125 6300
Connection ~ 1125 6300
Wire Wire Line
	1125 6300 1125 6375
$Comp
L Connector:Conn_01x10_Female J7
U 1 1 613FB809
P 5700 2250
F 0 "J7" H 5728 2226 50  0000 L CNN
F 1 "Conn_01x10_Female" H 5728 2135 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 5700 2250 50  0001 C CNN
F 3 "~" H 5700 2250 50  0001 C CNN
	1    5700 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J8
U 1 1 613FE80E
P 5725 4450
F 0 "J8" H 5753 4426 50  0000 L CNN
F 1 "Conn_01x10_Female" H 5753 4335 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 5725 4450 50  0001 C CNN
F 3 "~" H 5725 4450 50  0001 C CNN
	1    5725 4450
	1    0    0    -1  
$EndComp
Text GLabel 5500 1950 0    50   Input ~ 0
IP0
Text GLabel 5500 2050 0    50   Input ~ 0
IP1
Text GLabel 5500 2150 0    50   Input ~ 0
IP2
Text GLabel 5500 2250 0    50   Input ~ 0
IP3
Text GLabel 5500 2350 0    50   Input ~ 0
IP4
Text GLabel 5500 2450 0    50   Input ~ 0
IP5
Text GLabel 5500 2550 0    50   Input ~ 0
IP6
Text GLabel 5500 2650 0    50   Input ~ 0
IP7
Text GLabel 5525 4150 0    50   Input ~ 0
OP0
Text GLabel 5525 4250 0    50   Input ~ 0
OP1
Text GLabel 5525 4350 0    50   Input ~ 0
OP2
Text GLabel 5525 4450 0    50   Input ~ 0
OP3
Text GLabel 5525 4550 0    50   Input ~ 0
OP4
Text GLabel 5525 4650 0    50   Input ~ 0
OP5
Text GLabel 5525 4750 0    50   Input ~ 0
OP6
Text GLabel 5525 4850 0    50   Input ~ 0
OP7
$Comp
L power:+3V3 #PWR0118
U 1 1 61401565
P 5400 3925
F 0 "#PWR0118" H 5400 3775 50  0001 C CNN
F 1 "+3V3" H 5415 4098 50  0000 C CNN
F 2 "" H 5400 3925 50  0001 C CNN
F 3 "" H 5400 3925 50  0001 C CNN
	1    5400 3925
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0120
U 1 1 61401A82
P 3325 3850
F 0 "#PWR0120" H 3325 3700 50  0001 C CNN
F 1 "+3V3" H 3340 4023 50  0000 C CNN
F 2 "" H 3325 3850 50  0001 C CNN
F 3 "" H 3325 3850 50  0001 C CNN
	1    3325 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 614024B4
P 5325 1650
F 0 "#PWR0121" H 5325 1500 50  0001 C CNN
F 1 "+3V3" H 5340 1823 50  0000 C CNN
F 2 "" H 5325 1650 50  0001 C CNN
F 3 "" H 5325 1650 50  0001 C CNN
	1    5325 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61402B68
P 5275 2850
F 0 "#PWR0122" H 5275 2600 50  0001 C CNN
F 1 "GND" H 5280 2677 50  0000 C CNN
F 2 "" H 5275 2850 50  0001 C CNN
F 3 "" H 5275 2850 50  0001 C CNN
	1    5275 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 6140302A
P 5350 5075
F 0 "#PWR0123" H 5350 4825 50  0001 C CNN
F 1 "GND" H 5355 4902 50  0000 C CNN
F 2 "" H 5350 5075 50  0001 C CNN
F 3 "" H 5350 5075 50  0001 C CNN
	1    5350 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3925 5400 4050
Wire Wire Line
	5400 4050 5525 4050
Wire Wire Line
	5350 5075 5350 4950
Wire Wire Line
	5350 4950 5525 4950
Wire Wire Line
	5275 2850 5275 2750
Wire Wire Line
	5275 2750 5500 2750
Wire Wire Line
	5325 1650 5325 1850
Wire Wire Line
	5325 1850 5500 1850
$Comp
L Connector:Conn_01x10_Female J9
U 1 1 61414967
P 8250 3575
F 0 "J9" H 8278 3551 50  0000 L CNN
F 1 "Conn_01x10_Female" H 7075 3225 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8250 3575 50  0001 C CNN
F 3 "~" H 8250 3575 50  0001 C CNN
	1    8250 3575
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J12
U 1 1 61415C68
P 8875 3600
F 0 "J12" H 8903 3576 50  0000 L CNN
F 1 "Conn_01x10_Female" H 8425 2925 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8875 3600 50  0001 C CNN
F 3 "~" H 8875 3600 50  0001 C CNN
	1    8875 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J13
U 1 1 61416EBA
P 9400 3575
F 0 "J13" H 9428 3551 50  0000 L CNN
F 1 "Conn_01x10_Female" H 9428 3460 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 9400 3575 50  0001 C CNN
F 3 "~" H 9400 3575 50  0001 C CNN
	1    9400 3575
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J10
U 1 1 61417F4F
P 8250 4925
F 0 "J10" H 8278 4901 50  0000 L CNN
F 1 "Conn_01x10_Female" H 8278 4810 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8250 4925 50  0001 C CNN
F 3 "~" H 8250 4925 50  0001 C CNN
	1    8250 4925
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J?
U 1 1 6142518A
P 9250 5175
AR Path="/6142518A" Ref="J?"  Part="1" 
AR Path="/613E6C75/6142518A" Ref="J11"  Part="1" 
F 0 "J11" H 9142 4650 50  0000 C CNN
F 1 "Conn_01x06_Female" H 9142 4741 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 9250 5175 50  0001 C CNN
F 3 "~" H 9250 5175 50  0001 C CNN
	1    9250 5175
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x06_Female J?
U 1 1 61425C79
P 9900 5200
AR Path="/61425C79" Ref="J?"  Part="1" 
AR Path="/613E6C75/61425C79" Ref="J14"  Part="1" 
F 0 "J14" H 9792 4675 50  0000 C CNN
F 1 "Conn_01x06_Female" H 9650 4525 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 9900 5200 50  0001 C CNN
F 3 "~" H 9900 5200 50  0001 C CNN
	1    9900 5200
	-1   0    0    1   
$EndComp
Text Notes 9075 2925 0    50   ~ 0
Prototyping Area
Text Notes 1700 1325 0    50   ~ 0
Input and output ports controlled\nby Pico rather than directly from \ncontrol signals.
$Comp
L power:GND #PWR0116
U 1 1 61650E6E
P 3325 5700
F 0 "#PWR0116" H 3325 5450 50  0001 C CNN
F 1 "GND" H 3330 5527 50  0000 C CNN
F 2 "" H 3325 5700 50  0001 C CNN
F 3 "" H 3325 5700 50  0001 C CNN
	1    3325 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 5450 2725 5450
Wire Wire Line
	2725 5450 2725 5150
$Comp
L Device:C_Small C4
U 1 1 61674549
P 2325 5500
F 0 "C4" H 2417 5546 50  0000 L CNN
F 1 "33pF" H 2417 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2325 5500 50  0001 C CNN
F 3 "~" H 2325 5500 50  0001 C CNN
	1    2325 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 61676501
P 4175 3050
F 0 "C6" H 4267 3096 50  0000 L CNN
F 1 "33pF" H 4267 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4175 3050 50  0001 C CNN
F 3 "~" H 4175 3050 50  0001 C CNN
	1    4175 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 3225 3275 3250
Wire Wire Line
	3900 2825 4175 2825
Wire Wire Line
	4175 2950 4175 2825
Connection ~ 4175 2825
Wire Wire Line
	4175 2825 4450 2825
Wire Wire Line
	3275 3250 4175 3250
Wire Wire Line
	4175 3250 4175 3150
Connection ~ 3275 3250
Wire Wire Line
	3275 3250 3275 3325
Wire Wire Line
	2050 5050 2325 5050
Wire Wire Line
	2325 5050 2325 5400
Connection ~ 2325 5050
Wire Wire Line
	2325 5050 2825 5050
$Comp
L power:GND #PWR0126
U 1 1 6167AE3F
P 2325 5675
F 0 "#PWR0126" H 2325 5425 50  0001 C CNN
F 1 "GND" H 2330 5502 50  0000 C CNN
F 2 "" H 2325 5675 50  0001 C CNN
F 3 "" H 2325 5675 50  0001 C CNN
	1    2325 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 5700 3325 5450
Connection ~ 3325 5450
Wire Wire Line
	2325 5675 2325 5600
$EndSCHEMATC
