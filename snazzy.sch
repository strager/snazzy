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
L 4xxx:4021 U1
U 1 1 5E71A7E2
P 5350 2100
F 0 "U1" V 5304 2944 50  0000 L CNN
F 1 "4021" V 5395 2944 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5350 2250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4021B.pdf" H 5350 2250 50  0001 C CNN
	1    5350 2100
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4021 U2
U 1 1 5E71B42D
P 7550 2100
F 0 "U2" V 7504 2944 50  0000 L CNN
F 1 "4021" V 7595 2944 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7550 2250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4021B.pdf" H 7550 2250 50  0001 C CNN
	1    7550 2100
	1    0    0    -1  
$EndComp
Text GLabel 4950 1500 0    50   Input ~ 0
SNES_clack
Text GLabel 4300 1150 0    50   Input ~ 0
SNES_latch
$Comp
L power:GND #PWR026
U 1 1 5E72AC27
P 4300 900
F 0 "#PWR026" H 4300 650 50  0001 C CNN
F 1 "GND" V 4305 772 50  0000 R CNN
F 2 "" H 4300 900 50  0001 C CNN
F 3 "" H 4300 900 50  0001 C CNN
	1    4300 900 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR031
U 1 1 5E72BE0B
P 5350 950
F 0 "#PWR031" H 5350 800 50  0001 C CNN
F 1 "+5V" V 5365 1078 50  0000 L CNN
F 2 "" H 5350 950 50  0001 C CNN
F 3 "" H 5350 950 50  0001 C CNN
	1    5350 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5E72CF0B
P 5350 3000
F 0 "#PWR032" H 5350 2750 50  0001 C CNN
F 1 "GND" V 5355 2872 50  0000 R CNN
F 2 "" H 5350 3000 50  0001 C CNN
F 3 "" H 5350 3000 50  0001 C CNN
	1    5350 3000
	1    0    0    -1  
$EndComp
Text GLabel 4950 1700 0    50   Input ~ 0
SNES_latch
Text GLabel 7150 1700 0    50   Input ~ 0
SNES_latch
Text GLabel 7150 1500 0    50   Input ~ 0
SNES_clack
Text GLabel 8550 1700 2    50   Output ~ 0
SNES_data1
NoConn ~ 7950 1600
NoConn ~ 7950 1500
NoConn ~ 5750 1500
NoConn ~ 5750 1600
NoConn ~ 4950 1800
$Comp
L power:+5V #PWR033
U 1 1 5E731034
P 7550 950
F 0 "#PWR033" H 7550 800 50  0001 C CNN
F 1 "+5V" V 7565 1078 50  0000 L CNN
F 2 "" H 7550 950 50  0001 C CNN
F 3 "" H 7550 950 50  0001 C CNN
	1    7550 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5E731F19
P 7550 3000
F 0 "#PWR034" H 7550 2750 50  0001 C CNN
F 1 "GND" V 7555 2872 50  0000 R CNN
F 2 "" H 7550 3000 50  0001 C CNN
F 3 "" H 7550 3000 50  0001 C CNN
	1    7550 3000
	1    0    0    -1  
$EndComp
Text GLabel 4300 1250 0    50   Input ~ 0
SNES_clack
$Comp
L Device:R R1
U 1 1 5E735D45
P 1200 950
F 0 "R1" V 1407 950 50  0000 C CNN
F 1 "10k" V 1316 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1130 950 50  0001 C CNN
F 3 "~" H 1200 950 50  0001 C CNN
	1    1200 950 
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5E7348EA
P 800 850
F 0 "SW1" H 800 665 50  0000 C CNN
F 1 "BTN_START" H 800 756 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 800 1050 50  0001 C CNN
F 3 "~" H 800 1050 50  0001 C CNN
	1    800  850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 850  1350 850 
Wire Wire Line
	1350 950  1350 850 
$Comp
L Device:R R2
U 1 1 5E77B127
P 1200 1500
F 0 "R2" V 1407 1500 50  0000 C CNN
F 1 "10k" V 1316 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1130 1500 50  0001 C CNN
F 3 "~" H 1200 1500 50  0001 C CNN
	1    1200 1500
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E77B131
P 800 1400
F 0 "SW2" H 800 1215 50  0000 C CNN
F 1 "BTN_SELECT" H 800 1306 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 800 1600 50  0001 C CNN
F 3 "~" H 800 1600 50  0001 C CNN
	1    800  1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1400 1350 1400
