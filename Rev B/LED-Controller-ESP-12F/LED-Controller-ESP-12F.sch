EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "LED Controller"
Date "2021-10-20"
Rev "2.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x06_Female J3
U 1 1 615EAA3A
P 4250 3600
F 0 "J3" H 4278 3576 50  0000 L CNN
F 1 "USB to Serial Output" H 4278 3485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 4250 3600 50  0001 C CNN
F 3 "~" H 4250 3600 50  0001 C CNN
	1    4250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61704F6D
P 1650 2950
F 0 "#FLG01" H 1650 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 3100 50  0000 C CNN
F 2 "" H 1650 2950 50  0001 C CNN
F 3 "~" H 1650 2950 50  0001 C CNN
	1    1650 2950
	1    0    0    -1  
$EndComp
Text Notes 1300 2500 2    50   ~ 0
Power
$Comp
L RF_Module:ESP-12F U3
U 1 1 6172BBDE
P 6700 4050
F 0 "U3" H 6350 4950 50  0000 C CNN
F 1 "ESP-12F" H 6350 4850 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 6700 4050 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 6350 4150 50  0001 C CNN
	1    6700 4050
	1    0    0    -1  
$EndComp
Text GLabel 7450 3650 2    50   Input ~ 0
GPIO2
Text GLabel 7450 3850 2    50   Input ~ 0
GPIO4
Text GLabel 5950 3450 0    50   Input ~ 0
RESET
Text GLabel 5950 3650 0    50   Input ~ 0
ENABLE
Text GLabel 6700 3100 1    50   Input ~ 0
3V3
$Comp
L power:GND #PWR03
U 1 1 6172F497
P 6700 4900
F 0 "#PWR03" H 6700 4650 50  0001 C CNN
F 1 "GND" H 6705 4727 50  0000 C CNN
F 2 "" H 6700 4900 50  0001 C CNN
F 3 "" H 6700 4900 50  0001 C CNN
	1    6700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4900 6700 4750
Wire Wire Line
	6700 3250 6700 3100
Wire Wire Line
	6100 3450 5950 3450
Wire Wire Line
	5950 3650 6100 3650
Wire Wire Line
	7300 3650 7450 3650
Wire Wire Line
	7450 3850 7300 3850
Wire Wire Line
	7300 4350 7450 4350
Text GLabel 7450 3550 2    50   Input ~ 0
TX
Text GLabel 7450 3750 2    50   Input ~ 0
RX
Wire Wire Line
	7450 3550 7300 3550
Wire Wire Line
	7300 3750 7450 3750
NoConn ~ 6100 3850
NoConn ~ 6100 4050
NoConn ~ 6100 4150
NoConn ~ 6100 4250
NoConn ~ 6100 4350
NoConn ~ 6100 4450
NoConn ~ 6100 4550
NoConn ~ 7300 4450
NoConn ~ 7300 4250
NoConn ~ 7300 4150
NoConn ~ 7300 4050
NoConn ~ 7300 3950
Text GLabel 7450 3450 2    50   Input ~ 0
GPIO0
Wire Wire Line
	7450 3450 7300 3450
Text Notes 5900 2500 2    50   ~ 0
ESP-12F
$Comp
L Regulator_Linear:SPX3819M5-L-3-3 U1
U 1 1 61811825
P 2050 3050
F 0 "U1" H 2050 3392 50  0000 C CNN
F 1 "SPX3819M5-L-3-3" H 2050 3301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2050 3375 50  0001 C CNN
F 3 "https://www.exar.com/content/document.ashx?id=22106&languageid=1033&type=Datasheet&partnumber=SPX3819&filename=SPX3819.pdf&part=SPX3819" H 2050 3050 50  0001 C CNN
	1    2050 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61812B4D
P 2050 3500
F 0 "#PWR01" H 2050 3250 50  0001 C CNN
F 1 "GND" H 2055 3327 50  0000 C CNN
F 2 "" H 2050 3500 50  0001 C CNN
F 3 "" H 2050 3500 50  0001 C CNN
	1    2050 3500
	1    0    0    -1  
