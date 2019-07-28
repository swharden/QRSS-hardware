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
L power:GND #PWR01
U 1 1 5D2588E8
P 2750 1950
F 0 "#PWR01" H 2750 1700 50  0001 C CNN
F 1 "GND" H 2755 1777 50  0000 C CNN
F 2 "" H 2750 1950 50  0001 C CNN
F 3 "" H 2750 1950 50  0001 C CNN
	1    2750 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D2595C4
P 2250 1650
F 0 "C2" H 2365 1696 50  0000 L CNN
F 1 ".1u" H 2365 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2288 1500 50  0001 C CNN
F 3 "~" H 2250 1650 50  0001 C CNN
	1    2250 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D259F5E
P 1900 1650
F 0 "C1" H 2015 1696 50  0000 L CNN
F 1 "10u" H 2015 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1938 1500 50  0001 C CNN
F 3 "~" H 1900 1650 50  0001 C CNN
	1    1900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1800 1900 1900
Wire Wire Line
	1900 1900 2250 1900
Wire Wire Line
	2250 1900 2250 1800
Wire Wire Line
	2250 1500 2250 1400
Wire Wire Line
	1900 1500 1900 1400
Wire Wire Line
	1900 1400 2250 1400
Wire Wire Line
	2250 1900 2750 1900
Wire Wire Line
	2750 1900 2750 1700
Connection ~ 2250 1900
Wire Wire Line
	2750 1900 2750 1950
Connection ~ 2750 1900
Wire Wire Line
	2250 1400 2450 1400
Connection ~ 2250 1400
$Comp
L Device:C C3
U 1 1 5D25BB30
P 3200 1650
F 0 "C3" H 3315 1696 50  0000 L CNN
F 1 "10u" H 3315 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3238 1500 50  0001 C CNN
F 3 "~" H 3200 1650 50  0001 C CNN
	1    3200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1500 3200 1400
Wire Wire Line
	3200 1400 3050 1400
$Comp
L Device:C C4
U 1 1 5D25C885
P 3550 1650
F 0 "C4" H 3665 1696 50  0000 L CNN
F 1 ".1u" H 3665 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 1500 50  0001 C CNN
F 3 "~" H 3550 1650 50  0001 C CNN
	1    3550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1800 3200 1900
Wire Wire Line
	3200 1900 2750 1900
Wire Wire Line
	3200 1900 3550 1900
Wire Wire Line
	3550 1900 3550 1800
Connection ~ 3200 1900
Wire Wire Line
	3550 1500 3550 1400
Wire Wire Line
	3550 1400 3200 1400
Connection ~ 3200 1400
$Comp
L Device:R R1
U 1 1 5D25D3BB
P 4000 1650
F 0 "R1" H 3930 1604 50  0000 R CNN
F 1 "10k" H 3930 1695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3930 1650 50  0001 C CNN
F 3 "~" H 4000 1650 50  0001 C CNN
	1    4000 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5D25E00B
P 3800 1400
F 0 "D1" H 3793 1145 50  0000 C CNN
F 1 "POWER" H 3793 1236 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3800 1400 50  0001 C CNN
F 3 "~" H 3800 1400 50  0001 C CNN
	1    3800 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 1800 4000 1900
Wire Wire Line
	4000 1900 3550 1900
Connection ~ 3550 1900
Wire Wire Line
	4000 1500 4000 1400
Wire Wire Line
	4000 1400 3950 1400
Wire Wire Line
	3650 1400 3550 1400
Connection ~ 3550 1400
Text GLabel 3300 1250 2    50   Input ~ 0
+5V
Text Notes 1050 1000 0    118  ~ 0
POWER REGULATION
Text Notes 1100 1850 0    50   ~ 0
7V - 27V DC
$Comp
L Device:C C10
U 1 1 5D2671C4
P 3700 3550
F 0 "C10" H 3815 3596 50  0000 L CNN
F 1 "120p" H 3815 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3738 3400 50  0001 C CNN
F 3 "~" H 3700 3550 50  0001 C CNN
	1    3700 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5D2678BD