Wire Wire Line
	1350 1500 1350 1400
Text Label 1850 850  2    50   ~ 0
BTN_START
Text Label 6650 2400 0    50   ~ 0
BTN_START
Wire Wire Line
	1850 850  1350 850 
Connection ~ 1350 850 
Wire Wire Line
	6650 2400 7150 2400
Wire Wire Line
	1350 1400 1850 1400
Connection ~ 1350 1400
Text Label 1850 1400 2    50   ~ 0
BTN_SELECT
Wire Wire Line
	7150 2500 6650 2500
Text Label 6650 2500 0    50   ~ 0
BTN_SELECT
$Comp
L Device:R R3
U 1 1 5E796713
P 1200 2050
F 0 "R3" V 1407 2050 50  0000 C CNN
F 1 "10k" V 1316 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1130 2050 50  0001 C CNN
F 3 "~" H 1200 2050 50  0001 C CNN
	1    1200 2050
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5E79671D
P 800 1950
F 0 "SW3" H 800 1765 50  0000 C CNN
F 1 "BTN_A" H 800 1856 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 800 2150 50  0001 C CNN
F 3 "~" H 800 2150 50  0001 C CNN
	1    800  1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1950 1350 1950
Wire Wire Line
	1350 2050 1350 1950
Wire Wire Line
	1350 1950 1850 1950
Connection ~ 1350 1950
Text Label 1850 1950 2    50   ~ 0
BTN_A
$Comp
L Device:R R7
U 1 1 5E7AAD67
P 2850 950
F 0 "R7" V 3057 950 50  0000 C CNN
F 1 "10k" V 2966 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2780 950 50  0001 C CNN
F 3 "~" H 2850 950 50  0001 C CNN
	1    2850 950 
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW7
U 1 1 5E7AAD71
P 2450 850
F 0 "SW7" H 2450 665 50  0000 C CNN
F 1 "BTN_LEFT" H 2450 756 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2450 1050 50  0001 C CNN
F 3 "~" H 2450 1050 50  0001 C CNN
	1    2450 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 850  3000 850 
Wire Wire Line
	3000 950  3000 850 
$Comp
L Device:R R8
U 1 1 5E7AAD91
P 2850 1500
F 0 "R8" V 3057 1500 50  0000 C CNN
F 1 "10k" V 2966 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2780 1500 50  0001 C CNN
F 3 "~" H 2850 1500 50  0001 C CNN
	1    2850 1500
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW8
U 1 1 5E7AAD9B
P 2450 1400
F 0 "SW8" H 2450 1215 50  0000 C CNN
F 1 "BTN_RIGHT" H 2450 1306 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2450 1600 50  0001 C CNN
F 3 "~" H 2450 1600 50  0001 C CNN
	1    2450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1400 3000 1400
Wire Wire Line
	3000 1500 3000 1400
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
L Device:R R9
U 1 1 5E7AADC1
P 2850 2050
F 0 "R9" V 3057 2050 50  0000 C CNN
F 1 "10k" V 2966 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2780 2050 50  0001 C CNN
F 3 "~" H 2850 2050 50  0001 C CNN
	1    2850 2050
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW9
U 1 1 5E7AADCB
P 2450 1950
F 0 "SW9" H 2450 1765 50  0000 C CNN
F 1 "BTN_UP" H 2450 1856 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2450 2150 50  0001 C CNN
F 3 "~" H 2450 2150 50  0001 C CNN
	1    2450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1950 3000 1950
Wire Wire Line
	3000 2050 3000 1950
Wire Wire Line
	3000 1950 3500 1950
Connection ~ 3000 1950
Text Label 3500 1950 2    50   ~ 0
BTN_UP
$Comp
L Device:R R4
U 1 1 5E7EAA37
P 1200 2600
F 0 "R4" V 1407 2600 50  0000 C CNN
F 1 "10k" V 1316 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1130 2600 50  0001 C CNN
F 3 "~" H 1200 2600 50  0001 C CNN
	1    1200 2600
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5E7EAA41
P 800 2500
F 0 "SW4" H 800 2315 50  0000 C CNN
F 1 "BTN_B" H 800 2406 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 800 2700 50  0001 C CNN
F 3 "~" H 800 2700 50  0001 C CNN
	1    800  2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2500 1350 2500
