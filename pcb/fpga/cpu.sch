EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:altera-depmod
LIBS:w_connectors
LIBS:cpu-cache
EELAYER 25 0
EELAYER END
$Descr User 12205 9449
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
L EPCS1 U1
U 1 1 549C3432
P 2700 1050
F 0 "U1" H 3150 900 60  0000 C CNN
F 1 "EPCS1" H 2950 1450 60  0000 C CNN
F 2 "" H 2700 1050 60  0000 C CNN
F 3 "http://www.altera.com/literature/hb/cfg/cyc_c51014.pdf" H 2700 1050 60  0001 C CNN
F 4 "EPCS1" H 2700 1050 60  0001 C CNN "PARTNO"
	1    2700 1050
	1    0    0    -1  
$EndComp
$Comp
L EP1C3T100 U2
U 1 1 549D5944
P 4700 5050
F 0 "U2" H 6550 2700 60  0000 C CNN
F 1 "EP1C3T100" H 4700 5050 60  0000 C CNN
F 2 "" H 3150 7700 60  0000 C CNN
F 3 "http://www.farnell.com/datasheets/5080.pdf" H 3150 7700 60  0001 C CNN
F 4 "http://il.farnell.com/altera/ep1c3t100c8n/ic-cyclone-fpga-2910-smd-1c3t100/dp/1453501" H 4700 5050 60  0001 C CNN "Farnell"
F 5 "EP1C3T100C8N " H 4700 5050 60  0001 C CNN "PARTNO"
F 6 "http://www.altera.com/literature/dp/cyclone/ep1c3t100.pdf" H 4700 5050 60  0001 C CNN "Pinout"
	1    4700 5050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR19
U 1 1 549D5DB4
P 5750 950
F 0 "#PWR19" H 5750 910 30  0001 C CNN
F 1 "+3.3V" H 5750 1060 30  0000 C CNN
F 2 "" H 5750 950 60  0000 C CNN
F 3 "" H 5750 950 60  0000 C CNN
	1    5750 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR20
U 1 1 549D60B2
P 6100 8150
F 0 "#PWR20" H 6100 8150 30  0001 C CNN
F 1 "GND" H 6100 8080 30  0001 C CNN
F 2 "" H 6100 8150 60  0000 C CNN
F 3 "" H 6100 8150 60  0000 C CNN
	1    6100 8150
	1    0    0    -1  
$EndComp
$Comp
L CONN_8X2 P4
U 1 1 549C96A8
P 8250 3800
F 0 "P4" H 8250 4250 60  0000 C CNN
F 1 "BANK3" V 8250 3800 50  0000 C CNN
F 2 "" H 8250 3800 60  0000 C CNN
F 3 "" H 8250 3800 60  0000 C CNN
	1    8250 3800
	1    0    0    -1  
$EndComp
Text GLabel 6800 3100 2    39   Input ~ 0
0B30
Text GLabel 6800 3200 2    39   Input ~ 0
0B31
Text GLabel 6800 3300 2    39   Input ~ 0
0B32
Text GLabel 6800 3400 2    39   Input ~ 0
0B33
Text GLabel 6800 3500 2    39   Input ~ 0
0B34
Text GLabel 6800 3600 2    39   Input ~ 0
0B35
Text GLabel 6800 3700 2    39   Input ~ 0
0B36
Text GLabel 6800 3850 2    39   Input ~ 0
1B30
Text GLabel 6800 3950 2    39   Input ~ 0
1B31
Text GLabel 6800 4100 2    39   Input ~ 0
2B30
Text GLabel 6800 4200 2    39   Input ~ 0
2B31
Text GLabel 6800 4300 2    39   Input ~ 0
2B32
Text GLabel 6800 4400 2    39   Input ~ 0
2B33
Text GLabel 6800 4500 2    39   Input ~ 0
2B34
Text GLabel 6800 4600 2    39   Input ~ 0
2B35
Text GLabel 6800 4700 2    39   Input ~ 0
2B36
Text GLabel 7850 3450 0    39   Input ~ 0
0B30
Text GLabel 8650 3450 2    39   Input ~ 0
0B31
Text GLabel 7850 3550 0    39   Input ~ 0
0B32
Text GLabel 8650 3550 2    39   Input ~ 0
0B33
Text GLabel 7850 3650 0    39   Input ~ 0
0B34
Text GLabel 8650 3650 2    39   Input ~ 0
0B35
Text GLabel 7850 3750 0    39   Input ~ 0
0B36
Text GLabel 8650 3750 2    39   Input ~ 0
1B30
Text GLabel 7850 3850 0    39   Input ~ 0
1B31
Text GLabel 8650 3850 2    39   Input ~ 0
2B30
Text GLabel 7850 3950 0    39   Input ~ 0
2B31
Text GLabel 8650 3950 2    39   Input ~ 0
2B32
Text GLabel 7850 4050 0    39   Input ~ 0
2B33
Text GLabel 8650 4050 2    39   Input ~ 0
2B34
Text GLabel 7850 4150 0    39   Input ~ 0
2B35
Text GLabel 8650 4150 2    39   Input ~ 0
2B36
Text GLabel 6800 5050 2    39   Input ~ 0
0B40
Text GLabel 6800 5150 2    39   Input ~ 0
0B41
Text GLabel 6800 5250 2    39   Input ~ 0
0B42
Text GLabel 6800 5350 2    39   Input ~ 0
0B43
Text GLabel 6800 5450 2    39   Input ~ 0
0B44
Text GLabel 6800 5550 2    39   Input ~ 0
0B45
Text GLabel 6800 5700 2    39   Input ~ 0
1B40
Text GLabel 6800 5800 2    39   Input ~ 0
1B41
Text GLabel 6800 5900 2    39   Input ~ 0
1B42
Text GLabel 6800 6000 2    39   Input ~ 0
1B43
Text GLabel 6800 6150 2    39   Input ~ 0
2B40
Text GLabel 6800 6250 2    39   Input ~ 0
2B41
Text GLabel 6800 6350 2    39   Input ~ 0
2B42
Text GLabel 6800 6450 2    39   Input ~ 0
2B43
Text GLabel 6800 6550 2    39   Input ~ 0
2B44
Text GLabel 6800 6650 2    39   Input ~ 0
2B45
Text GLabel 6800 6750 2    39   Input ~ 0
2B46
$Comp
L +3.3V #PWR3
U 1 1 549CA680
P 2350 650
F 0 "#PWR3" H 2350 610 30  0001 C CNN
F 1 "+3.3V" H 2350 760 30  0000 C CNN
F 2 "" H 2350 650 60  0000 C CNN
F 3 "" H 2350 650 60  0000 C CNN
	1    2350 650 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 549CA694
P 2350 1300
F 0 "#PWR4" H 2350 1300 30  0001 C CNN
F 1 "GND" H 2350 1230 30  0001 C CNN
F 2 "" H 2350 1300 60  0000 C CNN
F 3 "" H 2350 1300 60  0000 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR2
U 1 1 549CA960
P 1900 2000
F 0 "#PWR2" H 1900 1960 30  0001 C CNN
F 1 "+3.3V" H 1900 2110 30  0000 C CNN
F 2 "" H 1900 2000 60  0000 C CNN
F 3 "" H 1900 2000 60  0000 C CNN
	1    1900 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 549CAC66
