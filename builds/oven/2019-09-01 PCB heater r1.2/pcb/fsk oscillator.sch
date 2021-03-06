EESchema Schematic File Version 4
LIBS:fsk oscillator-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "QRSS oscillator"
Date ""
Rev ""
Comp "Harden Technologies, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R7
U 1 1 5D3FEF67
P 7100 2500
F 0 "R7" H 7030 2454 50  0000 R CNN
F 1 "330" H 7030 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 2500 50  0001 C CNN
F 3 "~" H 7100 2500 50  0001 C CNN
	1    7100 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D41D173
P 6600 2800
F 0 "D2" H 6593 2545 50  0000 C CNN
F 1 "HEATING" H 6593 2636 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6600 2800 50  0001 C CNN
F 3 "~" H 6600 2800 50  0001 C CNN
	1    6600 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D721858
P 4500 2150
F 0 "R4" V 4400 2100 50  0000 L CNN
F 1 "1k" V 4300 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4430 2150 50  0001 C CNN
F 3 "~" H 4500 2150 50  0001 C CNN
	1    4500 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D6C96FE
P 3100 2250
F 0 "R5" H 3150 2300 50  0000 L CNN
F 1 "10k" H 3150 2200 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3030 2250 50  0001 C CNN
F 3 "~" H 3100 2250 50  0001 C CNN
	1    3100 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor TH1
U 1 1 5D3F1E5A
P 3100 1800
F 0 "TH1" H 3200 1850 50  0000 L CNN
F 1 "NTC" H 3200 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3100 1800 50  0001 C CNN
F 3 "~" H 3100 1800 50  0001 C CNN
	1    3100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2000 3100 2050
Connection ~ 3100 2050
Wire Wire Line
	3100 2050 3100 2100
Text Notes 4350 1350 0    50   ~ 0
temp set
$Comp
L power:GND #PWR02
U 1 1 5D70A149
P 5100 1450
F 0 "#PWR02" H 5100 1200 50  0001 C CNN
F 1 "GND" V 5200 1400 50  0000 C CNN
F 2 "" H 5100 1450 50  0001 C CNN
F 3 "" H 5100 1450 50  0001 C CNN
	1    5100 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D6FB32B
P 4550 1450
F 0 "R2" V 4650 1400 50  0000 L CNN
F 1 "10k" V 4750 1350 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4480 1450 50  0001 C CNN
F 3 "~" H 4550 1450 50  0001 C CNN
	1    4550 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D6FA95C
P 4950 1450
F 0 "R3" V 5050 1400 50  0000 L CNN
F 1 "10k" V 5150 1350 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4880 1450 50  0001 C CNN
F 3 "~" H 4950 1450 50  0001 C CNN
	1    4950 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1450 4800 1450
$Comp
L Device:R R15
U 1 1 5D773B2D
P 5250 2350
F 0 "R15" V 5350 2300 50  0000 L CNN
F 1 "10k" V 5450 2300 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5180 2350 50  0001 C CNN
F 3 "~" H 5250 2350 50  0001 C CNN
	1    5250 2350
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_Darlington_BCEC Q1
U 1 1 5D77D3C8
P 6500 2050
F 0 "Q1" H 6788 2096 50  0000 L CNN
F 1 "MJD122" H 6788 2005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 6700 2150 50  0001 C CNN
F 3 "~" H 6500 2050 50  0001 C CNN
	1    6500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1850 6600 1750
Wire Wire Line
	6600 1750 6700 1750
Wire Wire Line
	6700 1750 6700 1850
Wire Wire Line
	6600 1750 6600 1650
Connection ~ 6600 1750
Wire Wire Line
	6600 2250 6600 2300
$Comp
L power:GND #PWR013
U 1 1 5D7A5C55
P 6600 2950
F 0 "#PWR013" H 6600 2700 50  0001 C CNN
F 1 "GND" H 6600 2800 50  0000 C CNN
F 2 "" H 6600 2950 50  0001 C CNN
F 3 "" H 6600 2950 50  0001 C CNN
	1    6600 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D7B9257
P 3100 2400
F 0 "#PWR04" H 3100 2150 50  0001 C CNN
F 1 "GND" H 3100 2250 50  0000 C CNN
F 2 "" H 3100 2400 50  0001 C CNN
F 3 "" H 3100 2400 50  0001 C CNN
	1    3100 2400
	1    0    0    -1  
$EndComp
Text GLabel 6600 1650 1    50   Input ~ 0
+12V
$Comp
L Device:R R1
U 1 1 5D7CAE99
P 2300 1750
F 0 "R1" V 2200 1700 50  0000 L CNN
F 1 "1k" V 2100 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2230 1750 50  0001 C CNN
F 3 "~" H 2300 1750 50  0001 C CNN
	1    2300 1750
	-1   0    0    1   
