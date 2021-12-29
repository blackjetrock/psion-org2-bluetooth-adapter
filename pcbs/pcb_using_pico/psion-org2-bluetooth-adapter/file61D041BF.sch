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
L RF_Module:ESP32-WROOM-32 U?
U 1 1 61D1E6B3
P 3800 2725
AR Path="/61D041C0/61D04600/61D1E6B3" Ref="U?"  Part="1" 
AR Path="/61D041C0/61D1E6B3" Ref="U?"  Part="1" 
F 0 "U?" H 4475 4325 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 4800 4225 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 3800 1225 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 3500 2775 50  0001 C CNN
	1    3800 2725
	1    0    0    -1  
$EndComp
Text GLabel 3450 850  0    50   Input ~ 0
VCC_ESP
Wire Wire Line
	3800 1325 3800 1000
Wire Wire Line
	3800 850  3450 850 
$Comp
L Device:R_Small R?
U 1 1 61D1E6BC
P 2600 1225
AR Path="/61D041C0/61D04600/61D1E6BC" Ref="R?"  Part="1" 
AR Path="/61D041C0/61D1E6BC" Ref="R?"  Part="1" 
F 0 "R?" H 2659 1271 50  0000 L CNN
F 1 "R_Small" H 2659 1180 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2600 1225 50  0001 C CNN
F 3 "~" H 2600 1225 50  0001 C CNN
	1    2600 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1525 2600 1525
Wire Wire Line
	2600 1525 2600 1325
Wire Wire Line
	2600 1125 2600 1000
Wire Wire Line
	2600 1000 3800 1000
Connection ~ 3800 1000
Wire Wire Line
	3800 1000 3800 850 
$Comp
L Device:C_Small C?
U 1 1 61D1E6C8
P 2600 2125
AR Path="/61D041C0/61D04600/61D1E6C8" Ref="C?"  Part="1" 
AR Path="/61D041C0/61D1E6C8" Ref="C?"  Part="1" 
F 0 "C?" H 2692 2171 50  0000 L CNN
F 1 "100nF" H 2692 2080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2600 2125 50  0001 C CNN
F 3 "~" H 2600 2125 50  0001 C CNN
	1    2600 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2025 2600 1525
Connection ~ 2600 1525
Wire Wire Line
	3800 4275 2600 4275
Wire Wire Line
	2600 4275 2600 2225
$Comp
L power:GND #PWR?
U 1 1 61D1E6D2
P 3800 5175
AR Path="/61D041C0/61D04600/61D1E6D2" Ref="#PWR?"  Part="1" 
AR Path="/61D041C0/61D1E6D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3800 4925 50  0001 C CNN
F 1 "GND" H 3805 5002 50  0000 C CNN
F 2 "" H 3800 5175 50  0001 C CNN
F 3 "" H 3800 5175 50  0001 C CNN
	1    3800 5175
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4125 3800 4275
Connection ~ 3800 4275
Text GLabel 4400 2525 2    50   Input ~ 0
PICO_TX
Text GLabel 4400 2625 2    50   Input ~ 0
PICO_RX
Wire Wire Line
	3800 4275 3800 5175
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 61D1E6DE
P 4925 1525
AR Path="/61D041C0/61D04600/61D1E6DE" Ref="JP?"  Part="1" 
AR Path="/61D041C0/61D1E6DE" Ref="JP?"  Part="1" 
F 0 "JP?" H 4925 1710 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4925 1619 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 1525 50  0001 C CNN
F 3 "~" H 4925 1525 50  0001 C CNN
	1    4925 1525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61D1E6E4
P 5550 1575
AR Path="/61D041C0/61D04600/61D1E6E4" Ref="#PWR?"  Part="1" 
AR Path="/61D041C0/61D1E6E4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 1325 50  0001 C CNN
F 1 "GND" H 5555 1402 50  0000 C CNN
F 2 "" H 5550 1575 50  0001 C CNN
F 3 "" H 5550 1575 50  0001 C CNN
	1    5550 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1575 5550 1525
Wire Wire Line
	5550 1525 5050 1525
Wire Wire Line
	4825 1525 4400 1525
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 61D1E6ED
P 5350 2075
AR Path="/61D041C0/61D04600/61D1E6ED" Ref="J?"  Part="1" 
AR Path="/61D041C0/61D1E6ED" Ref="J?"  Part="1" 
F 0 "J?" H 5378 2101 50  0000 L CNN
F 1 "Conn_01x03_Female" H 5378 2010 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical_SMD_Pin1Left" H 5350 2075 50  0001 C CNN
F 3 "~" H 5350 2075 50  0001 C CNN
	1    5350 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1625 4775 1625
Wire Wire Line
	4775 1625 4775 1975
Wire Wire Line
	4775 1975 5150 1975
Wire Wire Line
	4650 1825 4650 2175
Wire Wire Line
	4650 2175 5150 2175
Wire Wire Line
	5050 1525 5050 2075
Wire Wire Line
	5050 2075 5150 2075
Connection ~ 5050 1525
Wire Wire Line
	5050 1525 5025 1525
$Comp
L Device:C_Small C?
U 1 1 61D1E6FC
P 2175 2125
AR Path="/61D041C0/61D04600/61D1E6FC" Ref="C?"  Part="1" 
AR Path="/61D041C0/61D1E6FC" Ref="C?"  Part="1" 
F 0 "C?" H 2267 2171 50  0000 L CNN
F 1 "4u7" H 2267 2080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2175 2125 50  0001 C CNN
F 3 "~" H 2175 2125 50  0001 C CNN
	1    2175 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1525 2175 1525
Wire Wire Line
	2175 1525 2175 2025
Wire Wire Line
	2175 2225 2175 4275
Wire Wire Line
	2175 4275 2600 4275
Connection ~ 2600 4275
Wire Wire Line
	4400 1825 4650 1825
$EndSCHEMATC
