EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "snazzy SNES controller"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 4xxx:4021 U?
U 1 1 5E71A7E2
P 5350 2100
F 0 "U?" V 5304 2944 50  0000 L CNN
F 1 "4021" V 5395 2944 50  0000 L CNN
F 2 "" H 5350 2250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4021B.pdf" H 5350 2250 50  0001 C CNN
	1    5350 2100
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4021 U?
U 1 1 5E71B42D
P 7100 2100
F 0 "U?" V 7054 2944 50  0000 L CNN
F 1 "4021" V 7145 2944 50  0000 L CNN
F 2 "" H 7100 2250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4021B.pdf" H 7100 2250 50  0001 C CNN
	1    7100 2100
	1    0    0    -1  
$EndComp
Text GLabel 4950 1500 0    50   Input ~ 0
SNES_clack
Text GLabel 4300 900  0    50   Input ~ 0
SNES_latch
Text GLabel 4300 1000 0    50   Output ~ 0
SNES_data1
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5E721515
P 4600 900
F 0 "J?" H 4680 942 50  0000 L CNN
F 1 "Conn_01x05" H 4680 851 50  0000 L CNN
F 2 "" H 4600 900 50  0001 C CNN
F 3 "~" H 4600 900 50  0001 C CNN
	1    4600 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E72AC27
P 4300 800
F 0 "#PWR?" H 4300 550 50  0001 C CNN
F 1 "GND" V 4305 672 50  0000 R CNN
F 2 "" H 4300 800 50  0001 C CNN
F 3 "" H 4300 800 50  0001 C CNN
	1    4300 800 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E72BE0B
P 5350 950
F 0 "#PWR?" H 5350 800 50  0001 C CNN
F 1 "+5V" V 5365 1078 50  0000 L CNN
F 2 "" H 5350 950 50  0001 C CNN
F 3 "" H 5350 950 50  0001 C CNN
	1    5350 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E72CF0B
P 5350 2900
F 0 "#PWR?" H 5350 2650 50  0001 C CNN
F 1 "GND" V 5355 2772 50  0000 R CNN
F 2 "" H 5350 2900 50  0001 C CNN
F 3 "" H 5350 2900 50  0001 C CNN
	1    5350 2900
	1    0    0    -1  
$EndComp
Text GLabel 4950 1700 0    50   Input ~ 0
SNES_latch
Text GLabel 6700 1700 0    50   Input ~ 0
SNES_latch
Text GLabel 6700 1500 0    50   Input ~ 0
SNES_clack
Text GLabel 7500 1700 2    50   Output ~ 0
SNES_data1
NoConn ~ 7500 1600
NoConn ~ 7500 1500
NoConn ~ 5750 1500
NoConn ~ 5750 1600
NoConn ~ 4950 1800
$Comp
L power:+5V #PWR?
U 1 1 5E731034
P 7100 950
F 0 "#PWR?" H 7100 800 50  0001 C CNN
F 1 "+5V" V 7115 1078 50  0000 L CNN
F 2 "" H 7100 950 50  0001 C CNN
F 3 "" H 7100 950 50  0001 C CNN
	1    7100 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E731F19
P 7100 2900
F 0 "#PWR?" H 7100 2650 50  0001 C CNN
F 1 "GND" V 7105 2772 50  0000 R CNN
F 2 "" H 7100 2900 50  0001 C CNN
F 3 "" H 7100 2900 50  0001 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
Text GLabel 4300 1100 0    50   Input ~ 0
SNES_clack
$Comp
L power:GND #PWR?
U 1 1 5E739C1C
P 600 850
F 0 "#PWR?" H 600 600 50  0001 C CNN
F 1 "GND" H 605 677 50  0000 C CNN
F 2 "" H 600 850 50  0001 C CNN
F 3 "" H 600 850 50  0001 C CNN
	1    600  850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E736430
P 1050 750
F 0 "#PWR?" H 1050 600 50  0001 C CNN
F 1 "+5V" H 1065 923 50  0000 C CNN
F 2 "" H 1050 750 50  0001 C CNN
F 3 "" H 1050 750 50  0001 C CNN
	1    1050 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E735D45
