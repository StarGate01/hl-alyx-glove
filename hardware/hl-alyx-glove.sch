EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Driver_LED:MAX7219 U1
U 1 1 6003C2A5
P 2450 2850
F 0 "U1" H 2450 4031 50  0000 C CNN
F 1 "MAX7219" H 2450 3940 50  0000 C CNN
F 2 "Package_SO:SOP-24_7.5x15.4mm_P1.27mm" H 2400 2900 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX7219-MAX7221.pdf" H 2500 2700 50  0001 C CNN
	1    2450 2850
	1    0    0    -1  
$EndComp
$Comp
L CustomComponents:788BS LED1
U 1 1 60041445
P 4200 2700
F 0 "LED1" H 4200 3315 50  0000 C CNN
F 1 "788BS" H 4200 3224 50  0000 C CNN
F 2 "CustomComponents:788BS" H 4100 2700 50  0001 C CNN
F 3 "datasheets/TOP-CA-788BS.pdf" H 4100 2700 50  0001 C CNN
	1    4200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2450 3900 2450
$EndSCHEMATC