Wire Wire Line
	1350 2600 1350 2500
$Comp
L Device:R R5
U 1 1 5E7EAA61
P 1200 3150
F 0 "R5" V 1407 3150 50  0000 C CNN
F 1 "10k" V 1316 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1130 3150 50  0001 C CNN
F 3 "~" H 1200 3150 50  0001 C CNN
	1    1200 3150
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5E7EAA6B
P 800 3050
F 0 "SW5" H 800 2865 50  0000 C CNN
F 1 "BTN_X" H 800 2956 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 800 3250 50  0001 C CNN
F 3 "~" H 800 3250 50  0001 C CNN
	1    800  3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3050 1350 3050
Wire Wire Line
	1350 3150 1350 3050
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
L Device:R R6
U 1 1 5E7EAA91
P 1200 3700
F 0 "R6" V 1407 3700 50  0000 C CNN
F 1 "10k" V 1316 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1130 3700 50  0001 C CNN
F 3 "~" H 1200 3700 50  0001 C CNN
	1    1200 3700
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5E7EAA9B
P 800 3600
F 0 "SW6" H 800 3415 50  0000 C CNN
F 1 "BTN_Y" H 800 3506 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 800 3800 50  0001 C CNN
F 3 "~" H 800 3800 50  0001 C CNN
	1    800  3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3600 1350 3600
Wire Wire Line
	1350 3700 1350 3600
Wire Wire Line
	1350 3600 1850 3600
Connection ~ 1350 3600
Text Label 1850 3600 2    50   ~ 0
BTN_Y
$Comp
L Device:R R10
U 1 1 5E7EAABE
P 2850 2600
F 0 "R10" V 3057 2600 50  0000 C CNN
F 1 "10k" V 2966 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2780 2600 50  0001 C CNN
F 3 "~" H 2850 2600 50  0001 C CNN
	1    2850 2600
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW10
U 1 1 5E7EAAC8
P 2450 2500
F 0 "SW10" H 2450 2315 50  0000 C CNN
F 1 "BTN_DOWN" H 2450 2406 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2450 2700 50  0001 C CNN
F 3 "~" H 2450 2700 50  0001 C CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2500 3000 2500
Wire Wire Line
	3000 2600 3000 2500
$Comp
L Device:R R11
U 1 1 5E7EAAE8
P 2850 3150
F 0 "R11" V 3057 3150 50  0000 C CNN
F 1 "10k" V 2966 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2780 3150 50  0001 C CNN
F 3 "~" H 2850 3150 50  0001 C CNN
	1    2850 3150
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW11
U 1 1 5E7EAAF2
P 2450 3050
F 0 "SW11" H 2450 2865 50  0000 C CNN
F 1 "BTN_L" H 2450 2956 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2450 3250 50  0001 C CNN
F 3 "~" H 2450 3250 50  0001 C CNN
	1    2450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3050 3000 3050
Wire Wire Line
	3000 3150 3000 3050
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
L Device:R R12
U 1 1 5E7EAB18
P 2850 3700
F 0 "R12" V 3057 3700 50  0000 C CNN
F 1 "10k" V 2966 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2780 3700 50  0001 C CNN
F 3 "~" H 2850 3700 50  0001 C CNN
	1    2850 3700
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW12
U 1 1 5E7EAB22
P 2450 3600
F 0 "SW12" H 2450 3415 50  0000 C CNN
F 1 "BTN_R" H 2450 3506 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2450 3800 50  0001 C CNN
F 3 "~" H 2450 3800 50  0001 C CNN
	1    2450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3600 3000 3600
Wire Wire Line
	3000 3700 3000 3600
Wire Wire Line
	3000 3600 3500 3600
Connection ~ 3000 3600
Text Label 3500 3600 2    50   ~ 0
BTN_R
Text Label 6650 2000 0    50   ~ 0
VBTN_RIGHT
Wire Wire Line
	7150 2000 6650 2000
Text Label 6650 2100 0    50   ~ 0
VBTN_LEFT
Wire Wire Line
	7150 2100 6650 2100
Text Label 6650 2200 0    50   ~ 0
VBTN_DOWN
Wire Wire Line
	7150 2200 6650 2200