$EndComp
Text GLabel 2900 2950 2    50   Input ~ 0
3V3
Text GLabel 1500 2950 0    50   Input ~ 0
5V
Wire Wire Line
	1500 2950 1650 2950
Wire Wire Line
	1750 3050 1650 3050
Wire Wire Line
	1650 3050 1650 2950
Connection ~ 1650 2950
Wire Wire Line
	1650 2950 1750 2950
Wire Wire Line
	2050 3350 2050 3400
$Comp
L Device:C_Small C3
U 1 1 61833C16
P 2800 3150
F 0 "C3" H 2892 3196 50  0000 L CNN
F 1 "10n" H 2892 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2800 3150 50  0001 C CNN
F 3 "~" H 2800 3150 50  0001 C CNN
	1    2800 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61834FD1
P 2450 3200
F 0 "C2" H 2542 3246 50  0000 L CNN
F 1 "10u" H 2542 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2450 3200 50  0001 C CNN
F 3 "~" H 2450 3200 50  0001 C CNN
	1    2450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2950 2800 2950
Wire Wire Line
	2350 3050 2450 3050
Connection ~ 2050 3400
Wire Wire Line
	2050 3400 2050 3500
Wire Wire Line
	2800 3050 2800 2950
Connection ~ 2800 2950
Wire Wire Line
	2800 3250 2800 3400
Wire Wire Line
	2800 2950 2900 2950
Wire Wire Line
	2050 3400 2450 3400
Wire Wire Line
	2450 3300 2450 3400
Connection ~ 2450 3400
Wire Wire Line
	2450 3400 2800 3400
Wire Wire Line
	2450 3050 2450 3100
$Comp
L Device:C_Small C1
U 1 1 61861FD0
P 1650 3200
F 0 "C1" H 1450 3250 50  0000 L CNN
F 1 "1u" H 1450 3150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1650 3200 50  0001 C CNN
F 3 "~" H 1650 3200 50  0001 C CNN
	1    1650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3100 1650 3050
Connection ~ 1650 3050
Wire Wire Line
	1650 3300 1650 3400
Wire Wire Line
	1650 3400 2050 3400
Connection ~ 9400 3600
Wire Wire Line
	9200 3600 9400 3600
$Comp
L power:GND #PWR05
U 1 1 61805838
P 9400 4500
F 0 "#PWR05" H 9400 4250 50  0001 C CNN
F 1 "GND" H 9405 4327 50  0000 C CNN
F 2 "" H 9400 4500 50  0001 C CNN
F 3 "" H 9400 4500 50  0001 C CNN
	1    9400 4500
	1    0    0    -1  
$EndComp
Text GLabel 9400 3100 1    50   Input ~ 0
3V3
Text GLabel 9200 3600 0    50   Input ~ 0
GPIO0
Wire Wire Line
	8700 3100 8700 3200
Wire Wire Line
	8700 4000 8700 4100
$Comp
L power:GND #PWR04
U 1 1 617C1A3B
P 8700 4100
F 0 "#PWR04" H 8700 3850 50  0001 C CNN
F 1 "GND" H 8705 3927 50  0000 C CNN
F 2 "" H 8700 4100 50  0001 C CNN
F 3 "" H 8700 4100 50  0001 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
Text GLabel 8250 4000 0    50   Input ~ 0
GPIO15
Wire Wire Line
	8700 3450 8700 3200
Connection ~ 8700 3450
Connection ~ 8700 3200
Wire Wire Line
	8700 3700 8700 3450