$EndComp
Text GLabel 2300 1600 1    50   Input ~ 0
+12V
$Comp
L Device:D_Zener D1
U 1 1 5D7D1C37
P 2050 2000
F 0 "D1" H 2050 1784 50  0000 C CNN
F 1 "10V" H 2050 1875 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 2000 50  0001 C CNN
F 3 "~" H 2050 2000 50  0001 C CNN
	1    2050 2000
	-1   0    0    1   
$EndComp
Text Notes 5100 2700 0    50   ~ 0
hyst set
Wire Wire Line
	6600 2300 7100 2300
Wire Wire Line
	7100 2300 7100 2350
Connection ~ 6600 2300
Wire Wire Line
	6600 2300 6600 2350
$Comp
L Device:R R8
U 1 1 5D7F0612
P 7400 2500
F 0 "R8" H 7330 2454 50  0000 R CNN
F 1 "330" H 7330 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7330 2500 50  0001 C CNN
F 3 "~" H 7400 2500 50  0001 C CNN
	1    7400 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5D7F0978
P 7700 2500
F 0 "R9" H 7630 2454 50  0000 R CNN
F 1 "330" H 7630 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 2500 50  0001 C CNN
F 3 "~" H 7700 2500 50  0001 C CNN
	1    7700 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5D7F0CD9
P 8000 2500
F 0 "R10" H 7930 2454 50  0000 R CNN
F 1 "330" H 7930 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7930 2500 50  0001 C CNN
F 3 "~" H 8000 2500 50  0001 C CNN
	1    8000 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5D7F0ECA
P 8300 2500
F 0 "R11" H 8230 2454 50  0000 R CNN
F 1 "330" H 8230 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 2500 50  0001 C CNN
F 3 "~" H 8300 2500 50  0001 C CNN
	1    8300 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5D7F1198
P 8600 2500
F 0 "R12" H 8530 2454 50  0000 R CNN
F 1 "330" H 8530 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8530 2500 50  0001 C CNN
F 3 "~" H 8600 2500 50  0001 C CNN
	1    8600 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5D7F145F
P 8900 2500
F 0 "R13" H 8830 2454 50  0000 R CNN
F 1 "330" H 8830 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8830 2500 50  0001 C CNN
F 3 "~" H 8900 2500 50  0001 C CNN
	1    8900 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5D7F16AD
P 9200 2500
F 0 "R14" H 9130 2454 50  0000 R CNN
F 1 "330" H 9130 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9130 2500 50  0001 C CNN
F 3 "~" H 9200 2500 50  0001 C CNN
	1    9200 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 2300 7400 2300
Wire Wire Line
	7400 2300 7400 2350
Connection ~ 7100 2300
Wire Wire Line
	7400 2300 7700 2300
Wire Wire Line
	7700 2300 7700 2350
Connection ~ 7400 2300
Wire Wire Line
	7700 2300 8000 2300
Wire Wire Line
	8000 2300 8000 2350
Connection ~ 7700 2300
Wire Wire Line
	8000 2300 8300 2300
Wire Wire Line
	8300 2300 8300 2350
Connection ~ 8000 2300
Wire Wire Line
	8300 2300 8600 2300
Wire Wire Line
	8600 2300 8600 2350
Connection ~ 8300 2300
Wire Wire Line
	8600 2300 8900 2300
Wire Wire Line
	8900 2300 8900 2350
Connection ~ 8600 2300
Wire Wire Line
	8900 2300 9200 2300
Wire Wire Line
	9200 2300 9200 2350
Connection ~ 8900 2300
$Comp
L power:GND #PWR05
U 1 1 5D7F4F06
P 7100 2650
F 0 "#PWR05" H 7100 2400 50  0001 C CNN
F 1 "GND" H 7100 2500 50  0000 C CNN
F 2 "" H 7100 2650 50  0001 C CNN
F 3 "" H 7100 2650 50  0001 C CNN
	1    7100 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D7F51B6
P 7400 2650
F 0 "#PWR06" H 7400 2400 50  0001 C CNN
F 1 "GND" H 7400 2500 50  0000 C CNN
F 2 "" H 7400 2650 50  0001 C CNN
F 3 "" H 7400 2650 50  0001 C CNN
	1    7400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D7F53DC