P 3700 2350
F 0 "#PWR8" H 3700 2350 30  0001 C CNN
F 1 "GND" H 3700 2280 30  0001 C CNN
F 2 "" H 3700 2350 60  0000 C CNN
F 3 "" H 3700 2350 60  0000 C CNN
	1    3700 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 549CC132
P 4750 2350
F 0 "#PWR12" H 4750 2350 30  0001 C CNN
F 1 "GND" H 4750 2280 30  0001 C CNN
F 2 "" H 4750 2350 60  0000 C CNN
F 3 "" H 4750 2350 60  0000 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_9X2 P5
U 1 1 549CCDC5
P 8250 5850
F 0 "P5" H 8250 6300 60  0000 C CNN
F 1 "BANK4" V 8250 5850 50  0000 C CNN
F 2 "" H 8250 5850 60  0000 C CNN
F 3 "" H 8250 5850 60  0000 C CNN
	1    8250 5850
	1    0    0    -1  
$EndComp
Text GLabel 7850 5500 0    39   Input ~ 0
0B40
Text GLabel 8650 5500 2    39   Input ~ 0
0B41
Text GLabel 7850 5600 0    39   Input ~ 0
0B42
Text GLabel 8650 5600 2    39   Input ~ 0
0B43
Text GLabel 7850 5700 0    39   Input ~ 0
0B44
Text GLabel 8650 5700 2    39   Input ~ 0
0B45
Text GLabel 7850 5800 0    39   Input ~ 0
1B40
Text GLabel 8650 5800 2    39   Input ~ 0
1B41
Text GLabel 7850 5900 0    39   Input ~ 0
1B42
Text GLabel 8650 5900 2    39   Input ~ 0
1B43
Text GLabel 7850 6000 0    39   Input ~ 0
2B40
Text GLabel 8650 6000 2    39   Input ~ 0
2B41
Text GLabel 7850 6100 0    39   Input ~ 0
2B42
Text GLabel 8650 6100 2    39   Input ~ 0
2B43
Text GLabel 7850 6200 0    39   Input ~ 0
2B44
Text GLabel 8650 6200 2    39   Input ~ 0
2B45
Text GLabel 7850 6300 0    39   Input ~ 0
2B46
$Comp
L CONN_5X2 P1
U 1 1 549CD2BD
P 1500 3850
F 0 "P1" H 1500 4150 60  0000 C CNN
F 1 "BANK1" V 1500 3850 50  0000 C CNN
F 2 "" H 1500 3850 60  0000 C CNN
F 3 "" H 1500 3850 60  0000 C CNN
	1    1500 3850
	1    0    0    -1  
$EndComp
Text GLabel 9650 3850 0    39   Input ~ 0
0B10
Text GLabel 9650 4150 0    39   Input ~ 0
0B11
Text GLabel 9650 4450 0    39   Input ~ 0
0B12
Text GLabel 9650 4750 0    39   Input ~ 0
0B13
Text GLabel 9650 5050 0    39   Input ~ 0
2B10
Text GLabel 9650 5350 0    39   Input ~ 0
2B11
Text GLabel 9650 5650 0    39   Input ~ 0
2B12
Text GLabel 9650 5950 0    39   Input ~ 0
2B13
Text GLabel 2550 4850 0    39   Input ~ 0
0B20
Text GLabel 2550 4950 0    39   Input ~ 0
0B21
Text GLabel 2550 5050 0    39   Input ~ 0
0B22
Text GLabel 2550 5150 0    39   Input ~ 0
0B23
Text GLabel 2550 5250 0    39   Input ~ 0
0B24
Text GLabel 2550 5350 0    39   Input ~ 0
0B25
Text GLabel 2550 5500 0    39   Input ~ 0
1B20
Text GLabel 2550 5600 0    39   Input ~ 0
1B21
Text GLabel 2550 5700 0    39   Input ~ 0
1B22
Text GLabel 2550 5800 0    39   Input ~ 0
1B23
Text GLabel 2550 5950 0    39   Input ~ 0
2B20
Text GLabel 2550 6050 0    39   Input ~ 0
2B21
Text GLabel 2550 6150 0    39   Input ~ 0
2B22
Text GLabel 2550 6250 0    39   Input ~ 0
2B23
Text GLabel 2550 6350 0    39   Input ~ 0
2B24
Text GLabel 2550 6450 0    39   Input ~ 0
2B25
Text GLabel 2550 6550 0    39   Input ~ 0
2B26
$Comp
L CONN_9X2 P2
U 1 1 549CD5F9
P 1500 5650
F 0 "P2" H 1500 6100 60  0000 C CNN
F 1 "BANK2" V 1500 5650 50  0000 C CNN
F 2 "" H 1500 5650 60  0000 C CNN
F 3 "" H 1500 5650 60  0000 C CNN
	1    1500 5650
	1    0    0    -1  
$EndComp
Text GLabel 1100 3650 0    39   Input ~ 0
0B10
Text GLabel 1900 3650 2    39   Input ~ 0
0B11
Text GLabel 1100 3750 0    39   Input ~ 0
0B12
Text GLabel 1900 3750 2    39   Input ~ 0
0B13
Text GLabel 1100 3850 0    39   Input ~ 0
1B10
Text GLabel 1900 3850 2    39   Input ~ 0
2B10
Text GLabel 1100 3950 0    39   Input ~ 0
2B11
Text GLabel 1900 3950 2    39   Input ~ 0
2B12
Text GLabel 1100 4050 0    39   Input ~ 0
2B13
Text GLabel 1900 4050 2    39   Input ~ 0
2B14
Text GLabel 1100 5300 0    39   Input ~ 0
0B20
Text GLabel 1900 5300 2    39   Input ~ 0
0B21
Text GLabel 1100 5400 0    39   Input ~ 0
0B22
Text GLabel 1900 5400 2    39   Input ~ 0
0B23
Text GLabel 1100 5500 0    39   Input ~ 0
0B24
Text GLabel 1900 5500 2    39   Input ~ 0
0B25
Text GLabel 1100 5600 0    39   Input ~ 0
1B20
Text GLabel 1900 5600 2    39   Input ~ 0
1B21
Text GLabel 1100 5700 0    39   Input ~ 0
1B22
Text GLabel 1900 5700 2    39   Input ~ 0
1B23
Text GLabel 1100 5800 0    39   Input ~ 0
2B20
Text GLabel 1900 5800 2    39   Input ~ 0
2B21
Text GLabel 1100 5900 0    39   Input ~ 0
2B22
Text GLabel 1900 5900 2    39   Input ~ 0
2B23
Text GLabel 1100 6000 0    39   Input ~ 0
2B24
Text GLabel 1900 6000 2    39   Input ~ 0
2B25
Text GLabel 1100 6100 0    39   Input ~ 0
2B26
$Comp
L USB-MINI-B CON1
U 1 1 549CDBB6
P 8200 1700
F 0 "CON1" H 7950 2150 60  0000 C CNN
F 1 "USB-MINI-B" H 8150 1200 60  0000 C CNN
F 2 "" H 8200 1700 60  0000 C CNN
F 3 "" H 8200 1700 60  0000 C CNN
	1    8200 1700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR27