Text GLabel 8700 3100 1    50   Input ~ 0
3V3
Text GLabel 8250 3700 0    50   Input ~ 0
GPIO2
Text GLabel 8250 3450 0    50   Input ~ 0
ENABLE
Text GLabel 8250 3200 0    50   Input ~ 0
RESET
Text GLabel 7450 4350 2    50   Input ~ 0
GPIO15
Text Notes 8100 5150 0    50   ~ 0
Important:\nGPIO2 -> HIGH\nGPIO15 -> LOW
Text Notes 9200 5300 0    50   ~ 0
Run mode:\nGPIO0 -> HIGH\n\nFlash mode:\nGPIO0 -> LOW
$Comp
L Device:R_Small R1
U 1 1 618822DD
P 8450 3200
F 0 "R1" V 8350 3100 50  0000 C CNN
F 1 "10k" V 8350 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8450 3200 50  0001 C CNN
F 3 "~" H 8450 3200 50  0001 C CNN
	1    8450 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61884940
P 8450 3450
F 0 "R2" V 8350 3350 50  0000 C CNN
F 1 "10k" V 8350 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8450 3450 50  0001 C CNN
F 3 "~" H 8450 3450 50  0001 C CNN
	1    8450 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 61884E00
P 8450 3700
F 0 "R3" V 8350 3600 50  0000 C CNN
F 1 "10k" V 8350 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8450 3700 50  0001 C CNN
F 3 "~" H 8450 3700 50  0001 C CNN
	1    8450 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 6188518F
P 8450 4000
F 0 "R5" V 8350 3900 50  0000 C CNN
F 1 "10k" V 8350 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8450 4000 50  0001 C CNN
F 3 "~" H 8450 4000 50  0001 C CNN
	1    8450 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6189BBEE
P 9400 3350
F 0 "R4" H 9300 3300 50  0000 C CNN
F 1 "10k" H 9200 3400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9400 3350 50  0001 C CNN
F 3 "~" H 9400 3350 50  0001 C CNN
	1    9400 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 3100 9400 3250
Wire Wire Line
	9400 3450 9400 3600
$Comp
L Device:R_Small R6
U 1 1 618A1AAF
P 9400 3850
F 0 "R6" H 9300 3800 50  0000 C CNN
F 1 "330" H 9200 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9400 3850 50  0001 C CNN
F 3 "~" H 9400 3850 50  0001 C CNN
	1    9400 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 3600 9400 3750
Wire Wire Line
	8350 3200 8250 3200
Wire Wire Line
	8250 3450 8350 3450
Wire Wire Line
	8350 3700 8250 3700
Wire Wire Line
	8250 4000 8350 4000
Wire Wire Line
	8550 4000 8700 4000
Wire Wire Line
	8550 3700 8700 3700
Wire Wire Line
	8550 3450 8700 3450
Wire Wire Line
	8550 3200 8700 3200
Text Notes 1550 4050 2    50   ~ 0
Level shifter
Text GLabel 1650 4650 0    50   Input ~ 0
GPIO4
$Comp
L Logic_LevelTranslator:SN74LV1T34DBV U2
U 1 1 618D5F18
P 2100 4650
F 0 "U2" H 2200 5050 50  0000 L CNN
F 1 "SN74LV1T34DBV" H 2200 4950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2750 4400 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74lv1t34.pdf" H 1700 4450 50  0001 C CNN
	1    2100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4650 1750 4650
Text GLabel 2100 4350 1    50   Input ~ 0
5V
$Comp
L power:GND #PWR02
U 1 1 618DD310
P 2100 4950
F 0 "#PWR02" H 2100 4700 50  0001 C CNN
F 1 "GND" H 2105 4777 50  0000 C CNN
F 2 "" H 2100 4950 50  0001 C CNN
F 3 "" H 2100 4950 50  0001 C CNN
	1    2100 4950
	1    0    0    -1  