P 7700 2650
F 0 "#PWR07" H 7700 2400 50  0001 C CNN
F 1 "GND" H 7700 2500 50  0000 C CNN
F 2 "" H 7700 2650 50  0001 C CNN
F 3 "" H 7700 2650 50  0001 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D7F55E5
P 8000 2650
F 0 "#PWR08" H 8000 2400 50  0001 C CNN
F 1 "GND" H 8000 2500 50  0000 C CNN
F 2 "" H 8000 2650 50  0001 C CNN
F 3 "" H 8000 2650 50  0001 C CNN
	1    8000 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D7F581F
P 8300 2650
F 0 "#PWR09" H 8300 2400 50  0001 C CNN
F 1 "GND" H 8300 2500 50  0000 C CNN
F 2 "" H 8300 2650 50  0001 C CNN
F 3 "" H 8300 2650 50  0001 C CNN
	1    8300 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D7F59FF
P 8600 2650
F 0 "#PWR010" H 8600 2400 50  0001 C CNN
F 1 "GND" H 8600 2500 50  0000 C CNN
F 2 "" H 8600 2650 50  0001 C CNN
F 3 "" H 8600 2650 50  0001 C CNN
	1    8600 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D7F5B2F
P 8900 2650
F 0 "#PWR011" H 8900 2400 50  0001 C CNN
F 1 "GND" H 8900 2500 50  0000 C CNN
F 2 "" H 8900 2650 50  0001 C CNN
F 3 "" H 8900 2650 50  0001 C CNN
	1    8900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D7F5D02
P 9200 2650
F 0 "#PWR012" H 9200 2400 50  0001 C CNN
F 1 "GND" H 9200 2500 50  0000 C CNN
F 2 "" H 9200 2650 50  0001 C CNN
F 3 "" H 9200 2650 50  0001 C CNN
	1    9200 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D419A47
P 6600 2500
F 0 "R6" H 6530 2454 50  0000 R CNN
F 1 "10k" H 6530 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6530 2500 50  0001 C CNN
F 3 "~" H 6600 2500 50  0001 C CNN
	1    6600 2500
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358_DFN U1
U 1 1 5D7F97B2
P 3850 2150
F 0 "U1" H 3850 2517 50  0000 C CNN
F 1 "LM358_DFN" H 3850 2426 50  0000 C CNN
F 2 "Package_SO:TI_SO-PowerPAD-8" H 3850 2150 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/lm358.pdf" H 3850 2150 50  0001 C CNN
	1    3850 2150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358_DFN U1
U 2 1 5D7FA5E0
P 5250 2050
F 0 "U1" H 5250 2417 50  0000 C CNN
F 1 "LM358_DFN" H 5250 2326 50  0000 C CNN
F 2 "Package_SO:TI_SO-PowerPAD-8" H 5250 2050 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/lm358.pdf" H 5250 2050 50  0001 C CNN
	2    5250 2050
	1    0    0    -1  
$EndComp
Text GLabel 1400 1800 1    50   Input ~ 0
+12V
$Comp
L power:GND #PWR03
U 1 1 5D7FB92E
P 1400 2400
F 0 "#PWR03" H 1400 2150 50  0001 C CNN
F 1 "GND" H 1400 2250 50  0000 C CNN
F 2 "" H 1400 2400 50  0001 C CNN
F 3 "" H 1400 2400 50  0001 C CNN
	1    1400 2400
	1    0    0    -1  
$EndComp
NoConn ~ 1500 2400
Wire Wire Line
	3100 2050 3550 2050
Wire Wire Line
	3550 2250 3450 2250
Wire Wire Line
	3450 2250 3450 2400
Wire Wire Line
	4250 2400 4250 2150
Wire Wire Line
	4250 2150 4150 2150
Wire Wire Line
	4350 2150 4250 2150
Connection ~ 4250 2150
Wire Wire Line
	4650 2150 4800 2150
Wire Wire Line
	5100 2350 4800 2350
Wire Wire Line
	4800 2350 4800 2150
Connection ~ 4800 2150
Wire Wire Line
	4800 2150 4950 2150
Wire Wire Line
	5400 2350 5600 2350
Wire Wire Line
	5600 2350 5600 2050
Wire Wire Line
	5600 2050 5550 2050
Wire Wire Line
	5600 2050 5800 2050
Wire Wire Line
	4750 1950 4950 1950
Wire Wire Line
	4750 1450 4750 1950
Wire Wire Line
	4700 1450 4750 1450
Connection ~ 4750 1450
Text GLabel 4400 1450 0    50   Input ~ 0
REF
Text GLabel 3100 1600 1    50   Input ~ 0
REF
$Comp
L Device:C C1
U 1 1 5D81D232
P 2300 2250
F 0 "C1" H 2415 2296 50  0000 L CNN
F 1 ".1u" H 2415 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2338 2100 50  0001 C CNN
F 3 "~" H 2300 2250 50  0001 C CNN
	1    2300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2100 2300 2000