U 1 1 549CDE0D
P 7550 2250
F 0 "#PWR27" H 7550 2250 30  0001 C CNN
F 1 "GND" H 7550 2180 30  0001 C CNN
F 2 "" H 7550 2250 60  0000 C CNN
F 3 "" H 7550 2250 60  0000 C CNN
	1    7550 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR32
U 1 1 549CDE40
P 10350 2500
F 0 "#PWR32" H 10350 2500 30  0001 C CNN
F 1 "GND" H 10350 2430 30  0001 C CNN
F 2 "" H 10350 2500 60  0000 C CNN
F 3 "" H 10350 2500 60  0000 C CNN
	1    10350 2500
	1    0    0    -1  
$EndComp
$Comp
L LM1084IS-3.3/NOPB U4
U 1 1 549CE354
P 10350 1950
F 0 "U4" H 10550 1750 40  0000 C CNN
F 1 "LM1084IS-3.3/NOPB" H 10050 2150 40  0000 L CNN
F 2 "TO-263" H 10350 2050 30  0000 C CIN
F 3 "" H 10350 1950 60  0000 C CNN
	1    10350 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR30
U 1 1 549CE99A
P 8950 1600
F 0 "#PWR30" H 8950 1600 30  0001 C CNN
F 1 "GND" H 8950 1530 30  0001 C CNN
F 2 "" H 8950 1600 60  0000 C CNN
F 3 "" H 8950 1600 60  0000 C CNN
	1    8950 1600
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 549CEA91
P 9950 2150
F 0 "C23" H 9950 2250 40  0000 L CNN
F 1 "10uF" H 9956 2065 40  0000 L CNN
F 2 "" H 9988 2000 30  0000 C CNN
F 3 "" H 9950 2150 60  0000 C CNN
	1    9950 2150
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 549CEB8C
P 10750 2150
F 0 "C25" H 10750 2250 40  0000 L CNN
F 1 "1000uF" H 10756 2065 40  0000 L CNN
F 2 "" H 10788 2000 30  0000 C CNN
F 3 "http://www.farnell.com/datasheets/58258.pdf" H 10750 2150 60  0001 C CNN
F 4 "EEEFK0J102AP " H 10750 2150 60  0001 C CNN "PARTNO"
F 5 "http://il.farnell.com/panasonic-electronic-components/eeefk0j102ap/cap-alu-elec-1000uf-6-3v-smd-reel/dp/2254374" H 10750 2150 60  0001 C CNN "Farnell"
	1    10750 2150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR34
U 1 1 549CF048
P 11100 1700
F 0 "#PWR34" H 11100 1660 30  0001 C CNN
F 1 "+3.3V" H 11100 1810 30  0000 C CNN
F 2 "" H 11100 1700 60  0000 C CNN
F 3 "" H 11100 1700 60  0000 C CNN
	1    11100 1700
	1    0    0    -1  
$EndComp
Text GLabel 4000 7500 3    39   Input ~ 0
TCK
Text GLabel 4100 7500 3    39   Input ~ 0
TMS
Text GLabel 4200 7500 3    39   Input ~ 0
TDO
Text GLabel 4300 7500 3    39   Input ~ 0
TDI
$Comp
L CONN_6 P3
U 1 1 54A1BD9B
P 4150 8650
F 0 "P3" V 4100 8650 60  0000 C CNN
F 1 "CONN_6" V 4200 8650 60  0000 C CNN
F 2 "" H 4150 8650 60  0000 C CNN
F 3 "" H 4150 8650 60  0000 C CNN
	1    4150 8650
	0    1    1    0   
$EndComp
Text GLabel 4300 8300 1    39   Input ~ 0
TDI
Text GLabel 4200 8300 1    39   Input ~ 0
TDO
Text GLabel 4100 8300 1    39   Input ~ 0
TMS
Text GLabel 4000 8300 1    39   Input ~ 0
TCK
$Comp
L +3.3V #PWR9
U 1 1 54A1C18F
P 3800 8100
F 0 "#PWR9" H 3800 8060 30  0001 C CNN
F 1 "+3.3V" H 3800 8210 30  0000 C CNN
F 2 "" H 3800 8100 60  0000 C CNN
F 3 "" H 3800 8100 60  0000 C CNN
	1    3800 8100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 54A1C302
P 4500 8300
F 0 "#PWR10" H 4500 8300 30  0001 C CNN
F 1 "GND" H 4500 8230 30  0001 C CNN
F 2 "" H 4500 8300 60  0000 C CNN
F 3 "" H 4500 8300 60  0000 C CNN
	1    4500 8300
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 54A1CA54
P 9850 4450
F 0 "D3" H 9850 4550 50  0000 C CNN
F 1 "LED" H 9850 4350 50  0000 C CNN
F 2 "" H 9850 4450 60  0000 C CNN
F 3 "" H 9850 4450 60  0000 C CNN
	1    9850 4450
	-1   0    0    1   
$EndComp
$Comp
L R_PACK8 RP2
U 1 1 54A1CC23
P 10950 4800
F 0 "RP2" H 10950 5250 40  0000 C CNN
F 1 "270" H 10950 4350 40  0000 C CNN
F 2 "" H 10950 4800 60  0000 C CNN
F 3 "http://www.farnell.com/datasheets/1695346.pdf" H 10950 4800 60  0001 C CNN
F 4 "http://il.farnell.com/bourns/4116r-1-271lf/resistor-network-270r/dp/9355910" H 10950 4800 60  0001 C CNN "Farnell"
F 5 "4116R-1-271LF" H 10950 4800 60  0001 C CNN "PARTNO"
	1    10950 4800
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 54A1CCA0
P 9850 4750
F 0 "D4" H 9850 4850 50  0000 C CNN
F 1 "LED" H 9850 4650 50  0000 C CNN
F 2 "" H 9850 4750 60  0000 C CNN
F 3 "" H 9850 4750 60  0000 C CNN
	1    9850 4750
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 54A1CCEE
P 9850 5050
F 0 "D5" H 9850 5150 50  0000 C CNN
F 1 "LED" H 9850 4950 50  0000 C CNN
F 2 "" H 9850 5050 60  0000 C CNN
F 3 "" H 9850 5050 60  0000 C CNN
	1    9850 5050
	-1   0    0    1   
$EndComp
$Comp
L LED D6
U 1 1 54A1CD24
P 9850 5350
F 0 "D6" H 9850 5450 50  0000 C CNN
F 1 "LED" H 9850 5250 50  0000 C CNN
F 2 "" H 9850 5350 60  0000 C CNN
F 3 "" H 9850 5350 60  0000 C CNN
	1    9850 5350
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 54A1CD5B
P 9850 4150
F 0 "D2" H 9850 4250 50  0000 C CNN
F 1 "LED" H 9850 4050 50  0000 C CNN
F 2 "" H 9850 4150 60  0000 C CNN
F 3 "" H 9850 4150 60  0000 C CNN
	1    9850 4150
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 54A1CDA7
P 9850 3850
F 0 "D1" H 9850 3950 50  0000 C CNN
F 1 "LED" H 9850 3750 50  0000 C CNN
F 2 "" H 9850 3850 60  0000 C CNN
F 3 "http://www.farnell.com/datasheets/1484480.pdf" H 9850 3850 60  0001 C CNN
F 4 "http://il.farnell.com/dialight/5988150107f/led-yellow-1-25mm-x-1-4mm-130mcd/dp/2369031" H 9850 3850 60  0001 C CNN "Farnell"
F 5 "5988150107F " H 9850 3850 60  0001 C CNN "PARTNO"
	1    9850 3850
	-1   0    0    1   