P 1200 750
F 0 "R?" V 1407 750 50  0000 C CNN
F 1 "10k" V 1316 750 50  0000 C CNN
F 2 "" V 1130 750 50  0001 C CNN
F 3 "~" H 1200 750 50  0001 C CNN
	1    1200 750 
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7348EA
P 800 850
F 0 "SW?" H 800 665 50  0000 C CNN
F 1 "BTN_START" H 800 756 50  0000 C CNN
F 2 "" H 800 1050 50  0001 C CNN
F 3 "~" H 800 1050 50  0001 C CNN
	1    800  850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 850  1350 850 
Wire Wire Line
	1350 750  1350 850 
$Comp
L power:GND #PWR?
U 1 1 5E77B113
P 600 1400
F 0 "#PWR?" H 600 1150 50  0001 C CNN
F 1 "GND" H 605 1227 50  0000 C CNN
F 2 "" H 600 1400 50  0001 C CNN
F 3 "" H 600 1400 50  0001 C CNN
	1    600  1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E77B11D
P 1050 1300
F 0 "#PWR?" H 1050 1150 50  0001 C CNN
F 1 "+5V" H 1065 1473 50  0000 C CNN
F 2 "" H 1050 1300 50  0001 C CNN
F 3 "" H 1050 1300 50  0001 C CNN
	1    1050 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E77B127
P 1200 1300
F 0 "R?" V 1407 1300 50  0000 C CNN
F 1 "10k" V 1316 1300 50  0000 C CNN
F 2 "" V 1130 1300 50  0001 C CNN
F 3 "~" H 1200 1300 50  0001 C CNN
	1    1200 1300
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E77B131
P 800 1400
F 0 "SW?" H 800 1215 50  0000 C CNN
F 1 "BTN_SELECT" H 800 1306 50  0000 C CNN
F 2 "" H 800 1600 50  0001 C CNN
F 3 "~" H 800 1600 50  0001 C CNN
	1    800  1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 1400 1350 1400
Wire Wire Line
	1350 1300 1350 1400
Text Label 1850 850  2    50   ~ 0
BTN_START
Text Label 6200 2400 0    50   ~ 0
BTN_START
Wire Wire Line
	1850 850  1350 850 
Connection ~ 1350 850 
Wire Wire Line
	6200 2400 6700 2400
Wire Wire Line
	1350 1400 1850 1400
Connection ~ 1350 1400
Text Label 1850 1400 2    50   ~ 0
BTN_SELECT
Wire Wire Line
	6700 2500 6200 2500
Text Label 6200 2500 0    50   ~ 0
BTN_SELECT
Wire Wire Line
	6050 1800 6700 1800
$Comp
L power:GND #PWR?
U 1 1 5E7966FF
P 600 1950
F 0 "#PWR?" H 600 1700 50  0001 C CNN
F 1 "GND" H 605 1777 50  0000 C CNN
F 2 "" H 600 1950 50  0001 C CNN
F 3 "" H 600 1950 50  0001 C CNN
	1    600  1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E796709
P 1050 1850
F 0 "#PWR?" H 1050 1700 50  0001 C CNN
F 1 "+5V" H 1065 2023 50  0000 C CNN
F 2 "" H 1050 1850 50  0001 C CNN
F 3 "" H 1050 1850 50  0001 C CNN
	1    1050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E796713
P 1200 1850
F 0 "R?" V 1407 1850 50  0000 C CNN
F 1 "10k" V 1316 1850 50  0000 C CNN
F 2 "" V 1130 1850 50  0001 C CNN
F 3 "~" H 1200 1850 50  0001 C CNN
	1    1200 1850
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E79671D
P 800 1950
F 0 "SW?" H 800 1765 50  0000 C CNN
F 1 "BTN_A" H 800 1856 50  0000 C CNN
F 2 "" H 800 2150 50  0001 C CNN
F 3 "~" H 800 2150 50  0001 C CNN
	1    800  1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 1950 1350 1950
Wire Wire Line
	1350 1850 1350 1950
Wire Wire Line
	1350 1950 1850 1950
Connection ~ 1350 1950
Text Label 1850 1950 2    50   ~ 0
BTN_A
$Comp
L power:GND #PWR?
U 1 1 5E7AAD53
P 2250 850
F 0 "#PWR?" H 2250 600 50  0001 C CNN
F 1 "GND" H 2255 677 50  0000 C CNN
F 2 "" H 2250 850 50  0001 C CNN
F 3 "" H 2250 850 50  0001 C CNN
	1    2250 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E7AAD5D