P 3700 3950
F 0 "C12" H 3815 3996 50  0000 L CNN
F 1 "120p" H 3815 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3738 3800 50  0001 C CNN
F 3 "~" H 3700 3950 50  0001 C CNN
	1    3700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3800 3700 3750
$Comp
L power:GND #PWR011
U 1 1 5D26827F
P 3700 4100
F 0 "#PWR011" H 3700 3850 50  0001 C CNN
F 1 "GND" H 3705 3927 50  0000 C CNN
F 2 "" H 3700 4100 50  0001 C CNN
F 3 "" H 3700 4100 50  0001 C CNN
	1    3700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3750 4150 3750
Wire Wire Line
	4150 3750 4150 3500
Connection ~ 3700 3750
Wire Wire Line
	3700 3750 3700 3700
Wire Wire Line
	3850 3300 3700 3300
Wire Wire Line
	3700 3300 3700 3400
$Comp
L Device:R R6
U 1 1 5D269928
P 3350 3500
F 0 "R6" H 3420 3546 50  0000 L CNN
F 1 "10k" H 3420 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3280 3500 50  0001 C CNN
F 3 "~" H 3350 3500 50  0001 C CNN
	1    3350 3500
	1    0    0    -1  
$EndComp
Connection ~ 3700 3300
$Comp
L power:GND #PWR04
U 1 1 5D26AE33
P 3350 3650
F 0 "#PWR04" H 3350 3400 50  0001 C CNN
F 1 "GND" H 3355 3477 50  0000 C CNN
F 2 "" H 3350 3650 50  0001 C CNN
F 3 "" H 3350 3650 50  0001 C CNN
	1    3350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3300 3700 3300
$Comp
L Device:R R9
U 1 1 5D26C9DB
P 4150 3950
F 0 "R9" H 4220 3996 50  0000 L CNN
F 1 "220" H 4220 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4080 3950 50  0001 C CNN
F 3 "~" H 4150 3950 50  0001 C CNN
	1    4150 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D26CD42
P 4150 4100
F 0 "#PWR012" H 4150 3850 50  0001 C CNN
F 1 "GND" H 4155 3927 50  0000 C CNN
F 2 "" H 4150 4100 50  0001 C CNN
F 3 "" H 4150 4100 50  0001 C CNN
	1    4150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3800 4150 3750
Connection ~ 4150 3750
$Comp
L Device:R R2
U 1 1 5D26D71F
P 4150 2700
F 0 "R2" H 4220 2746 50  0000 L CNN
F 1 "1k" H 4220 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4080 2700 50  0001 C CNN
F 3 "~" H 4150 2700 50  0001 C CNN
	1    4150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D2704D6
P 4650 2950
F 0 "#PWR02" H 4650 2700 50  0001 C CNN
F 1 "GND" H 4655 2777 50  0000 C CNN
F 2 "" H 4650 2950 50  0001 C CNN
F 3 "" H 4650 2950 50  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2850 4150 2900
Connection ~ 4150 2900
Wire Wire Line
	4150 2900 4150 3050
Wire Wire Line
	3350 3350 3350 3300
Wire Wire Line
	4300 2900 4150 2900
$Comp
L Device:C C5
U 1 1 5D26E5FC
P 4450 2900
F 0 "C5" V 4198 2900 50  0000 C CNN
F 1 ".1u" V 4289 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4488 2750 50  0001 C CNN
F 3 "~" H 4450 2900 50  0001 C CNN
	1    4450 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 2950 4650 2900
Wire Wire Line
	4650 2900 4600 2900
Wire Wire Line
	4150 2550 4150 2450
Wire Wire Line
	4150 2450 4050 2450