$EndComp
$Comp
L LED D7
U 1 1 54A1CE40
P 9850 5650
F 0 "D7" H 9850 5750 50  0000 C CNN
F 1 "LED" H 9850 5550 50  0000 C CNN
F 2 "" H 9850 5650 60  0000 C CNN
F 3 "" H 9850 5650 60  0000 C CNN
	1    9850 5650
	-1   0    0    1   
$EndComp
$Comp
L LED D8
U 1 1 54A1CE7A
P 9850 5950
F 0 "D8" H 9850 6050 50  0000 C CNN
F 1 "LED" H 9850 5850 50  0000 C CNN
F 2 "" H 9850 5950 60  0000 C CNN
F 3 "" H 9850 5950 60  0000 C CNN
	1    9850 5950
	-1   0    0    1   
$EndComp
$Comp
L 3V3 #PWR35
U 1 1 54A1E600
P 11350 4200
F 0 "#PWR35" H 11350 4300 40  0001 C CNN
F 1 "3V3" H 11350 4325 40  0000 C CNN
F 2 "" H 11350 4200 60  0000 C CNN
F 3 "" H 11350 4200 60  0000 C CNN
	1    11350 4200
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54A82175
P 3400 7900
F 0 "R2" V 3480 7900 40  0000 C CNN
F 1 "10M" V 3407 7901 40  0000 C CNN
F 2 "" V 3330 7900 30  0000 C CNN
F 3 "" H 3400 7900 30  0000 C CNN
	1    3400 7900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 54A82289
P 3400 8300
F 0 "#PWR7" H 3400 8300 30  0001 C CNN
F 1 "GND" H 3400 8230 30  0001 C CNN
F 2 "" H 3400 8300 60  0000 C CNN
F 3 "" H 3400 8300 60  0000 C CNN
	1    3400 8300
	1    0    0    -1  
$EndComp
$Comp
L 501AAA OSC1
U 1 1 54A8266F
P 2150 8000
F 0 "OSC1" H 2300 7700 60  0000 C CNN
F 1 "501AAA" H 2150 8150 60  0000 C CNN
F 2 "" H 2100 7800 60  0000 C CNN
F 3 "http://www.farnell.com/datasheets/1792138.pdf" H 2100 7800 60  0001 C CNN
F 4 "http://il.farnell.com/silicon-labs/501aaa50m0000daf/osc-50mhz-50ppm-1-8-3-3v-smd/dp/2394197" H 2150 8000 60  0001 C CNN "Farnell"
F 5 "501AAA50M0000DAF" H 2150 8000 60  0001 C CNN "PARTNO"
	1    2150 8000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 54A82709
P 2950 8100
F 0 "R1" V 3030 8100 40  0000 C CNN
F 1 "24.9" V 2957 8101 40  0000 C CNN
F 2 "" V 2880 8100 30  0000 C CNN
F 3 "" H 2950 8100 30  0000 C CNN
	1    2950 8100
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR5
U 1 1 54A829D7
P 2700 7650
F 0 "#PWR5" H 2700 7610 30  0001 C CNN
F 1 "+3,3V" H 2700 7760 30  0000 C CNN
F 2 "" H 2700 7650 60  0000 C CNN
F 3 "" H 2700 7650 60  0000 C CNN
	1    2700 7650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 54A8334B
P 1750 8350
F 0 "#PWR1" H 1750 8350 30  0001 C CNN
F 1 "GND" H 1750 8280 30  0001 C CNN
F 2 "" H 1750 8350 60  0000 C CNN
F 3 "" H 1750 8350 60  0000 C CNN
	1    1750 8350
	1    0    0    -1  
$EndComp
$Comp
L BA15BC0FP-E2_-_LDO U3
U 1 1 54A85D21
P 10350 1100
F 0 "U3" H 10150 1300 40  0000 C CNN
F 1 "BA15BC0FP-E2_-_LDO" H 10350 1300 40  0000 L CNN
F 2 "TO-252" H 10350 1200 30  0000 C CIN
F 3 "http://www.farnell.com/datasheets/1747234.pdf" H 10350 1100 60  0001 C CNN
F 4 "http://il.farnell.com/rohm/ba15bc0fp-e2/ldo-fixed-1-5v-1a-to-252-3/dp/2342871" H 10350 1100 60  0001 C CNN "Farnell"
F 5 "BA15BC0FP-E2" H 10350 1100 60  0001 C CNN "PARTNO"
	1    10350 1100
	1    0    0    -1  
$EndComp
$Comp
L +1.5V #PWR33
U 1 1 54A85D86
P 11100 900
F 0 "#PWR33" H 11100 1040 20  0001 C CNN
F 1 "+1.5V" H 11100 1010 30  0000 C CNN
F 2 "" H 11100 900 60  0000 C CNN
F 3 "" H 11100 900 60  0000 C CNN
	1    11100 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR31
U 1 1 54A85EE1
P 10350 1600
F 0 "#PWR31" H 10350 1600 30  0001 C CNN
F 1 "GND" H 10350 1530 30  0001 C CNN
F 2 "" H 10350 1600 60  0000 C CNN
F 3 "" H 10350 1600 60  0000 C CNN
	1    10350 1600
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 54A860A6
P 9950 1300
F 0 "C22" H 9950 1400 40  0000 L CNN
F 1 "10uF" H 9956 1215 40  0000 L CNN
F 2 "" H 9988 1150 30  0000 C CNN
F 3 "" H 9950 1300 60  0000 C CNN
	1    9950 1300
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 54A8610D
P 10750 1300
F 0 "C24" H 10750 1400 40  0000 L CNN
F 1 "1000uF" H 10756 1215 40  0000 L CNN
F 2 "" H 10788 1150 30  0000 C CNN
F 3 "http://www.farnell.com/datasheets/58258.pdf" H 10750 1300 60  0001 C CNN
F 4 "http://il.farnell.com/panasonic-electronic-components/eeefk0j102ap/cap-alu-elec-1000uf-6-3v-smd-reel/dp/2254374" H 10750 1300 60  0001 C CNN "Farnell"
F 5 "EEEFK0J102AP " H 10750 1300 60  0001 C CNN "PARTNO"
	1    10750 1300
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR29
U 1 1 54AA31BE
P 8500 2550
F 0 "#PWR29" H 8500 2750 40  0001 C CNN
F 1 "VPLL" H 8500 2700 30  0000 C CNN
F 2 "" H 8500 2550 60  0000 C CNN
F 3 "" H 8500 2550 60  0000 C CNN
	1    8500 2550
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR16
U 1 1 54AA387F
P 5450 2250
F 0 "#PWR16" H 5450 2450 40  0001 C CNN
F 1 "VPLL" H 5450 2400 30  0000 C CNN
F 2 "" H 5450 2250 60  0000 C CNN
F 3 "" H 5450 2250 60  0000 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
$Comp
L +1.5V #PWR24
U 1 1 54AA397C
P 7000 2550
F 0 "#PWR24" H 7000 2690 20  0001 C CNN
F 1 "+1.5V" H 7000 2660 30  0000 C CNN
F 2 "" H 7000 2550 60  0000 C CNN
F 3 "" H 7000 2550 60  0000 C CNN
	1    7000 2550
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB1
U 1 1 54AA4313
P 7450 2650
F 0 "FB1" H 7450 2800 60  0000 C CNN
F 1 "FILTER" H 7450 2550 60  0000 C CNN
F 2 "" H 7450 2650 60  0000 C CNN
F 3 "http://www.farnell.com/datasheets/712877.pdf" H 7450 2650 60  0001 C CNN
F 4 "http://il.farnell.com/tdk/mmz2012202bt000/ferrite-bead-0-5ohm-400ma-0805/dp/2372958" H 7450 2650 60  0001 C CNN "Farnell"
F 5 "MMZ2012Y202BT000 " H 7450 2650 60  0001 C CNN "PARTNO"
	1    7450 2650
	1    0    0    -1  