Text Label 6650 2300 0    50   ~ 0
VBTN_UP
Wire Wire Line
	7150 2300 6650 2300
Text Label 6650 2600 0    50   ~ 0
BTN_Y
Wire Wire Line
	7150 2600 6650 2600
Text Label 6650 2700 0    50   ~ 0
BTN_B
Wire Wire Line
	7150 2700 6650 2700
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
Wire Wire Line
	6050 1800 6050 1700
Wire Wire Line
	5750 1700 6050 1700
Wire Wire Line
	5350 950  5350 1000
Wire Wire Line
	7550 950  7550 1000
$Comp
L power:+5V #PWR025
U 1 1 5E72988A
P 4300 700
F 0 "#PWR025" H 4300 550 50  0001 C CNN
F 1 "+5V" V 4315 828 50  0000 L CNN
F 2 "" H 4300 700 50  0001 C CNN
F 3 "" H 4300 700 50  0001 C CNN
	1    4300 700 
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E703E7C
P 8600 950
F 0 "#FLG0101" H 8600 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 8600 1123 50  0000 C CNN
F 2 "" H 8600 950 50  0001 C CNN
F 3 "~" H 8600 950 50  0001 C CNN
	1    8600 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5E70484F
P 8600 950
F 0 "#PWR0101" H 8600 800 50  0001 C CNN
F 1 "+5V" V 8615 1078 50  0000 L CNN
F 2 "" H 8600 950 50  0001 C CNN
F 3 "" H 8600 950 50  0001 C CNN
	1    8600 950 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E707BD1
P 9150 950
F 0 "#PWR0102" H 9150 700 50  0001 C CNN
F 1 "GND" V 9155 822 50  0000 R CNN
F 2 "" H 9150 950 50  0001 C CNN
F 3 "" H 9150 950 50  0001 C CNN
	1    9150 950 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E70776C
P 9150 950
F 0 "#FLG0102" H 9150 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 9150 1123 50  0000 C CNN
F 2 "" H 9150 950 50  0001 C CNN
F 3 "~" H 9150 950 50  0001 C CNN
	1    9150 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5E734403
P 4500 800
F 0 "J1" H 4580 842 50  0000 L CNN
F 1 "Conn_01x03" H 4580 751 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G-5,08_1x03_P5.08mm_Vertical" H 4500 800 50  0001 C CNN
F 3 "~" H 4500 800 50  0001 C CNN
	1    4500 800 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5E73530D
P 4500 1150
F 0 "J2" H 4580 1192 50  0000 L CNN
F 1 "Conn_01x03" H 4580 1101 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_3-G-5,08_1x03_P5.08mm_Vertical" H 4500 1150 50  0001 C CNN
F 3 "~" H 4500 1150 50  0001 C CNN
	1    4500 1150
	1    0    0    -1  
$EndComp
NoConn ~ 4300 800 
Text GLabel 4300 1050 0    50   Output ~ 0
SNES_data1
$Comp
L Device:C C2
U 1 1 5E806C1B
P 6300 2200
F 0 "C2" H 6415 2246 50  0000 L CNN
F 1 "100n" H 6415 2155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 6338 2050 50  0001 C CNN
F 3 "~" H 6300 2200 50  0001 C CNN
	1    6300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1000 6300 1000
Wire Wire Line
	6300 1000 6300 2050
Connection ~ 7550 1000
Wire Wire Line
	7550 1000 7550 1300
Wire Wire Line
	6300 2350 6300 2950
Wire Wire Line
	7550 2950 7550 2900
Wire Wire Line
	7550 2950 7550 3000
Connection ~ 7550 2950
Wire Wire Line
	7550 2950 6300 2950
$Comp
L Device:C C1
U 1 1 5E8145B1
P 5850 2200
F 0 "C1" H 5965 2246 50  0000 L CNN
F 1 "100n" H 5965 2155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 5888 2050 50  0001 C CNN
F 3 "~" H 5850 2200 50  0001 C CNN
	1    5850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2900 5350 2950
Wire Wire Line
	5350 2950 5850 2950
Wire Wire Line
	5850 2950 5850 2350
Connection ~ 5350 2950
Wire Wire Line
	5350 2950 5350 3000
Wire Wire Line
	5850 2050 5850 1000