$Comp
L Device:R R3
U 1 1 5D26911C
P 3900 3050
F 0 "R3" V 4107 3050 50  0000 C CNN
F 1 "10k" V 4016 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3830 3050 50  0001 C CNN
F 3 "~" H 3900 3050 50  0001 C CNN
	1    3900 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 3050 4150 3050
Connection ~ 4150 3050
Wire Wire Line
	4150 3050 4150 3100
Wire Wire Line
	3750 3050 3700 3050
Wire Wire Line
	3700 3050 3700 3300
$Comp
L Device:Crystal Y1
U 1 1 5D27F14B
P 3100 3300
F 0 "Y1" H 3100 3568 50  0000 C CNN
F 1 "10MHz" H 3100 3477 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Horizontal_1EP_style2" H 3100 3300 50  0001 C CNN
F 3 "~" H 3100 3300 50  0001 C CNN
	1    3100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3300 3350 3300
Connection ~ 3350 3300
$Comp
L Device:C C6
U 1 1 5D28025A
P 2600 3300
F 0 "C6" V 2852 3300 50  0000 C CNN
F 1 "33p" V 2761 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2638 3150 50  0001 C CNN
F 3 "~" H 2600 3300 50  0001 C CNN
	1    2600 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Capacitance D2
U 1 1 5D2814C6
P 2350 3550
F 0 "D2" V 2304 3629 50  0000 L CNN
F 1 "BB132" V 2395 3629 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 3550 50  0001 C CNN
F 3 "~" H 2350 3550 50  0001 C CNN
	1    2350 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 3300 2350 3300
Wire Wire Line
	2350 3300 2350 3400
$Comp
L power:GND #PWR07
U 1 1 5D2835A1
P 2350 3700
F 0 "#PWR07" H 2350 3450 50  0001 C CNN
F 1 "GND" H 2355 3527 50  0000 C CNN
F 2 "" H 2350 3700 50  0001 C CNN
F 3 "" H 2350 3700 50  0001 C CNN
	1    2350 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D2839B6
P 2100 3300
F 0 "R5" V 1893 3300 50  0000 C CNN
F 1 "10k" V 1984 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 3300 50  0001 C CNN
F 3 "~" H 2100 3300 50  0001 C CNN
	1    2100 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 3300 2350 3300
Connection ~ 2350 3300
$Comp
L Device:R R8
U 1 1 5D284AB1
P 1850 3550
F 0 "R8" H 1780 3504 50  0000 R CNN
F 1 "1k" H 1780 3595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 3550 50  0001 C CNN
F 3 "~" H 1850 3550 50  0001 C CNN
	1    1850 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 3400 1850 3300
Wire Wire Line
	1850 3300 1950 3300
$Comp
L power:GND #PWR06
U 1 1 5D286271
P 1850 3700
F 0 "#PWR06" H 1850 3450 50  0001 C CNN
F 1 "GND" H 1855 3527 50  0000 C CNN
F 2 "" H 1850 3700 50  0001 C CNN
F 3 "" H 1850 3700 50  0001 C CNN
	1    1850 3700
	1    0    0    -1  
$EndComp
Connection ~ 1850 3300
$Comp
L Device:C C8
U 1 1 5D28E939
P 1450 3550
F 0 "C8" H 1565 3596 50  0000 L CNN
F 1 ".1u" H 1565 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1488 3400 50  0001 C CNN
F 3 "~" H 1450 3550 50  0001 C CNN
	1    1450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3300 1450 3400
Wire Wire Line
	1450 3300 1850 3300
$Comp
L power:GND #PWR05
U 1 1 5D28FD52
P 1450 3700
F 0 "#PWR05" H 1450 3450 50  0001 C CNN
F 1 "GND" H 1455 3527 50  0000 C CNN
F 2 "" H 1450 3700 50  0001 C CNN
F 3 "" H 1450 3700 50  0001 C CNN
	1    1450 3700
	1    0    0    -1  