$EndComp
$Comp
L Csmall C19
U 1 1 54AA462B
P 7950 2800
F 0 "C19" H 7975 2850 30  0000 L CNN
F 1 "10uF" H 7975 2750 30  0000 L CNN
F 2 "" H 7950 2800 60  0000 C CNN
F 3 "" H 7950 2800 60  0000 C CNN
	1    7950 2800
	1    0    0    -1  
$EndComp
$Comp
L Csmall C20
U 1 1 54AA4673
P 8150 2800
F 0 "C20" H 8175 2850 30  0000 L CNN
F 1 "0.1uF" H 8175 2750 30  0000 L CNN
F 2 "" H 8150 2800 60  0000 C CNN
F 3 "" H 8150 2800 60  0000 C CNN
	1    8150 2800
	1    0    0    -1  
$EndComp
$Comp
L Csmall C21
U 1 1 54AA470B
P 8350 2800
F 0 "C21" H 8375 2850 30  0000 L CNN
F 1 "0.001uF" H 8375 2750 30  0000 L CNN
F 2 "" H 8350 2800 60  0000 C CNN
F 3 "" H 8350 2800 60  0000 C CNN
	1    8350 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR28
U 1 1 54AA51C6
P 8150 3050
F 0 "#PWR28" H 8150 3050 30  0001 C CNN
F 1 "GND" H 8150 2980 30  0001 C CNN
F 2 "" H 8150 3050 60  0000 C CNN
F 3 "" H 8150 3050 60  0000 C CNN
	1    8150 3050
	1    0    0    -1  
$EndComp
$Comp
L Csmall C5
U 1 1 54AA7267
P 4900 1150
F 0 "C5" H 4925 1200 30  0000 L CNN
F 1 "0.01uF" H 4925 1100 30  0000 L CNN
F 2 "" H 4900 1150 60  0000 C CNN
F 3 "" H 4900 1150 60  0000 C CNN
	1    4900 1150
	1    0    0    -1  
$EndComp
$Comp
L Csmall C6
U 1 1 54AA741F
P 4900 1150
F 0 "C6" H 4925 1200 30  0000 L CNN
F 1 "0.01uF" H 4925 1100 30  0000 L CNN
F 2 "" H 4900 1150 60  0000 C CNN
F 3 "" H 4900 1150 60  0000 C CNN
	1    4900 1150
	1    0    0    -1  
$EndComp
$Comp
L C C27
U 1 1 54AA74EA
P 11100 2150
F 0 "C27" H 11100 2250 40  0000 L CNN
F 1 "10uF" H 11106 2065 40  0000 L CNN
F 2 "" H 11138 2000 30  0000 C CNN
F 3 "" H 11100 2150 60  0000 C CNN
	1    11100 2150
	1    0    0    -1  
$EndComp
$Comp
L C C26
U 1 1 54AA7593
P 11100 1300
F 0 "C26" H 11100 1400 40  0000 L CNN
F 1 "10uF" H 11106 1215 40  0000 L CNN
F 2 "" H 11138 1150 30  0000 C CNN
F 3 "" H 11100 1300 60  0000 C CNN
	1    11100 1300
	1    0    0    -1  
$EndComp
$Comp
L Csmall C7
U 1 1 54AA7E5E
P 4950 1600
F 0 "C7" H 4975 1650 30  0000 L CNN
F 1 "0.2uF" H 4975 1550 30  0000 L CNN
F 2 "" H 4950 1600 60  0000 C CNN
F 3 "" H 4950 1600 60  0000 C CNN
	1    4950 1600
	1    0    0    -1  
$EndComp
$Comp
L Csmall C4
U 1 1 54AA8112
P 4750 1600
F 0 "C4" H 4775 1650 30  0000 L CNN
F 1 "0.2uF" H 4775 1550 30  0000 L CNN
F 2 "" H 4750 1600 60  0000 C CNN
F 3 "" H 4750 1600 60  0000 C CNN
	1    4750 1600
	1    0    0    -1  
$EndComp
$Comp
L Csmall C8
U 1 1 54AA81C4
P 5150 1600
F 0 "C8" H 5175 1650 30  0000 L CNN
F 1 "0.2uF" H 5175 1550 30  0000 L CNN
F 2 "" H 5150 1600 60  0000 C CNN
F 3 "" H 5150 1600 60  0000 C CNN
	1    5150 1600
	1    0    0    -1  
$EndComp
$Comp
L Csmall C9
U 1 1 54AA820F
P 5350 1600
F 0 "C9" H 5375 1650 30  0000 L CNN
F 1 "0.2uF" H 5375 1550 30  0000 L CNN
F 2 "" H 5350 1600 60  0000 C CNN
F 3 "" H 5350 1600 60  0000 C CNN
	1    5350 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 54AA82BD
P 5050 1350
F 0 "#PWR14" H 5050 1350 30  0001 C CNN
F 1 "GND" H 5050 1280 30  0001 C CNN
F 2 "" H 5050 1350 60  0000 C CNN
F 3 "" H 5050 1350 60  0000 C CNN
	1    5050 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 54AA82F8
P 5500 1800
F 0 "#PWR18" H 5500 1800 30  0001 C CNN
F 1 "GND" H 5500 1730 30  0001 C CNN
F 2 "" H 5500 1800 60  0000 C CNN
F 3 "" H 5500 1800 60  0000 C CNN
	1    5500 1800
	1    0    0    -1  
$EndComp
$Comp
L Csmall C3
U 1 1 54AA7168
P 4700 1150
F 0 "C3" H 4725 1200 30  0000 L CNN
F 1 "100uF" H 4725 1100 30  0000 L CNN
F 2 "" H 4700 1150 60  0000 C CNN
F 3 "" H 4700 1150 60  0000 C CNN
	1    4700 1150
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR15
U 1 1 54AAA4B0
P 5250 2250
F 0 "#PWR15" H 5250 2450 40  0001 C CNN
F 1 "VCCINT" H 5250 2400 30  0000 C CNN
F 2 "" H 5250 2250 60  0000 C CNN
F 3 "" H 5250 2250 60  0000 C CNN
	1    5250 2250
	1    0    0    -1  
