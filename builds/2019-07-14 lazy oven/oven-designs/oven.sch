EESchema Schematic File Version 4
LIBS:oven-cache
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
$Comp
L Amplifier_Operational:LM324 U2
U 1 1 5D2B60C0
P 4300 4250
F 0 "U2" H 4300 4617 50  0000 C CNN
F 1 "LM324" H 4300 4526 50  0000 C CNN
F 2 "" H 4250 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4350 4450 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4100 3150 4150
$Comp
L Device:R R1
U 1 1 5D2B8010
P 3150 3950
F 0 "R1" H 3220 3996 50  0000 L CNN
F 1 "10K" H 3220 3905 50  0000 L CNN
F 2 "" V 3080 3950 50  0001 C CNN
F 3 "~" H 3150 3950 50  0001 C CNN
	1    3150 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D2B7B6B
P 3150 4600
F 0 "#PWR03" H 3150 4350 50  0001 C CNN
F 1 "GND" H 3155 4427 50  0000 C CNN
F 2 "" H 3150 4600 50  0001 C CNN
F 3 "" H 3150 4600 50  0001 C CNN
	1    3150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4150 4000 4150
Connection ~ 3150 4150
Wire Wire Line
	3150 4150 3150 4200
Wire Wire Line
	4000 4350 3900 4350
Wire Wire Line
	3900 4350 3900 4700
$Comp
L power:GND #PWR04
U 1 1 5D2BC15F
P 3750 4850
F 0 "#PWR04" H 3750 4600 50  0001 C CNN
F 1 "GND" V 3850 4850 50  0000 R CNN
F 2 "" H 3750 4850 50  0001 C CNN
F 3 "" H 3750 4850 50  0001 C CNN
	1    3750 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5D2BAB0C
P 3900 4850
F 0 "RV1" V 3800 4900 50  0000 R CNN
F 1 "TEMP SET" V 3700 5050 50  0000 R CNN
F 2 "" H 3900 4850 50  0001 C CNN
F 3 "~" H 3900 4850 50  0001 C CNN
	1    3900 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:Thermistor TH1
U 1 1 5D2B68E5
P 3150 4400
F 0 "TH1" H 3255 4446 50  0000 L CNN
F 1 "10k" H 3255 4355 50  0000 L CNN
F 2 "" H 3150 4400 50  0001 C CNN
F 3 "~" H 3150 4400 50  0001 C CNN
	1    3150 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D2CB3CC
P 4700 4500
F 0 "R2" H 4770 4546 50  0000 L CNN
F 1 "47K" H 4770 4455 50  0000 L CNN
F 2 "" V 4630 4500 50  0001 C CNN
F 3 "~" H 4700 4500 50  0001 C CNN
	1    4700 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D2CC31C
P 4700 4800
F 0 "D1" V 4739 4682 50  0000 R CNN
F 1 "HEATING" V 4648 4682 50  0000 R CNN
F 2 "" H 4700 4800 50  0001 C CNN
F 3 "~" H 4700 4800 50  0001 C CNN
	1    4700 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D2CCB23
P 4700 4950
F 0 "#PWR05" H 4700 4700 50  0001 C CNN
F 1 "GND" H 4900 4850 50  0000 R CNN
F 2 "" H 4700 4950 50  0001 C CNN
F 3 "" H 4700 4950 50  0001 C CNN
	1    4700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4350 4700 4250
Wire Wire Line
	4700 4250 4600 4250
Wire Wire Line
	3200 3750 3150 3750
Wire Wire Line
	3150 3750 3150 3800
Text GLabel 3200 3750 2    50   Input ~ 0
5V
Text GLabel 4050 4850 2    50   Input ~ 0
5V
Wire Wire Line
	5200 3850 5200 4050
Wire Wire Line
	5200 3200 5200 3250
Wire Wire Line
	5250 3200 5200 3200
Text GLabel 5250 3200 2    50   Input ~ 0
12V
$Comp
L power:GND #PWR01
U 1 1 5D2D1AA0
P 4900 3550
F 0 "#PWR01" H 4900 3300 50  0001 C CNN
F 1 "GND" H 4950 3400 50  0000 R CNN
F 2 "" H 4900 3550 50  0001 C CNN
F 3 "" H 4900 3550 50  0001 C CNN
	1    4900 3550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5D2CFA0E
P 5200 3550
F 0 "U1" V 5154 3655 50  0000 L CNN
F 1 "L7805" V 5245 3655 50  0000 L CNN
F 2 "" H 5225 3400 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5200 3500 50  0001 C CNN
	1    5200 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 4250 4700 4250
Connection ~ 4700 4250
Text Notes 3100 5700 0    50   ~ 0
This is a lazy bang-bang oven controller.\nBoth heating elements are TO-220 (easy to mount).\nThe voltage drop of the Darlington produces some heat.\nThe regulator produces most of the heat as it is overdrawn.\nPOWER: 5V must be regulated, 12V can be dirty.\nGrounds are shared here, but could be opto-isolated.
$Comp
L power:GND #PWR02
U 1 1 5D2CF4F0
P 5200 4450
F 0 "#PWR02" H 5200 4200 50  0001 C CNN
F 1 "GND" H 5400 4350 50  0000 R CNN
F 2 "" H 5200 4450 50  0001 C CNN
F 3 "" H 5200 4450 50  0001 C CNN
	1    5200 4450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:TIP122 Q1
U 1 1 5D2CD589
P 5100 4250
F 0 "Q1" H 5307 4296 50  0000 L CNN
F 1 "TIP122" H 5307 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5300 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 5100 4250 50  0001 L CNN
	1    5100 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
