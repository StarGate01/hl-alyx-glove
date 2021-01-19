EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "8x8 LED Matrix Driver"
Date "2021-01-19"
Rev "1"
Comp "CHRZ Engineering"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6150 3550 0    50   ~ 0
R7
$Comp
L Driver_LED:MAX7219 U?
U 1 1 6013795C
P 5700 2950
AR Path="/6013795C" Ref="U?"  Part="1" 
AR Path="/6013522B/6013795C" Ref="U1"  Part="1" 
AR Path="/601389C9/6013795C" Ref="U2"  Part="1" 
AR Path="/601389F6/6013795C" Ref="U3"  Part="1" 
F 0 "U1" H 5950 4050 50  0000 C CNN
F 1 "MAX7219" H 5950 3950 50  0000 C CNN
F 2 "Package_SO:SOP-24_7.5x15.4mm_P1.27mm" H 5650 3000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX7219-MAX7221.pdf" H 5750 2800 50  0001 C CNN
	1    5700 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60137962
P 5050 2150
AR Path="/60137962" Ref="R?"  Part="1" 
AR Path="/6013522B/60137962" Ref="R1"  Part="1" 
AR Path="/601389C9/60137962" Ref="R2"  Part="1" 
AR Path="/601389F6/60137962" Ref="R3"  Part="1" 
F 0 "R1" V 4950 2150 50  0000 C CNN
F 1 "10K" V 5150 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4980 2150 50  0001 C CNN
F 3 "~" H 5050 2150 50  0001 C CNN
	1    5050 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6013796E
P 5700 4050
AR Path="/6013796E" Ref="#PWR?"  Part="1" 
AR Path="/6013522B/6013796E" Ref="#PWR0102"  Part="1" 
AR Path="/601389C9/6013796E" Ref="#PWR0104"  Part="1" 
AR Path="/601389F6/6013796E" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0102" H 5700 3800 50  0001 C CNN
F 1 "GND" H 5705 3877 50  0000 C CNN
F 2 "" H 5700 4050 50  0001 C CNN
F 3 "" H 5700 4050 50  0001 C CNN
	1    5700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2150 6250 2150
Wire Wire Line
	6100 2250 6250 2250
Wire Wire Line
	6100 2350 6250 2350
Wire Wire Line
	6100 2450 6250 2450
Wire Wire Line
	6100 2550 6250 2550
Wire Wire Line
	6100 2650 6250 2650
Wire Wire Line
	6100 2750 6250 2750
Wire Wire Line
	6100 2850 6250 2850
Wire Wire Line
	6100 2950 6250 2950
Wire Wire Line
	6100 3050 6250 3050
Wire Wire Line
	6100 3150 6250 3150
Wire Wire Line
	6100 3250 6250 3250
Wire Wire Line
	6100 3350 6250 3350
Wire Wire Line
	6100 3450 6250 3450
Wire Wire Line
	6100 3550 6250 3550
Wire Wire Line
	6100 3650 6250 3650
Entry Wire Line
	6250 2150 6350 2250
Entry Wire Line
	6250 2250 6350 2350
Entry Wire Line
	6250 2350 6350 2450
Entry Wire Line
	6250 2450 6350 2550
Entry Wire Line
	6250 2550 6350 2650
Entry Wire Line
	6250 2650 6350 2750
Entry Wire Line
	6250 2750 6350 2850
Entry Wire Line
	6250 2850 6350 2950
Entry Wire Line
	6250 2950 6350 3050
Entry Wire Line
	6250 3050 6350 3150
Entry Wire Line
	6250 3150 6350 3250
Entry Wire Line
	6250 3250 6350 3350
Entry Wire Line
	6250 3350 6350 3450
Entry Wire Line
	6250 3450 6350 3550
Entry Wire Line
	6250 3550 6350 3650
Entry Wire Line
	6250 3650 6350 3750
Entry Wire Line
	5150 5300 5250 5400
Entry Wire Line
	5150 5200 5250 5300
Entry Wire Line
	5150 5100 5250 5200
Entry Wire Line
	5150 5000 5250 5100
Entry Wire Line
	5150 4900 5250 5000
Entry Wire Line
	5150 4800 5250 4900
Entry Wire Line
	5150 4700 5250 4800
Entry Wire Line
	5150 4600 5250 4700
Entry Wire Line
	6250 5400 6350 5500
Entry Wire Line
	6250 5300 6350 5400
Entry Wire Line
	6250 5200 6350 5300
Entry Wire Line
	6250 5100 6350 5200
Entry Wire Line
	6250 5000 6350 5100
Entry Wire Line
	6250 4900 6350 5000
Entry Wire Line
	6250 4800 6350 4900
Entry Wire Line
	6250 4700 6350 4800
Wire Wire Line
	5250 5400 5450 5400
Wire Wire Line
	5250 5300 5450 5300