Connection ~ 5350 1000
Wire Wire Line
	5350 1000 5350 1300
Wire Wire Line
	5850 1000 5350 1000
$Comp
L power:+5V #PWR017
U 1 1 5E727AFB
P 2250 3050
F 0 "#PWR017" H 2250 2900 50  0001 C CNN
F 1 "+5V" V 2265 3178 50  0000 L CNN
F 2 "" H 2250 3050 50  0001 C CNN
F 3 "" H 2250 3050 50  0001 C CNN
	1    2250 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5E728B66
P 2250 3600
F 0 "#PWR018" H 2250 3450 50  0001 C CNN
F 1 "+5V" V 2265 3728 50  0000 L CNN
F 2 "" H 2250 3600 50  0001 C CNN
F 3 "" H 2250 3600 50  0001 C CNN
	1    2250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5E7291E1
P 2250 2500
F 0 "#PWR016" H 2250 2350 50  0001 C CNN
F 1 "+5V" V 2265 2628 50  0000 L CNN
F 2 "" H 2250 2500 50  0001 C CNN
F 3 "" H 2250 2500 50  0001 C CNN
	1    2250 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5E72996A
P 2250 1950
F 0 "#PWR015" H 2250 1800 50  0001 C CNN
F 1 "+5V" V 2265 2078 50  0000 L CNN
F 2 "" H 2250 1950 50  0001 C CNN
F 3 "" H 2250 1950 50  0001 C CNN
	1    2250 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5E729F9C
P 2250 1400
F 0 "#PWR014" H 2250 1250 50  0001 C CNN
F 1 "+5V" V 2265 1528 50  0000 L CNN
F 2 "" H 2250 1400 50  0001 C CNN
F 3 "" H 2250 1400 50  0001 C CNN
	1    2250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5E72A538
P 2250 850
F 0 "#PWR013" H 2250 700 50  0001 C CNN
F 1 "+5V" V 2265 978 50  0000 L CNN
F 2 "" H 2250 850 50  0001 C CNN
F 3 "" H 2250 850 50  0001 C CNN
	1    2250 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5E72AB61
P 600 850
F 0 "#PWR01" H 600 700 50  0001 C CNN
F 1 "+5V" V 615 978 50  0000 L CNN
F 2 "" H 600 850 50  0001 C CNN
F 3 "" H 600 850 50  0001 C CNN
	1    600  850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5E72B5AE
P 600 1400
F 0 "#PWR02" H 600 1250 50  0001 C CNN
F 1 "+5V" V 615 1528 50  0000 L CNN
F 2 "" H 600 1400 50  0001 C CNN
F 3 "" H 600 1400 50  0001 C CNN
	1    600  1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5E72BB66
P 600 1950
F 0 "#PWR03" H 600 1800 50  0001 C CNN
F 1 "+5V" V 615 2078 50  0000 L CNN
F 2 "" H 600 1950 50  0001 C CNN
F 3 "" H 600 1950 50  0001 C CNN
	1    600  1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5E72C0C1
P 600 2500
F 0 "#PWR04" H 600 2350 50  0001 C CNN
F 1 "+5V" V 615 2628 50  0000 L CNN
F 2 "" H 600 2500 50  0001 C CNN
F 3 "" H 600 2500 50  0001 C CNN
	1    600  2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5E72C80A
P 600 3050
F 0 "#PWR05" H 600 2900 50  0001 C CNN
F 1 "+5V" V 615 3178 50  0000 L CNN
F 2 "" H 600 3050 50  0001 C CNN
F 3 "" H 600 3050 50  0001 C CNN
	1    600  3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5E72CE05
P 600 3600
F 0 "#PWR06" H 600 3450 50  0001 C CNN
F 1 "+5V" V 615 3728 50  0000 L CNN
F 2 "" H 600 3600 50  0001 C CNN
F 3 "" H 600 3600 50  0001 C CNN
	1    600  3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5E76D185
P 2700 950
F 0 "#PWR019" H 2700 700 50  0001 C CNN
F 1 "GND" V 2705 822 50  0000 R CNN
F 2 "" H 2700 950 50  0001 C CNN
F 3 "" H 2700 950 50  0001 C CNN
	1    2700 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5E76E4C2