Wire Wire Line
	2200 2000 2300 2000
Connection ~ 2300 2000
Wire Wire Line
	2300 2000 2300 1900
$Comp
L power:GND #PWR014
U 1 1 5D81F4B7
P 2300 2400
F 0 "#PWR014" H 2300 2150 50  0001 C CNN
F 1 "GND" H 2300 2250 50  0000 C CNN
F 2 "" H 2300 2400 50  0001 C CNN
F 3 "" H 2300 2400 50  0001 C CNN
	1    2300 2400
	1    0    0    -1  
$EndComp
Text GLabel 2400 2000 2    50   Input ~ 0
REF
Wire Wire Line
	2400 2000 2300 2000
$Comp
L power:GND #PWR01
U 1 1 5D7D87DD
P 1900 2000
F 0 "#PWR01" H 1900 1750 50  0001 C CNN
F 1 "GND" H 1900 1850 50  0000 C CNN
F 2 "" H 1900 2000 50  0001 C CNN
F 3 "" H 1900 2000 50  0001 C CNN
	1    1900 2000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358_DFN U1
U 3 1 5D7FAFBB
P 1500 2100
F 0 "U1" H 1350 2900 50  0000 L CNN
F 1 "LM358_DFN" H 1200 2750 50  0000 L CNN
F 2 "Package_SO:TI_SO-PowerPAD-8" H 1500 2100 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/lm358.pdf" H 1500 2100 50  0001 C CNN
	3    1500 2100
	1    0    0    -1  
$EndComp
Connection ~ 5600 2050
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5D84ACDF
P 1300 3300
F 0 "J1" H 1408 3481 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1408 3390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1300 3300 50  0001 C CNN
F 3 "~" H 1300 3300 50  0001 C CNN
	1    1300 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5D84B0DB
P 1500 3300
F 0 "#PWR016" H 1500 3050 50  0001 C CNN
F 1 "GND" H 1500 3150 50  0000 C CNN
F 2 "" H 1500 3300 50  0001 C CNN
F 3 "" H 1500 3300 50  0001 C CNN
	1    1500 3300
	0    -1   -1   0   
$EndComp
Text GLabel 1500 3400 2    50   Input ~ 0
+12V
$Comp
L Connector:TestPoint CTRL1
U 1 1 5D84CD8E
P 5600 2450
F 0 "CTRL1" H 5542 2476 50  0000 R CNN
F 1 "TestPoint" H 5542 2567 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 5800 2450 50  0001 C CNN
F 3 "~" H 5800 2450 50  0001 C CNN
	1    5600 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 2450 5600 2350
Connection ~ 5600 2350
$Comp
L Connector:TestPoint TEMP1
U 1 1 5D84BFC7
P 4250 2500
F 0 "TEMP1" H 4192 2526 50  0000 R CNN
F 1 "TestPoint" H 4192 2617 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 4450 2500 50  0001 C CNN
F 3 "~" H 4450 2500 50  0001 C CNN
	1    4250 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 2500 4250 2400
Wire Wire Line
	3450 2400 4250 2400
Connection ~ 4250 2400
Connection ~ 4750 1950
$Comp
L Connector:TestPoint SET1
U 1 1 5D84F357
P 4750 1950
F 0 "SET1" V 4950 2200 50  0000 C CNN
F 1 "TestPoint" V 4850 2200 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 4950 1950 50  0001 C CNN
F 3 "~" H 4950 1950 50  0001 C CNN
	1    4750 1950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint GND1
U 1 1 5D8534C0
P 4250 2850
F 0 "GND1" V 4204 3038 50  0000 L CNN
F 1 "TestPoint" V 4295 3038 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 4450 2850 50  0001 C CNN
F 3 "~" H 4450 2850 50  0001 C CNN
	1    4250 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5D8544AE
P 4250 2850
F 0 "#PWR015" H 4250 2600 50  0001 C CNN
F 1 "GND" H 4250 2700 50  0000 C CNN
F 2 "" H 4250 2850 50  0001 C CNN
F 3 "" H 4250 2850 50  0001 C CNN
	1    4250 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5D88D025
P 5950 2050
F 0 "R16" V 5850 2000 50  0000 L CNN
F 1 "1k" V 5750 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5880 2050 50  0001 C CNN
F 3 "~" H 5950 2050 50  0001 C CNN
	1    5950 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 2050 6300 2050
$EndSCHEMATC