$EndComp
$Comp
L +1.5V #PWR11
U 1 1 549C8300
P 4550 950
F 0 "#PWR11" H 4550 1090 20  0001 C CNN
F 1 "+1.5V" H 4550 1060 30  0000 C CNN
F 2 "" H 4550 950 60  0000 C CNN
F 3 "" H 4550 950 60  0000 C CNN
	1    4550 950 
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR17
U 1 1 54AABBFF
P 5500 1350
F 0 "#PWR17" H 5500 1550 40  0001 C CNN
F 1 "VCCINT" H 5500 1500 30  0000 C CNN
F 2 "" H 5500 1350 60  0000 C CNN
F 3 "" H 5500 1350 60  0000 C CNN
	1    5500 1350
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR13
U 1 1 54AA7033
P 5050 950
F 0 "#PWR13" H 5050 1150 40  0001 C CNN
F 1 "VCCINT" H 5050 1100 30  0000 C CNN
F 2 "" H 5050 950 60  0000 C CNN
F 3 "" H 5050 950 60  0000 C CNN
	1    5050 950 
	1    0    0    -1  
$EndComp
$Comp
L Csmall C12
U 1 1 54AAD108
P 6100 1150
F 0 "C12" H 6125 1200 30  0000 L CNN
F 1 "0.01uF" H 6125 1100 30  0000 L CNN
F 2 "" H 6100 1150 60  0000 C CNN
F 3 "" H 6100 1150 60  0000 C CNN
	1    6100 1150
	1    0    0    -1  
$EndComp
$Comp
L Csmall C13
U 1 1 54AAD10E
P 6100 1150
F 0 "C13" H 6125 1200 30  0000 L CNN
F 1 "0.01uF" H 6125 1100 30  0000 L CNN
F 2 "" H 6100 1150 60  0000 C CNN
F 3 "" H 6100 1150 60  0000 C CNN
	1    6100 1150
	1    0    0    -1  
$EndComp
$Comp
L Csmall C14
U 1 1 54AAD114
P 6150 1600
F 0 "C14" H 6175 1650 30  0000 L CNN
F 1 "0.2uF" H 6175 1550 30  0000 L CNN
F 2 "" H 6150 1600 60  0000 C CNN
F 3 "" H 6150 1600 60  0000 C CNN
	1    6150 1600
	1    0    0    -1  
$EndComp
$Comp
L Csmall C11
U 1 1 54AAD11A
P 5950 1600
F 0 "C11" H 5975 1650 30  0000 L CNN
F 1 "0.2uF" H 5975 1550 30  0000 L CNN
F 2 "" H 5950 1600 60  0000 C CNN
F 3 "" H 5950 1600 60  0000 C CNN
	1    5950 1600
	1    0    0    -1  
$EndComp
$Comp
L Csmall C15
U 1 1 54AAD120
P 6350 1600
F 0 "C15" H 6375 1650 30  0000 L CNN
F 1 "0.2uF" H 6375 1550 30  0000 L CNN
F 2 "" H 6350 1600 60  0000 C CNN
F 3 "" H 6350 1600 60  0000 C CNN
	1    6350 1600
	1    0    0    -1  
$EndComp
$Comp
L Csmall C16
U 1 1 54AAD126
P 6550 1600
F 0 "C16" H 6575 1650 30  0000 L CNN
F 1 "0.2uF" H 6575 1550 30  0000 L CNN
F 2 "" H 6550 1600 60  0000 C CNN
F 3 "" H 6550 1600 60  0000 C CNN
	1    6550 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR23
U 1 1 54AAD12C
P 6250 1350
F 0 "#PWR23" H 6250 1350 30  0001 C CNN
F 1 "GND" H 6250 1280 30  0001 C CNN
F 2 "" H 6250 1350 60  0000 C CNN
F 3 "" H 6250 1350 60  0000 C CNN
	1    6250 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR26
U 1 1 54AAD132
P 7100 1800
F 0 "#PWR26" H 7100 1800 30  0001 C CNN
F 1 "GND" H 7100 1730 30  0001 C CNN
F 2 "" H 7100 1800 60  0000 C CNN
F 3 "" H 7100 1800 60  0000 C CNN
	1    7100 1800
	1    0    0    -1  
$EndComp
$Comp
L Csmall C10
U 1 1 54AAD138
P 5900 1150
F 0 "C10" H 5925 1200 30  0000 L CNN
F 1 "100uF" H 5925 1100 30  0000 L CNN
F 2 "" H 5900 1150 60  0000 C CNN
F 3 "" H 5900 1150 60  0000 C CNN
	1    5900 1150
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR21
U 1 1 54AAD73A
P 6150 2250
F 0 "#PWR21" H 6150 2450 40  0001 C CNN
F 1 "VCCIO" H 6150 2400 30  0000 C CNN
F 2 "" H 6150 2250 60  0000 C CNN
F 3 "" H 6150 2250 60  0000 C CNN
	1    6150 2250
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR22
U 1 1 54AAEACE
P 6250 950
F 0 "#PWR22" H 6250 1150 40  0001 C CNN
F 1 "VCCIO" H 6250 1100 30  0000 C CNN
F 2 "" H 6250 950 60  0000 C CNN
F 3 "" H 6250 950 60  0000 C CNN
	1    6250 950 
	1    0    0    -1  
$EndComp
$Comp
L Csmall C17
U 1 1 54AAECB4
P 6750 1600
F 0 "C17" H 6775 1650 30  0000 L CNN
F 1 "0.2uF" H 6775 1550 30  0000 L CNN
F 2 "" H 6750 1600 60  0000 C CNN
F 3 "" H 6750 1600 60  0000 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
$Comp
L Csmall C18
U 1 1 54AAED0F
P 6950 1600
F 0 "C18" H 6975 1650 30  0000 L CNN
F 1 "0.2uF" H 6975 1550 30  0000 L CNN
F 2 "" H 6950 1600 60  0000 C CNN
F 3 "" H 6950 1600 60  0000 C CNN
	1    6950 1600
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR25
U 1 1 54AAF3A0
P 7100 1350
F 0 "#PWR25" H 7100 1550 40  0001 C CNN
F 1 "VCCIO" H 7100 1500 30  0000 C CNN
F 2 "" H 7100 1350 60  0000 C CNN
F 3 "" H 7100 1350 60  0000 C CNN
	1    7100 1350
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB2
U 1 1 54AAFC34
P 9200 2000
F 0 "FB2" H 9200 2150 60  0000 C CNN
F 1 "FILTER" H 9200 1900 60  0000 C CNN
F 2 "" H 9200 2000 60  0000 C CNN
F 3 "http://www.farnell.com/datasheets/712877.pdf" H 9200 2000 60  0001 C CNN
F 4 "http://il.farnell.com/tdk/mmz2012202bt000/ferrite-bead-0-5ohm-400ma-0805/dp/2372958" H 9200 2000 60  0001 C CNN "Farnell"
F 5 "MMZ2012Y202BT000 " H 9200 2000 60  0001 C CNN "PARTNO"
	1    9200 2000
	1    0    0    -1  