$EndComp
Connection ~ 1450 3300
Text Notes 1350 4175 0    50   ~ 0
adjust C6 for FSK magnitude
$Comp
L Device:C C9
U 1 1 5D292E8B
P 2850 3550
F 0 "C9" H 2965 3596 50  0000 L CNN
F 1 "33p" H 2965 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2888 3400 50  0001 C CNN
F 3 "~" H 2850 3550 50  0001 C CNN
	1    2850 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D293385
P 2850 3700
F 0 "#PWR08" H 2850 3450 50  0001 C CNN
F 1 "GND" H 2855 3527 50  0000 C CNN
F 2 "" H 2850 3700 50  0001 C CNN
F 3 "" H 2850 3700 50  0001 C CNN
	1    2850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3300 2850 3300
Wire Wire Line
	2850 3400 2850 3300
Connection ~ 2850 3300
Wire Wire Line
	2850 3300 2950 3300
Text Notes 1350 4075 0    50   ~ 0
adjust C9 for ideal center frequency
Text Notes 1250 2750 0    118  ~ 0
FSK CRYSTAL OSCILLATOR
$Comp
L Device:C C11
U 1 1 5D29F74B
P 4450 3750
F 0 "C11" V 4198 3750 50  0000 C CNN
F 1 "120p" V 4289 3750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4488 3600 50  0001 C CNN
F 3 "~" H 4450 3750 50  0001 C CNN
	1    4450 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3750 4150 3750
$Comp
L power:GND #PWR010
U 1 1 5D2A19E7
P 5200 3950
F 0 "#PWR010" H 5200 3700 50  0001 C CNN
F 1 "GND" H 5205 3777 50  0000 C CNN
F 2 "" H 5200 3950 50  0001 C CNN
F 3 "" H 5200 3950 50  0001 C CNN
	1    5200 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D2A1D86
P 5200 3250
F 0 "R4" H 5270 3296 50  0000 L CNN
F 1 "50" H 5270 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5130 3250 50  0001 C CNN
F 3 "~" H 5200 3250 50  0001 C CNN
	1    5200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3400 5200 3500
$Comp
L Device:R R7
U 1 1 5D2A3551
P 4950 3500
F 0 "R7" V 5157 3500 50  0000 C CNN
F 1 "10k" V 5066 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 3500 50  0001 C CNN
F 3 "~" H 4950 3500 50  0001 C CNN
	1    4950 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 3500 5200 3500
Connection ~ 5200 3500
Wire Wire Line
	5200 3500 5200 3550
Wire Wire Line
	4800 3500 4750 3500
Wire Wire Line
	4750 3500 4750 3750
Wire Wire Line
	4750 3750 4900 3750
Wire Wire Line
	4750 3750 4600 3750
Connection ~ 4750 3750
$Comp
L Device:C C7
U 1 1 5D2AB30E
P 5550 3500
F 0 "C7" V 5298 3500 50  0000 C CNN
F 1 "1n" V 5389 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5588 3350 50  0001 C CNN
F 3 "~" H 5550 3500 50  0001 C CNN
	1    5550 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 3500 5200 3500
Wire Wire Line
	5200 3000 5100 3000
Text GLabel 5100 3000 0    50   Input ~ 0
+5V
Text GLabel 4050 2450 0    50   Input ~ 0
+5V
Wire Wire Line
	5200 3100 5200 3000
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5D2B5DC2
P 6000 3500
F 0 "J3" H 6100 3475 50  0000 L CNN
F 1 "RF-OUT" H 6100 3384 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-16_Vertical" H 6000 3500 50  0001 C CNN
F 3 " ~" H 6000 3500 50  0001 C CNN
	1    6000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3500 5700 3500