P 2700 1500
F 0 "#PWR020" H 2700 1250 50  0001 C CNN
F 1 "GND" V 2705 1372 50  0000 R CNN
F 2 "" H 2700 1500 50  0001 C CNN
F 3 "" H 2700 1500 50  0001 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E76EB42
P 2700 2050
F 0 "#PWR021" H 2700 1800 50  0001 C CNN
F 1 "GND" V 2705 1922 50  0000 R CNN
F 2 "" H 2700 2050 50  0001 C CNN
F 3 "" H 2700 2050 50  0001 C CNN
	1    2700 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5E76F1C9
P 2700 2600
F 0 "#PWR022" H 2700 2350 50  0001 C CNN
F 1 "GND" V 2705 2472 50  0000 R CNN
F 2 "" H 2700 2600 50  0001 C CNN
F 3 "" H 2700 2600 50  0001 C CNN
	1    2700 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5E76F849
P 2700 3150
F 0 "#PWR023" H 2700 2900 50  0001 C CNN
F 1 "GND" V 2705 3022 50  0000 R CNN
F 2 "" H 2700 3150 50  0001 C CNN
F 3 "" H 2700 3150 50  0001 C CNN
	1    2700 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5E76FEA2
P 2700 3700
F 0 "#PWR024" H 2700 3450 50  0001 C CNN
F 1 "GND" V 2705 3572 50  0000 R CNN
F 2 "" H 2700 3700 50  0001 C CNN
F 3 "" H 2700 3700 50  0001 C CNN
	1    2700 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E7704D7
P 1050 3700
F 0 "#PWR012" H 1050 3450 50  0001 C CNN
F 1 "GND" V 1055 3572 50  0000 R CNN
F 2 "" H 1050 3700 50  0001 C CNN
F 3 "" H 1050 3700 50  0001 C CNN
	1    1050 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E770CD3
P 1050 3150
F 0 "#PWR011" H 1050 2900 50  0001 C CNN
F 1 "GND" V 1055 3022 50  0000 R CNN
F 2 "" H 1050 3150 50  0001 C CNN
F 3 "" H 1050 3150 50  0001 C CNN
	1    1050 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E771248
P 1050 2600
F 0 "#PWR010" H 1050 2350 50  0001 C CNN
F 1 "GND" V 1055 2472 50  0000 R CNN
F 2 "" H 1050 2600 50  0001 C CNN
F 3 "" H 1050 2600 50  0001 C CNN
	1    1050 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E7717D1
P 1050 2050
F 0 "#PWR09" H 1050 1800 50  0001 C CNN
F 1 "GND" V 1055 1922 50  0000 R CNN
F 2 "" H 1050 2050 50  0001 C CNN
F 3 "" H 1050 2050 50  0001 C CNN
	1    1050 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E771D44
P 1050 1500
F 0 "#PWR08" H 1050 1250 50  0001 C CNN
F 1 "GND" V 1055 1372 50  0000 R CNN
F 2 "" H 1050 1500 50  0001 C CNN
F 3 "" H 1050 1500 50  0001 C CNN
	1    1050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E7722DF
P 1050 950
F 0 "#PWR07" H 1050 700 50  0001 C CNN
F 1 "GND" V 1055 822 50  0000 R CNN
F 2 "" H 1050 950 50  0001 C CNN
F 3 "" H 1050 950 50  0001 C CNN
	1    1050 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5E795EEA
P 4450 2000
F 0 "#PWR027" H 4450 1750 50  0001 C CNN
F 1 "GND" V 4455 1872 50  0000 R CNN
F 2 "" H 4450 2000 50  0001 C CNN
F 3 "" H 4450 2000 50  0001 C CNN
	1    4450 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5E796D06
P 4450 2100
F 0 "#PWR028" H 4450 1850 50  0001 C CNN
F 1 "GND" V 4455 1972 50  0000 R CNN
F 2 "" H 4450 2100 50  0001 C CNN
F 3 "" H 4450 2100 50  0001 C CNN
	1    4450 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5E796ECA
P 4450 2200
F 0 "#PWR029" H 4450 1950 50  0001 C CNN
F 1 "GND" V 4455 2072 50  0000 R CNN
F 2 "" H 4450 2200 50  0001 C CNN
F 3 "" H 4450 2200 50  0001 C CNN
	1    4450 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5E79702B