P 2700 750
F 0 "#PWR?" H 2700 600 50  0001 C CNN
F 1 "+5V" H 2715 923 50  0000 C CNN
F 2 "" H 2700 750 50  0001 C CNN
F 3 "" H 2700 750 50  0001 C CNN
	1    2700 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7AAD67
P 2850 750
F 0 "R?" V 3057 750 50  0000 C CNN
F 1 "10k" V 2966 750 50  0000 C CNN
F 2 "" V 2780 750 50  0001 C CNN
F 3 "~" H 2850 750 50  0001 C CNN
	1    2850 750 
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7AAD71
P 2450 850
F 0 "SW?" H 2450 665 50  0000 C CNN
F 1 "BTN_LEFT" H 2450 756 50  0000 C CNN
F 2 "" H 2450 1050 50  0001 C CNN
F 3 "~" H 2450 1050 50  0001 C CNN
	1    2450 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 850  3000 850 
Wire Wire Line
	3000 750  3000 850 
$Comp
L power:GND #PWR?
U 1 1 5E7AAD7D
P 2250 1400
F 0 "#PWR?" H 2250 1150 50  0001 C CNN
F 1 "GND" H 2255 1227 50  0000 C CNN
F 2 "" H 2250 1400 50  0001 C CNN
F 3 "" H 2250 1400 50  0001 C CNN
	1    2250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E7AAD87
P 2700 1300
F 0 "#PWR?" H 2700 1150 50  0001 C CNN
F 1 "+5V" H 2715 1473 50  0000 C CNN
F 2 "" H 2700 1300 50  0001 C CNN
F 3 "" H 2700 1300 50  0001 C CNN
	1    2700 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7AAD91
P 2850 1300
F 0 "R?" V 3057 1300 50  0000 C CNN
F 1 "10k" V 2966 1300 50  0000 C CNN
F 2 "" V 2780 1300 50  0001 C CNN
F 3 "~" H 2850 1300 50  0001 C CNN
	1    2850 1300
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7AAD9B
P 2450 1400
F 0 "SW?" H 2450 1215 50  0000 C CNN
F 1 "BTN_RIGHT" H 2450 1306 50  0000 C CNN
F 2 "" H 2450 1600 50  0001 C CNN
F 3 "~" H 2450 1600 50  0001 C CNN
	1    2450 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 1400 3000 1400
Wire Wire Line
	3000 1300 3000 1400
Text Label 3500 850  2    50   ~ 0
BTN_LEFT
Wire Wire Line
	3500 850  3000 850 
Connection ~ 3000 850 
Wire Wire Line
	3000 1400 3500 1400
Connection ~ 3000 1400
Text Label 3500 1400 2    50   ~ 0
BTN_RIGHT
$Comp
L power:GND #PWR?
U 1 1 5E7AADAD
P 2250 1950
F 0 "#PWR?" H 2250 1700 50  0001 C CNN
F 1 "GND" H 2255 1777 50  0000 C CNN
F 2 "" H 2250 1950 50  0001 C CNN
F 3 "" H 2250 1950 50  0001 C CNN
	1    2250 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E7AADB7
P 2700 1850
F 0 "#PWR?" H 2700 1700 50  0001 C CNN
F 1 "+5V" H 2715 2023 50  0000 C CNN
F 2 "" H 2700 1850 50  0001 C CNN
F 3 "" H 2700 1850 50  0001 C CNN
	1    2700 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7AADC1
P 2850 1850
F 0 "R?" V 3057 1850 50  0000 C CNN
F 1 "10k" V 2966 1850 50  0000 C CNN
F 2 "" V 2780 1850 50  0001 C CNN
F 3 "~" H 2850 1850 50  0001 C CNN
	1    2850 1850
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7AADCB
P 2450 1950
F 0 "SW?" H 2450 1765 50  0000 C CNN
F 1 "BTN_UP" H 2450 1856 50  0000 C CNN
F 2 "" H 2450 2150 50  0001 C CNN
F 3 "~" H 2450 2150 50  0001 C CNN
	1    2450 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 1950 3000 1950
Wire Wire Line
	3000 1850 3000 1950
Wire Wire Line
	3000 1950 3500 1950