$Comp
L power:GND #PWR09
U 1 1 5D2B78E6
P 6000 3700
F 0 "#PWR09" H 6000 3450 50  0001 C CNN
F 1 "GND" H 6005 3527 50  0000 C CNN
F 2 "" H 6000 3700 50  0001 C CNN
F 3 "" H 6000 3700 50  0001 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
Text Notes 5300 3050 0    50   ~ 0
R4 passes 250 mW
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 5D2D2729
P 4050 3300
F 0 "Q1" H 4241 3346 50  0000 L CNN
F 1 "MMBT3904" H 4241 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4250 3225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4050 3300 50  0001 L CNN
	1    4050 3300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q2
U 1 1 5D2D366F
P 5100 3750
F 0 "Q2" H 5291 3796 50  0000 L CNN
F 1 "MMBT3904" H 5291 3705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5300 3675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5100 3750 50  0001 L CNN
	1    5100 3750
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5D255895
P 2750 1400
F 0 "U1" H 2750 1642 50  0000 C CNN
F 1 "L7805" H 2750 1551 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-3_TabPin2" H 2775 1250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2750 1350 50  0001 C CNN
	1    2750 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5D2E24C6
P 1450 1700
F 0 "J1" H 1422 1582 50  0000 R CNN
F 1 "PWR" H 1422 1673 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1450 1700 50  0001 C CNN
F 3 "~" H 1450 1700 50  0001 C CNN
	1    1450 1700
	1    0    0    1   
$EndComp
Wire Wire Line
	1650 1600 1650 1400
Wire Wire Line
	1650 1400 1900 1400
Connection ~ 1900 1400
Wire Wire Line
	1650 1900 1900 1900
Wire Wire Line
	1650 1700 1650 1900
Connection ~ 1900 1900
$Comp
L power:GND #PWR03
U 1 1 5D2EE853
P 1250 3400
F 0 "#PWR03" H 1250 3150 50  0001 C CNN
F 1 "GND" H 1255 3227 50  0000 C CNN
F 2 "" H 1250 3400 50  0001 C CNN
F 3 "" H 1250 3400 50  0001 C CNN
	1    1250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3300 1450 3300
Text Notes 4800 1400 0    50   ~ 0
floating mounting holes
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5D2EDDE2
P 1050 3400
F 0 "J2" H 1022 3282 50  0000 R CNN
F 1 "FSK" H 1022 3373 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1050 3400 50  0001 C CNN
F 3 "~" H 1050 3400 50  0001 C CNN
	1    1050 3400
	1    0    0    1   
$EndComp
Wire Wire Line
	3300 1250 3200 1250
Wire Wire Line
	3200 1250 3200 1400
Text Notes 1900 2000 0    50   ~ 0
35V rated
Text Notes 3150 2000 0    50   ~ 0
10V rated
Text Notes 2650 3275 0    50   ~ 0
NP0
Text Notes 2875 3700 0    50   ~ 0
NP0
Text Notes 4500 3725 0    50   ~ 0
NP0
Text Notes 3725 3700 0    50   ~ 0
NP0
Text Notes 3725 4100 0    50   ~ 0
NP0
$Comp
L Mechanical:MountingHole H1
U 1 1 5D3E4C69
P 5275 1675
F 0 "H1" H 5375 1721 50  0000 L CNN
F 1 "MountingHole" H 5375 1630 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 5275 1675 50  0001 C CNN
F 3 "~" H 5275 1675 50  0001 C CNN
	1    5275 1675
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D3E7AE8
P 5275 1875
F 0 "H2" H 5375 1921 50  0000 L CNN
F 1 "MountingHole" H 5375 1830 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 5275 1875 50  0001 C CNN
F 3 "~" H 5275 1875 50  0001 C CNN
	1    5275 1875
	1    0    0    -1  
$EndComp
Text Notes 1225 4875 0    118  ~ 0
TEMPERATURE CONTROLLER
$Comp
L Device:Thermistor TH1
U 1 1 5D3F1E5A
P 1975 5975
F 0 "TH1" H 2080 6021 50  0000 L CNN
F 1 "Thermistor" H 2080 5930 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1975 5975 50  0001 C CNN
F 3 "~" H 1975 5975 50  0001 C CNN
	1    1975 5975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D3FEF67