P 4450 2300
F 0 "#PWR030" H 4450 2050 50  0001 C CNN
F 1 "GND" V 4455 2172 50  0000 R CNN
F 2 "" H 4450 2300 50  0001 C CNN
F 3 "" H 4450 2300 50  0001 C CNN
	1    4450 2300
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC04 U3
U 1 1 5E797903
P 8250 1700
F 0 "U3" H 8250 2017 50  0000 C CNN
F 1 "74HC04" H 8250 1926 50  0000 C CNN
F 2 "" H 8250 1700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8250 1700 50  0001 C CNN
	1    8250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1800 7150 1800
$Comp
L 74xx:74HC04 U3
U 7 1 5E7BAF46
P 5350 4700
F 0 "U3" H 5580 4746 50  0000 L CNN
F 1 "74HC04" H 5580 4655 50  0000 L CNN
F 2 "" H 5350 4700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5350 4700 50  0001 C CNN
	7    5350 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E7BFF07
P 6050 4700
F 0 "C3" H 6165 4746 50  0000 L CNN
F 1 "100n" H 6165 4655 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 6088 4550 50  0001 C CNN
F 3 "~" H 6050 4700 50  0001 C CNN
	1    6050 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E7C087B
P 5350 5300
F 0 "#PWR0103" H 5350 5050 50  0001 C CNN
F 1 "GND" V 5355 5172 50  0000 R CNN
F 2 "" H 5350 5300 50  0001 C CNN
F 3 "" H 5350 5300 50  0001 C CNN
	1    5350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5200 5350 5250
Wire Wire Line
	5350 5250 6050 5250
Wire Wire Line
	6050 5250 6050 4850
Connection ~ 5350 5250
Wire Wire Line
	5350 5250 5350 5300
Wire Wire Line
	5350 4200 5350 4150
Wire Wire Line
	5350 4150 6050 4150
Wire Wire Line
	6050 4150 6050 4550
Wire Wire Line
	5350 4150 5350 4100
Connection ~ 5350 4150
$Comp
L power:+5V #PWR0104
U 1 1 5E7CAE0E
P 5350 4100
F 0 "#PWR0104" H 5350 3950 50  0001 C CNN
F 1 "+5V" V 5365 4228 50  0000 L CNN
F 2 "" H 5350 4100 50  0001 C CNN
F 3 "" H 5350 4100 50  0001 C CNN
	1    5350 4100
	1    0    0    -1  
$EndComp
$Comp
L snazzy-vendor:74HC08 U4
U 1 1 5E7E508C
P 1950 5050
F 0 "U4" V 1904 5238 50  0000 L CNN
F 1 "74HC08" V 1995 5238 50  0000 L CNN
F 2 "" H 1950 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc08.pdf" H 1950 5050 50  0001 C CNN
	1    1950 5050
	1    0    0    -1  
$EndComp
$Comp
L snazzy-vendor:74HC08 U4
U 5 1 5E7EC5FF
P 7050 4700
F 0 "U4" V 6683 4700 50  0000 C CNN
F 1 "74HC08" V 6774 4700 50  0000 C CNN
F 2 "" H 7050 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc08.pdf" H 7050 4700 50  0001 C CNN
	5    7050 4700
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC04 U3
U 2 1 5E7ED71B
P 1350 4950
F 0 "U3" H 1350 4633 50  0000 C CNN
F 1 "74HC04" H 1350 4724 50  0000 C CNN
F 2 "" H 1350 4950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 1350 4950 50  0001 C CNN
	2    1350 4950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U3
U 3 1 5E7EE526
P 1350 5950
F 0 "U3" V 1304 6130 50  0000 L CNN
F 1 "74HC04" V 1395 6130 50  0000 L CNN
F 2 "" H 1350 5950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 1350 5950 50  0001 C CNN
	3    1350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5150 600  5150
Text Label 600  5150 0    50   ~ 0
BTN_UP
Wire Wire Line
	1050 4950 600  4950
Text Label 600  4950 0    50   ~ 0
BTN_DOWN
Text Label 600  5750 0    50   ~ 0
BTN_DOWN
Text Label 600  5950 0    50   ~ 0
BTN_UP
Wire Wire Line
	600  5950 1050 5950
Wire Wire Line
	600  5750 1650 5750
Wire Wire Line
	2250 5850 2700 5850