Connection ~ 3000 1950
Text Label 3500 1950 2    50   ~ 0
BTN_UP
$Comp
L power:GND #PWR?
U 1 1 5E7EAA23
P 600 2500
F 0 "#PWR?" H 600 2250 50  0001 C CNN
F 1 "GND" H 605 2327 50  0000 C CNN
F 2 "" H 600 2500 50  0001 C CNN
F 3 "" H 600 2500 50  0001 C CNN
	1    600  2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E7EAA2D
P 1050 2400
F 0 "#PWR?" H 1050 2250 50  0001 C CNN
F 1 "+5V" H 1065 2573 50  0000 C CNN
F 2 "" H 1050 2400 50  0001 C CNN
F 3 "" H 1050 2400 50  0001 C CNN
	1    1050 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7EAA37
P 1200 2400
F 0 "R?" V 1407 2400 50  0000 C CNN
F 1 "10k" V 1316 2400 50  0000 C CNN
F 2 "" V 1130 2400 50  0001 C CNN
F 3 "~" H 1200 2400 50  0001 C CNN
	1    1200 2400
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7EAA41
P 800 2500
F 0 "SW?" H 800 2315 50  0000 C CNN
F 1 "BTN_B" H 800 2406 50  0000 C CNN
F 2 "" H 800 2700 50  0001 C CNN
F 3 "~" H 800 2700 50  0001 C CNN
	1    800  2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 2500 1350 2500
Wire Wire Line
	1350 2400 1350 2500
$Comp
L power:GND #PWR?
U 1 1 5E7EAA4D
P 600 3050
F 0 "#PWR?" H 600 2800 50  0001 C CNN
F 1 "GND" H 605 2877 50  0000 C CNN
F 2 "" H 600 3050 50  0001 C CNN
F 3 "" H 600 3050 50  0001 C CNN
	1    600  3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E7EAA57
P 1050 2950
F 0 "#PWR?" H 1050 2800 50  0001 C CNN
F 1 "+5V" H 1065 3123 50  0000 C CNN
F 2 "" H 1050 2950 50  0001 C CNN
F 3 "" H 1050 2950 50  0001 C CNN
	1    1050 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7EAA61
P 1200 2950
F 0 "R?" V 1407 2950 50  0000 C CNN
F 1 "10k" V 1316 2950 50  0000 C CNN
F 2 "" V 1130 2950 50  0001 C CNN
F 3 "~" H 1200 2950 50  0001 C CNN
	1    1200 2950
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7EAA6B
P 800 3050
F 0 "SW?" H 800 2865 50  0000 C CNN
F 1 "BTN_X" H 800 2956 50  0000 C CNN
F 2 "" H 800 3250 50  0001 C CNN
F 3 "~" H 800 3250 50  0001 C CNN
	1    800  3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 3050 1350 3050
Wire Wire Line
	1350 2950 1350 3050
Text Label 1850 2500 2    50   ~ 0
BTN_B
Wire Wire Line
	1850 2500 1350 2500
Connection ~ 1350 2500
Wire Wire Line
	1350 3050 1850 3050
Connection ~ 1350 3050
Text Label 1850 3050 2    50   ~ 0
BTN_X
$Comp
L power:GND #PWR?
U 1 1 5E7EAA7D
P 600 3600
F 0 "#PWR?" H 600 3350 50  0001 C CNN
F 1 "GND" H 605 3427 50  0000 C CNN
F 2 "" H 600 3600 50  0001 C CNN
F 3 "" H 600 3600 50  0001 C CNN
	1    600  3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E7EAA87
P 1050 3500
F 0 "#PWR?" H 1050 3350 50  0001 C CNN
F 1 "+5V" H 1065 3673 50  0000 C CNN
F 2 "" H 1050 3500 50  0001 C CNN
F 3 "" H 1050 3500 50  0001 C CNN
	1    1050 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7EAA91
P 1200 3500
F 0 "R?" V 1407 3500 50  0000 C CNN
F 1 "10k" V 1316 3500 50  0000 C CNN
F 2 "" V 1130 3500 50  0001 C CNN
F 3 "~" H 1200 3500 50  0001 C CNN
	1    1200 3500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7EAA9B
P 800 3600
F 0 "SW?" H 800 3415 50  0000 C CNN
F 1 "BTN_Y" H 800 3506 50  0000 C CNN
F 2 "" H 800 3800 50  0001 C CNN
F 3 "~" H 800 3800 50  0001 C CNN
	1    800  3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 3600 1350 3600
