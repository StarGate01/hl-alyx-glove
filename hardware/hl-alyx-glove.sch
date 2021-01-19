EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Half Life: Alyx Gloves"
Date "2021-01-19"
Rev "1"
Comp "CHRZ Engineering"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5400 2900 800  600 
U 6013522B
F0 "LED_Matrix_0" 50
F1 "LED_Matrix.sch" 50
F2 "DOUT" I L 5400 3000 50 
F3 "LOAD" I L 5400 3100 50 
F4 "CLK" I L 5400 3200 50 
F5 "DIN" I L 5400 3300 50 
$EndSheet
$Sheet
S 6600 2900 800  600 
U 601389C9
F0 "LED_Matrix_1" 50
F1 "LED_Matrix.sch" 50
F2 "DOUT" I L 6600 3000 50 
F3 "LOAD" I L 6600 3100 50 
F4 "CLK" I L 6600 3200 50 
F5 "DIN" I L 6600 3300 50 
$EndSheet
$Sheet
S 7750 2900 800  600 
U 601389F6
F0 "LED_Matrix_2" 50
F1 "LED_Matrix.sch" 50
F2 "DOUT" I L 7750 3000 50 
F3 "LOAD" I L 7750 3100 50 
F4 "CLK" I L 7750 3200 50 
F5 "DIN" I L 7750 3300 50 
$EndSheet
Wire Wire Line
	5400 3000 5350 3000
Wire Wire Line
	5350 3000 5350 2750
Wire Wire Line
	5350 2750 6400 2750
Wire Wire Line
	6400 2750 6400 3300
Wire Wire Line
	6400 3300 6600 3300
Wire Wire Line
	6600 3000 6550 3000
Wire Wire Line
	6550 3000 6550 2750
Wire Wire Line
	6550 2750 7550 2750
Wire Wire Line
	7550 2750 7550 3300
Wire Wire Line
	7550 3300 7750 3300
Wire Wire Line
	5400 3200 5300 3200
Wire Wire Line
	5300 2700 6450 2700
Wire Wire Line
	6450 2700 6450 3200
Wire Wire Line
	6450 3200 6600 3200
Wire Wire Line
	6450 2700 7600 2700
Wire Wire Line
	7600 2700 7600 3200
Wire Wire Line
	7600 3200 7750 3200
Connection ~ 6450 2700
Wire Wire Line
	6500 2650 6500 3100
Wire Wire Line
	6500 3100 6600 3100
Wire Wire Line
	6500 2650 7650 2650
Wire Wire Line
	7650 2650 7650 3100
Wire Wire Line
	7650 3100 7750 3100
Connection ~ 6500 2650
NoConn ~ 7750 3000
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U4
U 1 1 60147B47
P 3500 3650
F 0 "U4" H 2856 3696 50  0000 R CNN
F 1 "ATmega328P-PU" H 2856 3605 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 3500 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3500 3650 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2700 5300 3200
Wire Wire Line
	4900 2700 4900 2750
Wire Wire Line
	4900 2750 4100 2750
Connection ~ 5300 2700
Wire Wire Line
	4900 2700 5300 2700
Wire Wire Line
	4100 2650 5200 2650
Wire Wire Line
	5200 3100 5200 2650
Wire Wire Line
	5200 3100 5400 3100
Connection ~ 5200 2650
Wire Wire Line
	5200 2650 6500 2650
Wire Wire Line
	5100 3300 5400 3300
$Comp
L power:GND #PWR02
U 1 1 60150B53
P 3500 5250
F 0 "#PWR02" H 3500 5000 50  0001 C CNN
F 1 "GND" H 3505 5077 50  0000 C CNN
F 2 "" H 3500 5250 50  0001 C CNN
F 3 "" H 3500 5250 50  0001 C CNN
	1    3500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5150 3500 5200
$Comp
L power:+3.3V #PWR01
U 1 1 60153B7A
P 3500 2050
F 0 "#PWR01" H 3500 1900 50  0001 C CNN
F 1 "+3.3V" H 3515 2223 50  0000 C CNN
F 2 "" H 3500 2050 50  0001 C CNN
F 3 "" H 3500 2050 50  0001 C CNN
	1    3500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2150 3500 2100
Wire Wire Line
	3600 2150 3600 2100
Wire Wire Line
	3600 2100 3500 2100
Connection ~ 3500 2100
Wire Wire Line
	3500 2100 3500 2050
Wire Wire Line
	2900 2450 2800 2450
Wire Wire Line
	2800 2450 2800 2100
Wire Wire Line
	2800 2100 3500 2100
$Comp
L Device:R R4
U 1 1 601573A6
P 4400 3950
F 0 "R4" V 4600 3950 50  0000 C CNN
F 1 "10K" V 4500 3950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4330 3950 50  0001 C CNN
F 3 "~" H 4400 3950 50  0001 C CNN
	1    4400 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3950 4250 3950
Wire Wire Line
	4550 3950 4700 3950
Wire Wire Line
	4700 3950 4700 2100
Wire Wire Line
	4700 2100 3600 2100
Connection ~ 3600 2100
NoConn ~ 4100 3150
NoConn ~ 4100 3050
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 6015E78F
P 5400 4400
F 0 "J1" H 5428 4376 50  0000 L CNN
F 1 "OLED" H 5428 4285 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 5400 4400 50  0001 C CNN
F 3 "~" H 5400 4400 50  0001 C CNN
	1    5400 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4600 4700 4600
Wire Wire Line
	4700 4600 4700 5200
Wire Wire Line
	4700 5200 3500 5200
