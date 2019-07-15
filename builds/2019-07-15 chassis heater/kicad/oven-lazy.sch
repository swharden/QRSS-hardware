EESchema Schematic File Version 4
EELAYER 29 0
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
Text Notes 4050 4800 0    50   ~ 0
hysteresis set
$Comp
L power:GND #PWR04
U 1 1 5D2C9E3E
P 5650 4450
F 0 "#PWR04" H 5650 4200 50  0001 C CNN
F 1 "GND" H 5655 4277 50  0000 C CNN
F 2 "" H 5650 4450 50  0001 C CNN
F 3 "" H 5650 4450 50  0001 C CNN
	1    5650 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D2CC31C
P 5250 4850
F 0 "D1" V 5300 4750 50  0000 R CNN
F 1 "HEATING" V 5200 4750 50  0000 R CNN
F 2 "" H 5250 4850 50  0001 C CNN
F 3 "~" H 5250 4850 50  0001 C CNN
	1    5250 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 4650 3900 4650
Wire Wire Line
	3900 4350 3900 4650
Wire Wire Line
	4450 4650 4650 4650
Wire Wire Line
	4650 4650 4650 4250
Wire Wire Line
	4650 4250 4600 4250
$Comp
L Device:R R5
U 1 1 5D2D27F7
P 4950 4250
F 0 "R5" V 4850 4150 50  0000 L CNN
F 1 "1K" V 5050 4150 50  0000 L CNN
F 2 "" V 4880 4250 50  0001 C CNN
F 3 "~" H 4950 4250 50  0001 C CNN
	1    4950 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 4250 4650 4250
Connection ~ 4650 4250
Wire Wire Line
	5250 5000 5250 5050
Wire Wire Line
	5250 4700 5250 4650
Wire Wire Line
	5100 4650 5250 4650
Wire Wire Line
	3850 3750 3900 3750
$Comp
L Device:Thermistor TH1
U 1 1 5D2C2C3C
P 3650 3750
F 0 "TH1" V 3408 3750 50  0000 C CNN
F 1 "10K NTC" V 3499 3750 50  0000 C CNN
F 2 "" H 3650 3750 50  0001 C CNN
F 3 "~" H 3650 3750 50  0001 C CNN
	1    3650 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D2C3CBB
P 4100 3750
F 0 "R3" V 3893 3750 50  0000 C CNN
F 1 "10K" V 3984 3750 50  0000 C CNN
F 2 "" V 4030 3750 50  0001 C CNN
F 3 "~" H 4100 3750 50  0001 C CNN
	1    4100 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D2C466F
P 4300 3800
F 0 "#PWR01" H 4300 3550 50  0001 C CNN
F 1 "GND" H 4305 3627 50  0000 C CNN
F 2 "" H 4300 3800 50  0001 C CNN
F 3 "" H 4300 3800 50  0001 C CNN
	1    4300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3750 4300 3750
Wire Wire Line
	4300 3750 4300 3800
Wire Wire Line
	3900 3750 3900 4150
Connection ~ 3900 3750
Wire Wire Line
	3900 3750 3950 3750
$Comp
L Device:R_POT RV1
U 1 1 5D2C651A
P 3350 4350
F 0 "RV1" H 3281 4396 50  0000 R CNN
F 1 "10K" H 3281 4305 50  0000 R CNN
F 2 "" H 3350 4350 50  0001 C CNN
F 3 "~" H 3350 4350 50  0001 C CNN
	1    3350 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D2C751B
P 4300 4650
F 0 "R6" V 4093 4650 50  0000 C CNN
F 1 "100K" V 4184 4650 50  0000 C CNN
F 2 "" V 4230 4650 50  0001 C CNN
F 3 "~" H 4300 4650 50  0001 C CNN
	1    4300 4650
	0    1    1    0   
$EndComp
Connection ~ 3900 4350
$Comp
L power:GND #PWR05
U 1 1 5D2C8B17
P 3350 4550
F 0 "#PWR05" H 3350 4300 50  0001 C CNN
F 1 "GND" H 3355 4377 50  0000 C CNN
F 2 "" H 3350 4550 50  0001 C CNN
F 3 "" H 3350 4550 50  0001 C CNN
	1    3350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4500 3350 4550
Wire Wire Line
	3450 3750 3350 3750
Wire Wire Line
	3350 3750 3350 4200
Wire Wire Line
	3500 4350 3900 4350
Text Notes 3100 4850 0    50   ~ 0
temperature set
Wire Wire Line
	2500 3750 2500 3850
Wire Wire Line
	2400 3750 2500 3750
Wire Wire Line
	2500 4150 2500 4200