Wire Wire Line
	1350 3500 1350 3600
Wire Wire Line
	1350 3600 1850 3600
Connection ~ 1350 3600
Text Label 1850 3600 2    50   ~ 0
BTN_Y
$Comp
L power:GND #PWR?
U 1 1 5E7EAAAA
P 2250 2500
F 0 "#PWR?" H 2250 2250 50  0001 C CNN
F 1 "GND" H 2255 2327 50  0000 C CNN
F 2 "" H 2250 2500 50  0001 C CNN
F 3 "" H 2250 2500 50  0001 C CNN
	1    2250 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E7EAAB4
P 2700 2400
F 0 "#PWR?" H 2700 2250 50  0001 C CNN
F 1 "+5V" H 2715 2573 50  0000 C CNN
F 2 "" H 2700 2400 50  0001 C CNN
F 3 "" H 2700 2400 50  0001 C CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7EAABE
P 2850 2400
F 0 "R?" V 3057 2400 50  0000 C CNN
F 1 "10k" V 2966 2400 50  0000 C CNN
F 2 "" V 2780 2400 50  0001 C CNN
F 3 "~" H 2850 2400 50  0001 C CNN
	1    2850 2400
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7EAAC8
P 2450 2500
F 0 "SW?" H 2450 2315 50  0000 C CNN
F 1 "BTN_DOWN" H 2450 2406 50  0000 C CNN
F 2 "" H 2450 2700 50  0001 C CNN
F 3 "~" H 2450 2700 50  0001 C CNN
	1    2450 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 2500 3000 2500
Wire Wire Line
	3000 2400 3000 2500
$Comp
L power:GND #PWR?
U 1 1 5E7EAAD4
P 2250 3050
F 0 "#PWR?" H 2250 2800 50  0001 C CNN
F 1 "GND" H 2255 2877 50  0000 C CNN
F 2 "" H 2250 3050 50  0001 C CNN
F 3 "" H 2250 3050 50  0001 C CNN
	1    2250 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E7EAADE
P 2700 2950
F 0 "#PWR?" H 2700 2800 50  0001 C CNN
F 1 "+5V" H 2715 3123 50  0000 C CNN
F 2 "" H 2700 2950 50  0001 C CNN
F 3 "" H 2700 2950 50  0001 C CNN
	1    2700 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7EAAE8
P 2850 2950
F 0 "R?" V 3057 2950 50  0000 C CNN
F 1 "10k" V 2966 2950 50  0000 C CNN
F 2 "" V 2780 2950 50  0001 C CNN
F 3 "~" H 2850 2950 50  0001 C CNN
	1    2850 2950
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7EAAF2
P 2450 3050
F 0 "SW?" H 2450 2865 50  0000 C CNN
F 1 "BTN_L" H 2450 2956 50  0000 C CNN
F 2 "" H 2450 3250 50  0001 C CNN
F 3 "~" H 2450 3250 50  0001 C CNN
	1    2450 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3050 3000 3050
Wire Wire Line
	3000 2950 3000 3050
Text Label 3500 2500 2    50   ~ 0
BTN_DOWN
Wire Wire Line
	3500 2500 3000 2500
Connection ~ 3000 2500
Wire Wire Line
	3000 3050 3500 3050
Connection ~ 3000 3050
Text Label 3500 3050 2    50   ~ 0
BTN_L
$Comp
L power:GND #PWR?
U 1 1 5E7EAB04
P 2250 3600
F 0 "#PWR?" H 2250 3350 50  0001 C CNN
F 1 "GND" H 2255 3427 50  0000 C CNN
F 2 "" H 2250 3600 50  0001 C CNN
F 3 "" H 2250 3600 50  0001 C CNN
	1    2250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E7EAB0E
P 2700 3500
F 0 "#PWR?" H 2700 3350 50  0001 C CNN
F 1 "+5V" H 2715 3673 50  0000 C CNN
F 2 "" H 2700 3500 50  0001 C CNN
F 3 "" H 2700 3500 50  0001 C CNN
	1    2700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7EAB18