Connection ~ 3500 5200
Wire Wire Line
	3500 5200 3500 5250
Wire Wire Line
	4700 4500 4700 4250
Connection ~ 4700 3950
Wire Wire Line
	4700 4500 5200 4500
Wire Wire Line
	4100 3850 4800 3850
Wire Wire Line
	4800 3850 4800 4400
Wire Wire Line
	4800 4400 5200 4400
Wire Wire Line
	5200 4300 4900 4300
Wire Wire Line
	4900 4300 4900 3750
Wire Wire Line
	4900 3750 4100 3750
$Comp
L Device:LED D1
U 1 1 6017E76E
P 5400 4850
F 0 "D1" H 5400 5100 50  0000 C CNN
F 1 "GREEN" H 5400 5000 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5400 4850 50  0001 C CNN
F 3 "~" H 5400 4850 50  0001 C CNN
	1    5400 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 6017F105
P 5300 2450
F 0 "D2" H 5293 2195 50  0000 C CNN
F 1 "GREEN" H 5293 2286 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5300 2450 50  0001 C CNN
F 3 "~" H 5300 2450 50  0001 C CNN
	1    5300 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 6017FFC3
P 5050 4850
F 0 "R5" V 5250 4850 50  0000 C CNN
F 1 "68" V 5150 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4980 4850 50  0001 C CNN
F 3 "~" H 5050 4850 50  0001 C CNN
	1    5050 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60180967
P 4950 2450
F 0 "R6" V 4743 2450 50  0000 C CNN
F 1 "68" V 4834 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4880 2450 50  0001 C CNN
F 3 "~" H 4950 2450 50  0001 C CNN
	1    4950 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 6017F981
P 5050 5300
F 0 "R7" V 5250 5300 50  0000 C CNN
F 1 "180" V 5150 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4980 5300 50  0001 C CNN
F 3 "~" H 5050 5300 50  0001 C CNN
	1    5050 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4850 5250 4850
Wire Wire Line
	5100 2450 5150 2450
NoConn ~ 4100 4550
NoConn ~ 4100 4450
NoConn ~ 4100 4150
NoConn ~ 4100 3650
NoConn ~ 4100 3550
NoConn ~ 4100 3450
NoConn ~ 4100 3350
NoConn ~ 4100 2950
Connection ~ 4700 4250
Wire Wire Line
	4700 4250 4700 3950
Connection ~ 4700 4600
$Comp
L Device:C C1
U 1 1 601E904E
P 4350 4400
F 0 "C1" H 4465 4446 50  0000 L CNN
F 1 "100N" H 4465 4355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 4388 4250 50  0001 C CNN
F 3 "~" H 4350 4400 50  0001 C CNN
	1    4350 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4250 4700 4250
Wire Wire Line
	4350 4600 4350 4550
Wire Wire Line
	4350 4600 4700 4600
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 6020093E
P 6000 1850
F 0 "J2" H 6108 2031 50  0000 C CNN
F 1 "POWER" H 6108 1940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 6000 1850 50  0001 C CNN
F 3 "~" H 6000 1850 50  0001 C CNN
	1    6000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RGB D3
U 1 1 6007CABF
P 5600 5600
F 0 "D3" H 5600 5100 50  0000 C CNN
F 1 "RED" H 5600 5200 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5600 5550 50  0001 C CNN
F 3 "~" H 5600 5550 50  0001 C CNN
	1    5600 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4700 5200 5800 5200
Connection ~ 4700 5200
Wire Wire Line
	5400 5800 5400 5600
Connection ~ 5400 5600
Wire Wire Line
	5400 5600 5400 5400
Wire Wire Line
	5400 5400 5400 5300
Wire Wire Line
	5400 5300 5200 5300
Connection ~ 5400 5400
Wire Wire Line
	5800 5800 5800 5600
Connection ~ 5800 5600
Wire Wire Line
	5800 5600 5800 5400
Connection ~ 5800 5400
Wire Wire Line
	4100 4850 4900 4850
Wire Wire Line
	4100 2450 4800 2450
Wire Wire Line
	5550 4850 5800 4850
Wire Wire Line
	5800 4850 5800 5200
Connection ~ 5800 5200
Wire Wire Line
	5800 5200 5800 5400
Wire Wire Line
	6300 2450 6300 4850
Wire Wire Line
	6300 4850 5800 4850
Connection ~ 5800 4850
Wire Wire Line
	5450 2450 6300 2450
NoConn ~ 4100 4750
NoConn ~ 4100 4650
Wire Wire Line
	4200 5300 4900 5300
Wire Wire Line
	5100 2550 4100 2550
Wire Wire Line
	5100 2550 5100 3300
NoConn ~ 4100 2850
$Comp
L power:GND #PWR04
U 1 1 60203D94
P 6400 1850
F 0 "#PWR04" H 6400 1600 50  0001 C CNN
F 1 "GND" V 6405 1722 50  0000 R CNN
F 2 "" H 6400 1850 50  0001 C CNN
F 3 "" H 6400 1850 50  0001 C CNN
	1    6400 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 6020350E
P 6400 1950
F 0 "#PWR03" H 6400 1800 50  0001 C CNN
F 1 "+3.3V" V 6415 2078 50  0000 L CNN
F 2 "" H 6400 1950 50  0001 C CNN
F 3 "" H 6400 1950 50  0001 C CNN
	1    6400 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 1950 6400 1950
Wire Wire Line
	6200 1850 6400 1850
Wire Wire Line
	4200 5300 4200 4350
Wire Wire Line
	4200 4350 4100 4350
NoConn ~ 4100 4250
$EndSCHEMATC