$Comp
L power:GND #PWR02
U 1 1 5D2CDC79
P 2500 4200
F 0 "#PWR02" H 2500 3950 50  0001 C CNN
F 1 "GND" H 2505 4027 50  0000 C CNN
F 2 "" H 2500 4200 50  0001 C CNN
F 3 "" H 2500 4200 50  0001 C CNN
	1    2500 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5D2CCC53
P 2500 4000
F 0 "D2" V 2454 4079 50  0000 L CNN
F 1 "10V" V 2545 4079 50  0000 L CNN
F 2 "" H 2500 4000 50  0001 C CNN
F 3 "~" H 2500 4000 50  0001 C CNN
	1    2500 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 3750 2000 3750
$Comp
L Device:R R2
U 1 1 5D2CB7E2
P 2250 3750
F 0 "R2" V 2043 3750 50  0000 C CNN
F 1 "1K" V 2134 3750 50  0000 C CNN
F 2 "" V 2180 3750 50  0001 C CNN
F 3 "~" H 2250 3750 50  0001 C CNN
	1    2250 3750
	0    1    1    0   
$EndComp
Text GLabel 2000 3750 0    50   Input ~ 0
12V
$Comp
L Device:C C1
U 1 1 5D2D0DD5
P 2900 4000
F 0 "C1" H 3015 4046 50  0000 L CNN
F 1 ".1u" H 3015 3955 50  0000 L CNN
F 2 "" H 2938 3850 50  0001 C CNN
F 3 "~" H 2900 4000 50  0001 C CNN
	1    2900 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4150 2900 4200
$Comp
L power:GND #PWR03
U 1 1 5D2D200A
P 2900 4200
F 0 "#PWR03" H 2900 3950 50  0001 C CNN
F 1 "GND" H 2905 4027 50  0000 C CNN
F 2 "" H 2900 4200 50  0001 C CNN
F 3 "" H 2900 4200 50  0001 C CNN
	1    2900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3750 2900 3750
Wire Wire Line
	2900 3750 2900 3850
Connection ~ 2500 3750
Wire Wire Line
	2900 3750 3350 3750
Connection ~ 2900 3750
Connection ~ 3350 3750
Text Notes 2700 3700 0    50   ~ 0
regulated 10V
$Comp
L Device:R R1
U 1 1 5D2CA9B1
P 4950 4650
F 0 "R1" V 4850 4600 50  0000 L CNN
F 1 "1K" V 5050 4600 50  0000 L CNN
F 2 "" V 4880 4650 50  0001 C CNN
F 3 "~" H 4950 4650 50  0001 C CNN
	1    4950 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 4650 4650 4650
Connection ~ 4650 4650
$Comp
L power:GND #PWR07
U 1 1 5D2C2E7E
P 5250 5050
F 0 "#PWR07" H 5250 4800 50  0001 C CNN
F 1 "GND" H 5255 4877 50  0000 C CNN
F 2 "" H 5250 5050 50  0001 C CNN
F 3 "" H 5250 5050 50  0001 C CNN
	1    5250 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4050 5650 3600
Wire Wire Line
	5350 4250 5100 4250
Wire Wire Line
	4000 4350 3900 4350
Wire Wire Line
	4000 4150 3900 4150
$Comp
L power:GND #PWR06
U 1 1 5D2C3E4D
P 5250 3900
F 0 "#PWR06" H 5250 3650 50  0001 C CNN
F 1 "GND" H 5255 3727 50  0000 C CNN
F 2 "" H 5250 3900 50  0001 C CNN
F 3 "" H 5250 3900 50  0001 C CNN
	1    5250 3900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5D2C336C
P 5250 3600
F 0 "U2" H 5050 3850 50  0000 L CNN
F 1 "L7805" H 5050 3750 50  0000 L CNN
F 2 "" H 5275 3450 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5250 3550 50  0001 C CNN
	1    5250 3600
	1    0    0    -1  
$EndComp
Text GLabel 4950 3600 0    50   Input ~ 0
12V
$Comp
L Amplifier_Operational:LM324 U1
U 1 1 5D2B60C0
P 4300 4250
F 0 "U1" H 4350 4400 50  0001 C CNN
F 1 "LM324" H 4250 4250 50  0000 C CNN
F 2 "" H 4250 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4350 4450 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:TIP122 Q1
U 1 1 5D2D14EA
P 5550 4250
F 0 "Q1" H 5757 4296 50  0000 L CNN
F 1 "TIP122" H 5757 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5750 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 5550 4250 50  0001 L CNN
	1    5550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3600 5650 3600
$EndSCHEMATC