Wire Wire Line
	2250 5050 2700 5050
Text Label 2700 5850 2    50   ~ 0
VBTN_DOWN
Text Label 2700 5050 2    50   ~ 0
VBTN_UP
$Comp
L snazzy-vendor:74HC08 U4
U 2 1 5E7E8B72
P 1950 5850
F 0 "U4" V 1904 6038 50  0000 L CNN
F 1 "74HC08" V 1995 6038 50  0000 L CNN
F 2 "" H 1950 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc08.pdf" H 1950 5850 50  0001 C CNN
	2    1950 5850
	1    0    0    -1  
$EndComp
$Comp
L snazzy-vendor:74HC08 U4
U 3 1 5E7EA4A4
P 1950 6650
F 0 "U4" V 1904 6838 50  0000 L CNN
F 1 "74HC08" V 1995 6838 50  0000 L CNN
F 2 "" H 1950 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc08.pdf" H 1950 6650 50  0001 C CNN
	3    1950 6650
	1    0    0    -1  
$EndComp
$Comp
L snazzy-vendor:74HC08 U4
U 4 1 5E7EB896
P 1950 7450
F 0 "U4" V 1904 7638 50  0000 L CNN
F 1 "74HC08" V 1995 7638 50  0000 L CNN
F 2 "" H 1950 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc08.pdf" H 1950 7450 50  0001 C CNN
	4    1950 7450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U3
U 4 1 5E7EECCA
P 1350 6550
F 0 "U3" H 1350 6867 50  0000 C CNN
F 1 "74HC04" H 1350 6776 50  0000 C CNN
F 2 "" H 1350 6550 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 1350 6550 50  0001 C CNN
	4    1350 6550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U3
U 5 1 5E7EF618
P 1350 7550
F 0 "U3" V 1304 7730 50  0000 L CNN
F 1 "74HC04" V 1395 7730 50  0000 L CNN
F 2 "" H 1350 7550 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 1350 7550 50  0001 C CNN
	5    1350 7550
	1    0    0    -1  
$EndComp
Text Label 600  6750 0    50   ~ 0
BTN_LEFT
Text Label 600  6550 0    50   ~ 0
BTN_RIGHT
Text Label 600  7350 0    50   ~ 0
BTN_RIGHT
Text Label 600  7550 0    50   ~ 0
BTN_LEFT
Wire Wire Line
	600  7550 1050 7550
Wire Wire Line
	600  6550 1050 6550
Wire Wire Line
	600  7350 1650 7350
Wire Wire Line
	600  6750 1650 6750
Wire Wire Line
	2250 7450 2700 7450
Text Label 2700 6650 2    50   ~ 0
VBTN_LEFT
Wire Wire Line
	2250 6650 2700 6650
Text Label 2700 7450 2    50   ~ 0
VBTN_RIGHT
$Comp
L Device:C C4
U 1 1 5E991520
P 7650 4750
F 0 "C4" H 7765 4796 50  0000 L CNN
F 1 "100n" H 7765 4705 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 7688 4600 50  0001 C CNN
F 3 "~" H 7650 4750 50  0001 C CNN
	1    7650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4200 7050 4150
Wire Wire Line
	7050 4150 7650 4150
Wire Wire Line
	7650 4150 7650 4600
Wire Wire Line
	7650 4900 7650 5250
Wire Wire Line
	7650 5250 7050 5250
Wire Wire Line
	7050 5250 7050 5200
Wire Wire Line
	7050 5250 7050 5300
Connection ~ 7050 5250
Wire Wire Line
	7050 4150 7050 4100
Connection ~ 7050 4150
$Comp
L power:+5V #PWR0105
U 1 1 5E9A298A
P 7050 4100
F 0 "#PWR0105" H 7050 3950 50  0001 C CNN
F 1 "+5V" V 7065 4228 50  0000 L CNN
F 2 "" H 7050 4100 50  0001 C CNN
F 3 "" H 7050 4100 50  0001 C CNN
	1    7050 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E9A330D
P 7050 5300
F 0 "#PWR0106" H 7050 5050 50  0001 C CNN
F 1 "GND" V 7055 5172 50  0000 R CNN
F 2 "" H 7050 5300 50  0001 C CNN
F 3 "" H 7050 5300 50  0001 C CNN
	1    7050 5300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