Wire Wire Line
	5250 5200 5450 5200
Wire Wire Line
	5250 5100 5450 5100
Wire Wire Line
	5250 5000 5450 5000
Wire Wire Line
	5250 4900 5450 4900
Wire Wire Line
	5250 4800 5450 4800
Wire Wire Line
	5250 4700 5450 4700
Wire Wire Line
	6050 5400 6250 5400
Wire Wire Line
	6050 5300 6250 5300
Wire Wire Line
	6050 5200 6250 5200
Wire Wire Line
	6050 5100 6250 5100
Wire Wire Line
	6050 5000 6250 5000
Wire Wire Line
	6050 4900 6250 4900
Wire Wire Line
	6050 4800 6250 4800
Wire Wire Line
	6050 4700 6250 4700
$Comp
L CustomComponents:788BS LED?
U 1 1 601379B4
P 5750 5050
AR Path="/601379B4" Ref="LED?"  Part="1" 
AR Path="/6013522B/601379B4" Ref="LED1"  Part="1" 
AR Path="/601389C9/601379B4" Ref="LED2"  Part="1" 
AR Path="/601389F6/601379B4" Ref="LED3"  Part="1" 
F 0 "LED1" H 5750 5665 50  0000 C CNN
F 1 "788BS" H 5750 5574 50  0000 C CNN
F 2 "CustomComponents:788BS" H 5650 5050 50  0001 C CNN
F 3 "datasheets/TOP-CA-788BS.pdf" H 5650 5050 50  0001 C CNN
	1    5750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2150 5200 2150
Wire Wire Line
	4900 2150 4800 2150
Wire Wire Line
	5700 3950 5700 4050
Text Label 5300 4700 0    50   ~ 0
C4
Text Label 5300 4800 0    50   ~ 0
C2
Text Label 5300 4900 0    50   ~ 0
R2
Text Label 5300 5000 0    50   ~ 0
R3
Text Label 5300 5100 0    50   ~ 0
C1
Text Label 5300 5200 0    50   ~ 0
R5
Text Label 5300 5300 0    50   ~ 0
C3
Text Label 5300 5400 0    50   ~ 0
C6
Text Label 6100 5400 0    50   ~ 0
C8
Text Label 6100 5300 0    50   ~ 0
R4
Text Label 6100 5200 0    50   ~ 0
R6
Text Label 6100 5100 0    50   ~ 0
C5
Text Label 6100 5000 0    50   ~ 0
R1
Text Label 6100 4900 0    50   ~ 0
C7
Text Label 6100 4800 0    50   ~ 0
R7
Text Label 6100 4700 0    50   ~ 0
R8
Text Label 6150 2350 0    50   ~ 0
C4
Text Label 6150 2150 0    50   ~ 0
C2
Text Label 6150 3050 0    50   ~ 0
R2
Text Label 6150 3150 0    50   ~ 0
R3
Text Label 6150 2850 0    50   ~ 0
C1
Text Label 6150 3350 0    50   ~ 0
R5
Text Label 6150 2550 0    50   ~ 0
C6
Text Label 6150 2250 0    50   ~ 0
C3
Text Label 6150 2450 0    50   ~ 0
C5
Text Label 6150 2650 0    50   ~ 0
C7
Text Label 6150 2750 0    50   ~ 0
C8
Text Label 6150 2950 0    50   ~ 0
R1
Text Label 6150 3250 0    50   ~ 0
R4
Text Label 6150 3450 0    50   ~ 0
R6
Text Label 6150 3650 0    50   ~ 0
R8
Wire Bus Line
	5150 4350 6350 4350
Connection ~ 6350 4350
Text HLabel 6100 3750 2    50   Input ~ 0
DOUT
Text HLabel 5300 3550 0    50   Input ~ 0
LOAD
Text HLabel 5300 3650 0    50   Input ~ 0
CLK
Text HLabel 5300 3750 0    50   Input ~ 0
DIN
$Comp
L power:+3.3V #PWR05
U 1 1 602154C0
P 5700 1900
AR Path="/6013522B/602154C0" Ref="#PWR05"  Part="1" 
AR Path="/601389C9/602154C0" Ref="#PWR06"  Part="1" 
AR Path="/601389F6/602154C0" Ref="#PWR07"  Part="1" 
F 0 "#PWR05" H 5700 1750 50  0001 C CNN
F 1 "+3.3V" H 5715 2073 50  0000 C CNN
F 2 "" H 5700 1900 50  0001 C CNN
F 3 "" H 5700 1900 50  0001 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1950 5700 1900
Wire Wire Line
	5700 1900 4800 1900
Wire Wire Line
	4800 1900 4800 2150
Connection ~ 5700 1900
Wire Bus Line
	6350 4350 6350 5500
Wire Bus Line
	5150 4350 5150 5300
Wire Bus Line
	6350 2250 6350 4350
$EndSCHEMATC