P 2850 3500
F 0 "R?" V 3057 3500 50  0000 C CNN
F 1 "10k" V 2966 3500 50  0000 C CNN
F 2 "" V 2780 3500 50  0001 C CNN
F 3 "~" H 2850 3500 50  0001 C CNN
	1    2850 3500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E7EAB22
P 2450 3600
F 0 "SW?" H 2450 3415 50  0000 C CNN
F 1 "BTN_R" H 2450 3506 50  0000 C CNN
F 2 "" H 2450 3800 50  0001 C CNN
F 3 "~" H 2450 3800 50  0001 C CNN
	1    2450 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3600 3000 3600
Wire Wire Line
	3000 3500 3000 3600
Wire Wire Line
	3000 3600 3500 3600
Connection ~ 3000 3600
Text Label 3500 3600 2    50   ~ 0
BTN_R
Text Label 6200 2000 0    50   ~ 0
BTN_RIGHT
Wire Wire Line
	6700 2000 6200 2000
Text Label 6200 2100 0    50   ~ 0
BTN_LEFT
Wire Wire Line
	6700 2100 6200 2100
Text Label 6200 2200 0    50   ~ 0
BTN_DOWN
Wire Wire Line
	6700 2200 6200 2200
Text Label 6200 2300 0    50   ~ 0
BTN_UP
Wire Wire Line
	6700 2300 6200 2300
Text Label 6200 2600 0    50   ~ 0
BTN_Y
Wire Wire Line
	6700 2600 6200 2600
Text Label 6200 2700 0    50   ~ 0
BTN_B
Wire Wire Line
	6700 2700 6200 2700
Text Label 4450 2400 0    50   ~ 0
BTN_R
Wire Wire Line
	4450 2400 4950 2400
Wire Wire Line
	4950 2500 4450 2500
Text Label 4450 2500 0    50   ~ 0
BTN_L
Wire Wire Line
	4950 2000 4450 2000
Wire Wire Line
	4950 2100 4450 2100
Wire Wire Line
	4950 2200 4450 2200
Wire Wire Line
	4950 2300 4450 2300
Text Label 4450 2600 0    50   ~ 0
BTN_X
Wire Wire Line
	4950 2600 4450 2600
Text Label 4450 2700 0    50   ~ 0
BTN_A
Wire Wire Line
	4950 2700 4450 2700
$Comp
L power:+5V #PWR?
U 1 1 5E81124B
P 4450 2000
F 0 "#PWR?" H 4450 1850 50  0001 C CNN
F 1 "+5V" V 4465 2128 50  0000 L CNN
F 2 "" H 4450 2000 50  0001 C CNN
F 3 "" H 4450 2000 50  0001 C CNN
	1    4450 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E812608
P 4450 2100
F 0 "#PWR?" H 4450 1950 50  0001 C CNN
F 1 "+5V" V 4465 2228 50  0000 L CNN
F 2 "" H 4450 2100 50  0001 C CNN
F 3 "" H 4450 2100 50  0001 C CNN
	1    4450 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E81284B
P 4450 2200
F 0 "#PWR?" H 4450 2050 50  0001 C CNN
F 1 "+5V" V 4465 2328 50  0000 L CNN
F 2 "" H 4450 2200 50  0001 C CNN
F 3 "" H 4450 2200 50  0001 C CNN
	1    4450 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E812C28
P 4450 2300
F 0 "#PWR?" H 4450 2150 50  0001 C CNN
F 1 "+5V" V 4465 2428 50  0000 L CNN
F 2 "" H 4450 2300 50  0001 C CNN
F 3 "" H 4450 2300 50  0001 C CNN
	1    4450 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 1800 6050 1700
Wire Wire Line
	5750 1700 6050 1700
Wire Wire Line
	5350 950  5350 1300
Wire Wire Line
	7100 950  7100 1300
Wire Wire Line
	4300 900  4400 900 
Wire Wire Line
	4300 800  4400 800 
Wire Wire Line
	4300 700  4400 700 
Wire Wire Line
	4300 1000 4400 1000
Wire Wire Line
	4300 1100 4400 1100
$Comp
L power:+5V #PWR?
U 1 1 5E72988A
P 4300 700
F 0 "#PWR?" H 4300 550 50  0001 C CNN
F 1 "+5V" V 4315 828 50  0000 L CNN
F 2 "" H 4300 700 50  0001 C CNN
F 3 "" H 4300 700 50  0001 C CNN
	1    4300 700 
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