$EndComp
Text GLabel 2550 4650 2    50   Input ~ 0
DATA
Text Notes 4000 2500 2    50   ~ 0
Connections
Text GLabel 4050 3400 0    50   Input ~ 0
3V3
Text GLabel 4050 3500 0    50   Input ~ 0
GROUND
Text GLabel 4050 3600 0    50   Input ~ 0
RX
Text GLabel 4050 3700 0    50   Input ~ 0
TX
Text GLabel 4050 3800 0    50   Input ~ 0
RESET
NoConn ~ 4050 3900
$Comp
L Connector:TestPoint TP1
U 1 1 619139B7
P 1750 4650
F 0 "TP1" H 1700 4850 50  0000 R CNN
F 1 "TestPoint" H 1700 4750 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 1950 4650 50  0001 C CNN
F 3 "~" H 1950 4650 50  0001 C CNN
	1    1750 4650
	1    0    0    -1  
$EndComp
Connection ~ 1750 4650
Wire Wire Line
	1750 4650 1650 4650
$Comp
L Connector:TestPoint TP2
U 1 1 6191425B
P 2450 4650
F 0 "TP2" H 2500 4850 50  0000 L CNN
F 1 "TestPoint" H 2500 4750 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 2650 4650 50  0001 C CNN
F 3 "~" H 2650 4650 50  0001 C CNN
	1    2450 4650
	1    0    0    -1  
$EndComp
Connection ~ 2450 4650
Wire Wire Line
	2450 4650 2400 4650
Wire Wire Line
	2450 4650 2550 4650
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 61918E14
P 4250 2700
F 0 "J1" H 4278 2676 50  0000 L CNN
F 1 "Power Input" H 4278 2585 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4250 2700 50  0001 C CNN
F 3 "~" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 6191AB32
P 4250 3100
F 0 "J2" H 4278 3126 50  0000 L CNN
F 1 "Power and Data Output" H 4278 3035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4250 3100 50  0001 C CNN
F 3 "~" H 4250 3100 50  0001 C CNN
	1    4250 3100
	1    0    0    -1  
$EndComp
Text GLabel 4050 2700 0    50   Input ~ 0
5V
Text GLabel 4050 2800 0    50   Input ~ 0
GROUND
Text GLabel 4050 3200 0    50   Input ~ 0
GROUND
Text GLabel 4050 3100 0    50   Input ~ 0
DATA
Text GLabel 4050 3000 0    50   Input ~ 0
5V
Text GLabel 1500 3400 0    50   Input ~ 0
GROUND
Wire Wire Line
	1500 3400 1650 3400
Connection ~ 1650 3400
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61947332
P 1650 3400
F 0 "#FLG02" H 1650 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 3573 50  0000 C CNN
F 2 "" H 1650 3400 50  0001 C CNN
F 3 "~" H 1650 3400 50  0001 C CNN
	1    1650 3400
	-1   0    0    1   
$EndComp
Wire Notes Line
	1100 2550 3150 2550
Wire Notes Line
	3150 2550 3150 3750
Wire Notes Line
	3150 3750 1100 3750
Wire Notes Line
	1100 3750 1100 2550
Wire Notes Line
	3550 2550 3550 4000
Wire Notes Line
	3550 4000 5250 4000
Wire Notes Line
	5250 4000 5250 2550
Wire Notes Line
	5250 2550 3550 2550
Wire Notes Line
	5550 2550 9950 2550
Wire Notes Line
	9950 2550 9950 5400
Wire Notes Line
	9950 5400 5550 5400
Wire Notes Line
	5550 5400 5550 2550
Wire Notes Line
	1100 4100 3150 4100
Wire Notes Line
	3150 4100 3150 5250
Wire Notes Line
	3150 5250 1100 5250
Wire Notes Line
	1100 5250 1100 4100
$Comp
L Switch:SW_Push_Dual SW1
U 1 1 617E574B
P 9600 4300
F 0 "SW1" H 9950 4250 50  0000 C CNN
F 1 "SW_Push" H 9950 4150 50  0000 C CNN
F 2 "SamacSys_Parts:LL3301FF065QJ" H 9600 4500 50  0001 C CNN
F 3 "~" H 9600 4500 50  0001 C CNN
	1    9600 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 3950 9400 4100
Wire Wire Line
	9400 4300 9400 4500
NoConn ~ 9800 4100
NoConn ~ 9800 4300
$EndSCHEMATC