$EndComp
$Comp
L Csmall C1
U 1 1 54AB1444
P 2150 950
F 0 "C1" H 2175 1000 30  0000 L CNN
F 1 "10uF" H 2175 900 30  0000 L CNN
F 2 "" H 2150 950 60  0000 C CNN
F 3 "" H 2150 950 60  0000 C CNN
	1    2150 950 
	1    0    0    -1  
$EndComp
$Comp
L Csmall C2
U 1 1 54AB6E81
P 2850 7800
F 0 "C2" H 2875 7850 30  0000 L CNN
F 1 "10uF" H 2875 7750 30  0000 L CNN
F 2 "" H 2850 7800 60  0000 C CNN
F 3 "" H 2850 7800 60  0000 C CNN
	1    2850 7800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 54AB72AC
P 3050 7950
F 0 "#PWR6" H 3050 7950 30  0001 C CNN
F 1 "GND" H 3050 7880 30  0001 C CNN
F 2 "" H 3050 7950 60  0000 C CNN
F 3 "" H 3050 7950 60  0000 C CNN
	1    3050 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1050 2150 1100
Wire Wire Line
	2150 800  2150 850 
Connection ~ 2700 7700
Wire Wire Line
	2850 7700 2700 7700
Wire Wire Line
	3050 7900 3050 7950
Wire Wire Line
	2850 7900 3050 7900
Connection ~ 4600 2250
Wire Wire Line
	4500 2450 4500 2250
Wire Wire Line
	4750 2250 4750 2350
Wire Wire Line
	3600 2250 3600 2450
Wire Wire Line
	3700 2250 3600 2250
Wire Wire Line
	3700 2350 3700 2250
Wire Wire Line
	3800 800  3400 800 
Wire Wire Line
	3900 900  3400 900 
Wire Wire Line
	4000 1000 3400 1000
Wire Wire Line
	4100 1100 3400 1100
Wire Wire Line
	4000 1000 4000 2450
Connection ~ 2350 1100
Wire Wire Line
	9550 2000 9650 2000
Wire Wire Line
	8750 2000 8850 2000
Connection ~ 6950 1500
Wire Wire Line
	7100 1500 7100 1350
Connection ~ 6950 1750
Wire Wire Line
	7100 1750 7100 1800
Connection ~ 6750 1750
Wire Wire Line
	6750 1700 6750 1750
Wire Wire Line
	6950 1750 6950 1700
Connection ~ 6750 1500
Wire Wire Line
	6250 1050 6250 950 
Connection ~ 5750 2300
Wire Wire Line
	5750 2450 5750 2300
Connection ~ 5850 2300
Wire Wire Line
	5850 2450 5850 2300
Connection ~ 5950 2300
Wire Wire Line
	5950 2450 5950 2300
Connection ~ 6050 2300
Wire Wire Line
	6050 2450 6050 2300
Connection ~ 6150 2300
Wire Wire Line
	5650 2300 6150 2300
Wire Wire Line
	5650 2450 5650 2300
Wire Wire Line
	6150 2450 6150 2250
Connection ~ 5750 1050
Wire Wire Line
	5750 950  5750 1500
Connection ~ 6550 1500
Connection ~ 6100 1050
Connection ~ 6350 1500
Connection ~ 6150 1500
Connection ~ 5950 1500
Wire Wire Line
	5750 1500 7100 1500
Connection ~ 5900 1050
Wire Wire Line
	5750 1050 6250 1050
Connection ~ 6100 1300
Wire Wire Line
	6100 1250 6100 1300
Wire Wire Line
	5900 1300 5900 1250
Wire Wire Line
	6250 1300 5900 1300
Wire Wire Line
	6250 1350 6250 1300
Connection ~ 6550 1750
Wire Wire Line
	6550 1700 6550 1750
Connection ~ 6350 1750
Wire Wire Line
	6350 1700 6350 1750
Connection ~ 6150 1750
Wire Wire Line
	6150 1700 6150 1750
Wire Wire Line
	5950 1750 5950 1700
Wire Wire Line
	5950 1750 7100 1750
Wire Wire Line
	5500 1500 5500 1350
Wire Wire Line
	5050 1050 5050 950 
Wire Wire Line
	4550 950  4550 1500
Connection ~ 4550 1050
Connection ~ 5150 2300
Wire Wire Line
	5150 2450 5150 2300
Connection ~ 5050 2300
Wire Wire Line
	5050 2450 5050 2300
Connection ~ 5250 2300
Wire Wire Line
	4950 2300 5250 2300
Wire Wire Line
	4950 2450 4950 2300
Wire Wire Line
	5250 2450 5250 2250
Connection ~ 5350 1500
Connection ~ 4900 1050
Connection ~ 5150 1500
Connection ~ 4950 1500
Connection ~ 4750 1500
Wire Wire Line
	4550 1500 5500 1500
Connection ~ 4700 1050
Wire Wire Line
	4550 1050 5050 1050
Connection ~ 4900 1300
Wire Wire Line
	4900 1250 4900 1300
Wire Wire Line
	4700 1300 4700 1250
Wire Wire Line
	5050 1300 4700 1300
Wire Wire Line
	5050 1350 5050 1300
Connection ~ 5350 1750
Wire Wire Line
	5350 1700 5350 1750
Connection ~ 5150 1750
Wire Wire Line
	5150 1700 5150 1750
Connection ~ 4950 1750
Wire Wire Line
	4950 1700 4950 1750
Wire Wire Line
	4750 1750 4750 1700
Wire Wire Line
	5500 1750 5500 1800
Wire Wire Line
	4750 1750 5500 1750
Connection ~ 10750 1500
Connection ~ 11100 1050
Connection ~ 11100 1900
Connection ~ 10750 2350
Wire Wire Line
	11100 1700 11100 1950
Wire Wire Line
	10750 1900 11100 1900
Connection ~ 9950 1050
Connection ~ 10750 1050
Connection ~ 10750 1900
Connection ~ 9950 1900
Connection ~ 9650 1900
Wire Wire Line
	9950 1900 9650 1900
Wire Wire Line
	9950 1050 9650 1050
Wire Wire Line
	9950 1100 9950 1050
Wire Wire Line
	9950 1950 9950 1900
Wire Wire Line
	9650 1050 9650 2000
Connection ~ 8150 2950
Wire Wire Line
	8150 2900 8150 3050
Wire Wire Line
	8350 2950 8350 2900
Wire Wire Line
	7950 2950 8350 2950
Wire Wire Line
	7950 2900 7950 2950
Connection ~ 8350 2650
Wire Wire Line
	8350 2700 8350 2650
Connection ~ 8150 2650
Wire Wire Line
	8150 2700 8150 2650
Connection ~ 7950 2650
Wire Wire Line
	7950 2700 7950 2650
Wire Wire Line
	8500 2650 7800 2650
Wire Wire Line
	8500 2550 8500 2650
Wire Wire Line
	7000 2650 7100 2650
Wire Wire Line
	7000 2550 7000 2650
Wire Wire Line
	5450 2250 5450 2450
Wire Wire Line
	11100 900  11100 1100
Wire Wire Line
	10750 1050 11100 1050
Connection ~ 10350 1500
Wire Wire Line
	9950 1500 11100 1500
Wire Wire Line
	10750 1100 10750 1050
Wire Wire Line
	10350 1350 10350 1600
Wire Wire Line
	1750 8100 1750 8350