P 2175 5475
F 0 "R10" H 2105 5429 50  0000 R CNN
F 1 "330" H 2105 5520 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2105 5475 50  0001 C CNN
F 3 "~" H 2175 5475 50  0001 C CNN
	1    2175 5475
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5D3FF40D
P 2450 5475
F 0 "R11" H 2380 5429 50  0000 R CNN
F 1 "330" H 2380 5520 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 5475 50  0001 C CNN
F 3 "~" H 2450 5475 50  0001 C CNN
	1    2450 5475
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5D3FF67C
P 2725 5475
F 0 "R12" H 2655 5429 50  0000 R CNN
F 1 "330" H 2655 5520 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2655 5475 50  0001 C CNN
F 3 "~" H 2725 5475 50  0001 C CNN
	1    2725 5475
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5D3FFAED
P 3000 5475
F 0 "R13" H 2930 5429 50  0000 R CNN
F 1 "330" H 2930 5520 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 5475 50  0001 C CNN
F 3 "~" H 3000 5475 50  0001 C CNN
	1    3000 5475
	-1   0    0    1   
$EndComp
Wire Wire Line
	2175 5625 2175 5700
Wire Wire Line
	2175 5700 2450 5700
Wire Wire Line
	3000 5700 3000 5625
Wire Wire Line
	2725 5625 2725 5700
Connection ~ 2725 5700
Wire Wire Line
	2725 5700 3000 5700
Wire Wire Line
	2450 5625 2450 5700
Connection ~ 2450 5700
Wire Wire Line
	2450 5700 2725 5700
Wire Wire Line
	2175 5325 2175 5275
Wire Wire Line
	2175 5275 2450 5275
Wire Wire Line
	3000 5275 3000 5325
Wire Wire Line
	2450 5325 2450 5275
Connection ~ 2450 5275
Wire Wire Line
	2450 5275 2725 5275
Wire Wire Line
	2725 5325 2725 5275
Connection ~ 2725 5275
$Comp
L Device:R R14
U 1 1 5D419A47
P 3200 5275
F 0 "R14" H 3130 5229 50  0000 R CNN
F 1 "10k" H 3130 5320 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3130 5275 50  0001 C CNN
F 3 "~" H 3200 5275 50  0001 C CNN
	1    3200 5275
	0    1    1    0   
$EndComp
Wire Wire Line
	2725 5275 3000 5275
Connection ~ 3000 5275
Wire Wire Line
	3000 5275 3050 5275
Wire Wire Line
	3350 5275 3425 5275
Wire Wire Line
	3425 5275 3425 5325
Wire Wire Line
	3425 5700 3000 5700
Wire Wire Line
	3425 5625 3425 5700
Connection ~ 3000 5700
$Comp
L Device:LED D3
U 1 1 5D41D173
P 3425 5475
F 0 "D3" H 3418 5220 50  0000 C CNN
F 1 "HEATING" H 3418 5311 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3425 5475 50  0001 C CNN
F 3 "~" H 3425 5475 50  0001 C CNN
	1    3425 5475
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5D47082E
P 1575 5375
F 0 "J4" H 1683 5656 50  0000 C CNN
F 1 "OVEN" H 1683 5565 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1575 5375 50  0001 C CNN
F 3 "~" H 1575 5375 50  0001 C CNN
	1    1575 5375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1775 5575 1850 5575
Wire Wire Line
	2075 5375 2075 5700
Wire Wire Line
	2075 5700 2175 5700
Connection ~ 2175 5700
Wire Wire Line
	1850 6175 1975 6175
Wire Wire Line
	1850 5575 1850 6175
Wire Wire Line
	1975 5775 1975 5475
Wire Wire Line
	1775 5475 1975 5475
Wire Wire Line
	1775 5375 2075 5375
Wire Wire Line
	1775 5275 2175 5275
Connection ~ 2175 5275
$EndSCHEMATC