Wire Wire Line
	2700 8000 2700 7650
Wire Wire Line
	2600 8000 2700 8000
Wire Wire Line
	2700 8100 2600 8100
Wire Wire Line
	3300 8100 3300 7500
Wire Wire Line
	3200 8100 3300 8100
Wire Wire Line
	3400 8150 3400 8300
Wire Wire Line
	3400 7500 3400 7650
Connection ~ 11350 5050
Wire Wire Line
	11350 5150 11150 5150
Connection ~ 11350 4950
Wire Wire Line
	11350 5050 11150 5050
Connection ~ 11350 4850
Wire Wire Line
	11350 4950 11150 4950
Connection ~ 11350 4750
Wire Wire Line
	11350 4850 11150 4850
Connection ~ 11350 4650
Wire Wire Line
	11350 4750 11150 4750
Connection ~ 11350 4550
Wire Wire Line
	11350 4650 11150 4650
Connection ~ 11350 4450
Wire Wire Line
	11350 4550 11150 4550
Wire Wire Line
	11350 4200 11350 5150
Wire Wire Line
	11150 4450 11350 4450
Wire Wire Line
	10550 4850 10750 4850
Wire Wire Line
	10550 5050 10550 4850
Wire Wire Line
	10050 5050 10550 5050
Wire Wire Line
	10600 5350 10050 5350
Wire Wire Line
	10600 4950 10600 5350
Wire Wire Line
	10750 4950 10600 4950
Wire Wire Line
	10650 5050 10750 5050
Wire Wire Line
	10650 5650 10650 5050
Wire Wire Line
	10050 5650 10650 5650
Wire Wire Line
	10700 5950 10050 5950
Wire Wire Line
	10700 5150 10700 5950
Wire Wire Line
	10750 5150 10700 5150
Wire Wire Line
	10750 4750 10050 4750
Wire Wire Line
	10600 4650 10750 4650
Wire Wire Line
	10600 4450 10600 4650
Wire Wire Line
	10050 4450 10600 4450
Wire Wire Line
	10650 4150 10050 4150
Wire Wire Line
	10650 4550 10650 4150
Wire Wire Line
	10750 4550 10650 4550
Wire Wire Line
	10700 4450 10750 4450
Wire Wire Line
	10700 3850 10700 4450
Wire Wire Line
	10050 3850 10700 3850
Wire Wire Line
	4500 8150 4500 8300
Wire Wire Line
	4400 8150 4500 8150
Wire Wire Line
	4400 8300 4400 8150
Wire Wire Line
	3800 8150 3800 8100
Wire Wire Line
	3900 8150 3800 8150
Wire Wire Line
	3900 8300 3900 8150
Connection ~ 10350 2350
Wire Wire Line
	9950 2350 11100 2350
Wire Wire Line
	10350 2200 10350 2500
Wire Wire Line
	10750 1900 10750 1950
Wire Wire Line
	8950 1400 8950 1600
Wire Wire Line
	8750 1400 8950 1400
Connection ~ 7550 2000
Wire Wire Line
	7650 2000 7550 2000
Connection ~ 7550 1550
Wire Wire Line
	7650 1400 7550 1400
Connection ~ 7550 1850
Wire Wire Line
	7550 1550 7650 1550
Wire Wire Line
	7650 1850 7550 1850
Wire Wire Line
	7550 1400 7550 2250
Wire Wire Line
	4500 2250 4750 2250
Wire Wire Line
	4600 2450 4600 2250
Connection ~ 2350 800 
Wire Wire Line
	2150 800  2500 800 
Connection ~ 2350 900 
Wire Wire Line
	2500 900  2350 900 
Wire Wire Line
	2350 1000 2350 650 
Wire Wire Line
	2500 1000 2350 1000
Wire Wire Line
	2350 1100 2350 1300
Wire Wire Line
	2150 1100 2500 1100
Connection ~ 6100 7800
Connection ~ 5100 7800
Wire Wire Line
	5100 7500 5100 7800
Connection ~ 5200 7800
Wire Wire Line
	5200 7500 5200 7800
Connection ~ 5300 7800
Wire Wire Line
	5300 7500 5300 7800
Connection ~ 5400 7800
Wire Wire Line
	5400 7500 5400 7800
Connection ~ 5500 7800
Wire Wire Line
	5500 7500 5500 7800
Connection ~ 5900 7800
Wire Wire Line
	6100 7500 6100 8150
Connection ~ 5600 7800
Wire Wire Line
	5600 7500 5600 7800
Connection ~ 5700 7800
Wire Wire Line
	5700 7500 5700 7800
Connection ~ 5800 7800
Wire Wire Line
	5800 7500 5800 7800
Wire Wire Line
	5900 7800 5900 7500
Wire Wire Line
	5000 7800 6100 7800
Wire Wire Line
	5000 7500 5000 7800
Wire Wire Line
	3800 2450 3800 800 
Wire Wire Line
	3900 2450 3900 900 
Wire Wire Line
	4100 2450 4100 1100
$Comp
L R_PACK4 RP1
U 1 1 54ACA167
P 2200 2550
F 0 "RP1" H 2200 3000 40  0000 C CNN
F 1 "10K" H 2200 2500 40  0000 C CNN
F 2 "" H 2200 2550 60  0000 C CNN
F 3 "http://www.farnell.com/datasheets/443424.pdf" H 1900 2300 60  0001 C CNN
F 4 "http://il.farnell.com/yageo/yc164-jr-0710kl/resistor-iso-array-4res-10kohm/dp/2413810" H 2200 2550 60  0001 C CNN "Farnell"
F 5 "YC164-JR-0710KL" H 2200 2550 60  0001 C CNN "PARTNO"
	1    2200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2500 1900 2500
Wire Wire Line
	1900 2500 1900 2000
Wire Wire Line
	2000 2400 1900 2400
Connection ~ 1900 2400
Wire Wire Line
	2000 2300 1900 2300
Connection ~ 1900 2300
Wire Wire Line
	2000 2200 1900 2200
Connection ~ 1900 2200
Wire Wire Line
	3200 2450 3200 2400
Wire Wire Line
	3200 2400 2400 2400
Wire Wire Line
	2400 2300 3300 2300
Wire Wire Line
	3300 2300 3300 2450
Wire Wire Line
	3400 2450 3400 2200
Wire Wire Line
	3400 2200 2400 2200
Text GLabel 2400 2500 2    39   Input ~ 0
OSC_OE
Text GLabel 1750 8000 0    39   Input ~ 0
OSC_OE
Text GLabel 2550 3400 0    39   Input ~ 0
0B10
Text GLabel 2550 3500 0    39   Input ~ 0
0B11
Text GLabel 2550 3600 0    39   Input ~ 0
0B12
Text GLabel 2550 3700 0    39   Input ~ 0
0B13
Text GLabel 2550 3850 0    39   Input ~ 0
1B10
Text GLabel 2550 4000 0    39   Input ~ 0
2B10
Text GLabel 2550 4100 0    39   Input ~ 0
2B11
Text GLabel 2550 4200 0    39   Input ~ 0
2B12
Text GLabel 2550 4300 0    39   Input ~ 0
2B13
Text GLabel 2550 4400 0    39   Input ~ 0
2B14
$EndSCHEMATC
