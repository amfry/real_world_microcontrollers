EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Low Power Current Logger"
Date "2020-10-16"
Rev "Rev 1.0"
Comp "AF Electronics"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADE_logger:microSD_Breakout U5
U 1 1 5F8DCFAD
P 8100 2600
F 0 "U5" H 8008 3965 50  0000 C CNN
F 1 "microSD_Breakout" H 8008 3874 50  0000 C CNN
F 2 "low_current_data_logger:sd_mod" H 8100 2600 50  0001 C CNN
F 3 "https://www.sparkfun.com/products/544" H 8100 2600 50  0001 C CNN
	1    8100 2600
	1    0    0    -1  
$EndComp
$Comp
L ADE_logger:Buck_Boost U3
U 1 1 5F8E8C2E
P 4550 1800
F 0 "U3" H 4550 1427 50  0000 C CNN
F 1 "Buck_Boost" H 4500 1950 59  0000 C CNN
F 2 "low_current_data_logger:buck_boost" H 4550 1800 50  0001 C CNN
F 3 "https://www.sparkfun.com/products/15208" H 4550 1800 50  0001 C CNN
	1    4550 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5F8EDEF9
P 1550 6550
F 0 "J1" H 1450 6650 50  0000 L CNN
F 1 "Current_Sensor_Connectors" V 1700 6050 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Vertical" H 1550 6550 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/phoenix-contact/1729128/260615?utm_adgroup=Terminal%20Blocks%20-%20Wire%20to%20Board&utm_source=google&utm_medium=cpc&utm_campaign=Shopping_Product_Connectors%2C%20Interconnects&utm_term=&utm_content=Terminal%20Blocks%20-%20Wire%20to%20Board&gclid=Cj0KCQjw59n8BRD2ARIsAAmgPmLs2yb5bDVT-5JzOtGHLxIqP9Ict5WzbO_GRv2qQ1iMlTRFMui1VPEaAgByEALw_wcB" H 1550 6550 50  0001 C CNN
	1    1550 6550
	-1   0    0    1   
$EndComp
Text GLabel 6150 4750 2    50   Input ~ 0
RAW_Battery
Text GLabel 2400 1350 1    50   Input ~ 0
RAW_Battery
Text GLabel 6150 4600 2    50   Input ~ 0
SENSOR_SIG
$Comp
L Device:R R1
U 1 1 5F8F6946
P 2150 6500
F 0 "R1" H 2080 6454 50  0000 R CNN
F 1 "23" H 2080 6545 50  0000 R CNN
F 2 "low_current_data_logger:resistor_THT" V 2080 6500 50  0001 C CNN
F 3 "~" H 2150 6500 50  0001 C CNN
	1    2150 6500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5F8F762E
P 2650 6400
F 0 "R2" H 2720 6446 50  0000 L CNN
F 1 "10K" H 2720 6355 50  0000 L CNN
F 2 "low_current_data_logger:resistor_THT" V 2580 6400 50  0001 C CNN
F 3 "~" H 2650 6400 50  0001 C CNN
	1    2650 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F8F85AF
P 2650 7000
F 0 "R3" H 2720 7046 50  0000 L CNN
F 1 "10K" H 2720 6955 50  0000 L CNN
F 2 "low_current_data_logger:resistor_THT" V 2580 7000 50  0001 C CNN
F 3 "~" H 2650 7000 50  0001 C CNN
	1    2650 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F8F9D52
P 2150 7300
F 0 "#PWR06" H 2150 7050 50  0001 C CNN
F 1 "GND" H 2155 7127 50  0000 C CNN
F 2 "" H 2150 7300 50  0001 C CNN
F 3 "" H 2150 7300 50  0001 C CNN
	1    2150 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5F8FB3C2
P 2650 6050
F 0 "#PWR08" H 2650 5900 50  0001 C CNN
F 1 "+3.3V" H 2665 6223 50  0000 C CNN
F 2 "" H 2650 6050 50  0001 C CNN
F 3 "" H 2650 6050 50  0001 C CNN
	1    2650 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F8FC563
P 2650 7300
F 0 "#PWR09" H 2650 7050 50  0001 C CNN
F 1 "GND" H 2655 7127 50  0000 C CNN
F 2 "" H 2650 7300 50  0001 C CNN
F 3 "" H 2650 7300 50  0001 C CNN
	1    2650 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6450 1750 6250
Wire Wire Line
	1750 6250 2150 6250
Wire Wire Line
	2150 6250 2150 6350
Wire Wire Line
	2150 6650 2150 6750
Wire Wire Line
	2150 7150 2150 7300
Wire Wire Line
	2150 6750 1750 6750
Wire Wire Line
	1750 6750 1750 6550
Connection ~ 2150 6750
Wire Wire Line
	2150 6750 2150 6850
Wire Wire Line
	2150 6250 2150 6100
Connection ~ 2150 6250
Text GLabel 2150 6100 0    50   Input ~ 0
SENSOR_SIG
Wire Wire Line
	2650 6050 2650 6250
Wire Wire Line
	2650 7300 2650 7150
Wire Wire Line
	2650 6850 2650 6750
Wire Wire Line
	2150 6750 2650 6750
Connection ~ 2650 6750
Wire Wire Line
	2650 6750 2650 6550
Wire Wire Line
	2400 1650 2400 1350
$Comp
L power:GND #PWR011
U 1 1 5F90446E
P 3600 2050
F 0 "#PWR011" H 3600 1800 50  0001 C CNN
F 1 "GND" H 3605 1877 50  0000 C CNN
F 2 "" H 3600 2050 50  0001 C CNN
F 3 "" H 3600 2050 50  0001 C CNN
	1    3600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1850 3600 1850
Wire Wire Line
	3600 1850 3600 2050
$Comp
L power:GND #PWR015
U 1 1 5F905766
P 7050 3850
F 0 "#PWR015" H 7050 3600 50  0001 C CNN
F 1 "GND" H 7055 3677 50  0000 C CNN
F 2 "" H 7050 3850 50  0001 C CNN
F 3 "" H 7050 3850 50  0001 C CNN
	1    7050 3850
	1    0    0    -1  
$EndComp
Text GLabel 5600 5550 3    50   Input ~ 0
SDA_I2C
Text GLabel 5750 5550 3    50   Input ~ 0
SCL_I2C
$Comp
L low_current_data_logger-rescue:OLED1-ADE_logger U6
U 1 1 5F90FD2E
P 9100 5100
F 0 "U6" H 9628 5279 50  0000 L CNN
F 1 "OLED_Display" H 8850 4750 50  0000 L CNN
F 2 "low_current_data_logger:oled_display" H 9100 5100 50  0001 C CNN
F 3 "https://www.adafruit.com/product/4440#technical-details" H 9100 5100 50  0001 C CNN
	1    9100 5100
	1    0    0    -1  
$EndComp
Text GLabel 8900 4600 1    50   Input ~ 0
SCL_I2C
Text GLabel 8750 4600 1    50   Input ~ 0
SDA_I2C
$Comp
L power:GND #PWR016
U 1 1 5F913456
P 9050 4100
F 0 "#PWR016" H 9050 3850 50  0001 C CNN
F 1 "GND" V 9055 3972 50  0000 R CNN
F 2 "" H 9050 4100 50  0001 C CNN
F 3 "" H 9050 4100 50  0001 C CNN
	1    9050 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 4100 9050 4100
$Comp
L power:+3.3V #PWR018
U 1 1 5F914ACF
P 9500 4050
F 0 "#PWR018" H 9500 3900 50  0001 C CNN
F 1 "+3.3V" H 9515 4223 50  0000 C CNN
F 2 "" H 9500 4050 50  0001 C CNN
F 3 "" H 9500 4050 50  0001 C CNN
	1    9500 4050
	1    0    0    -1  
$EndComp
$Comp
L ADE_logger:ADAFRUIT_DS3231 U2
U 1 1 5F918195
P 2350 5050
F 0 "U2" H 2578 5371 50  0000 L CNN
F 1 "ADAFRUIT_DS3231" V 2250 4950 50  0000 L CNN
F 2 "low_current_data_logger:adafruit_RTC" H 3400 5400 50  0001 C CNN
F 3 "https://www.adafruit.com/product/3013" H 3400 5400 50  0001 C CNN
	1    2350 5050
	1    0    0    -1  
$EndComp
Text GLabel 1750 4550 0    50   Input ~ 0
SCL_I2C
Text GLabel 1750 4700 0    50   Input ~ 0
SDA_I2C
$Comp
L power:GND #PWR02
U 1 1 5F9191EF
P 1000 4500
F 0 "#PWR02" H 1000 4250 50  0001 C CNN
F 1 "GND" H 1005 4327 50  0000 C CNN
F 2 "" H 1000 4500 50  0001 C CNN
F 3 "" H 1000 4500 50  0001 C CNN
	1    1000 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5F919A64
P 1400 3650
F 0 "#PWR05" H 1400 3500 50  0001 C CNN
F 1 "+3.3V" H 1415 3823 50  0000 C CNN
F 2 "" H 1400 3650 50  0001 C CNN
F 3 "" H 1400 3650 50  0001 C CNN
	1    1400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4250 1400 4250
Wire Wire Line
	1750 4400 1000 4400
Wire Wire Line
	1000 4400 1000 4500
$Comp
L power:GND #PWR017
U 1 1 5F921DCD
P 9100 1850
F 0 "#PWR017" H 9100 1600 50  0001 C CNN
F 1 "GND" H 9105 1677 50  0000 C CNN
F 2 "" H 9100 1850 50  0001 C CNN
F 3 "" H 9100 1850 50  0001 C CNN
	1    9100 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5F922303
P 9550 2000
F 0 "#PWR019" H 9550 1850 50  0001 C CNN
F 1 "+3.3V" H 9565 2128 50  0000 L CNN
F 2 "" H 9550 2000 50  0001 C CNN
F 3 "" H 9550 2000 50  0001 C CNN
	1    9550 2000
	1    0    0    -1  
$EndComp
Text GLabel 6150 5200 2    50   Input ~ 0
MOSI_SPI
Text GLabel 8550 2250 2    50   Input ~ 0
MOSI_SPI
Text GLabel 6150 5050 2    50   Input ~ 0
MISO_SPI
Text GLabel 8550 1650 2    50   Input ~ 0
MISO_SPI
Text GLabel 6150 4900 2    50   Input ~ 0
SCLK_SPI
Text GLabel 8550 1950 2    50   Input ~ 0
SCLK_SPI
Wire Wire Line
	9100 1850 9100 1800
Wire Wire Line
	9100 1800 8550 1800
Wire Wire Line
	8550 2100 9550 2100
Text GLabel 4950 4300 0    50   Input ~ 0
CS_SD_SPI
Text GLabel 8550 2400 2    50   Input ~ 0
CS_SD_SPI
Wire Wire Line
	9200 4100 9200 4600
$Comp
L power:GND #PWR021
U 1 1 5F934D2A
P 9950 4300
F 0 "#PWR021" H 9950 4050 50  0001 C CNN
F 1 "GND" H 9955 4127 50  0000 C CNN
F 2 "" H 9950 4300 50  0001 C CNN
F 3 "" H 9950 4300 50  0001 C CNN
	1    9950 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F93719B
P 9550 2400
F 0 "#PWR020" H 9550 2150 50  0001 C CNN
F 1 "GND" H 9555 2227 50  0000 C CNN
F 2 "" H 9550 2400 50  0001 C CNN
F 3 "" H 9550 2400 50  0001 C CNN
	1    9550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2100 9550 2000
Wire Wire Line
	9500 4050 9500 4250
$Comp
L Device:CP1 C2
U 1 1 5F95114F
P 2150 7000
F 0 "C2" H 2265 7046 50  0000 L CNN
F 1 "10 uf" H 2265 6955 50  0000 L CNN
F 2 "Capacitor_THT_new:CP_Radial_Tantal_D4.5mm_P2.50mm" H 2150 7000 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/T350B106K006AT/399-3548-ND/818410?utm_medium=email&utm_source=oce&utm_campaign=3480_OCE20RT&utm_content=productdetail_US&utm_cid=1537864&so=66439036&mkt_tok=eyJpIjoiT1dVNE1tWmtZV1kxTW1NMyIsInQiOiJ4RERhditDZERhWHJjVWtrakxRK25ZbmxxZnkrYWd6Q1ZhRldtOU5NY25wZXBtR1RBQ2RvNmU3V3JZSDRmM1wvRmN3OTdTdzZUVUdTSDFuNHdKSm9DSlRWQVFkM3VoNlwvUkdKRXRFSzBwUWtTb29DdFN1OHI3dmFQRWFsVStxYnpIIn0%3D" H 2150 7000 50  0001 C CNN
	1    2150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1650 2600 1650
Connection ~ 3150 1650
Wire Wire Line
	3150 1750 3150 1650
Wire Wire Line
	2600 1650 2400 1650
Connection ~ 2600 1650
Wire Wire Line
	2600 1750 2600 1650
Wire Wire Line
	3800 1650 3150 1650
Wire Wire Line
	2600 2250 2600 2050
Wire Wire Line
	3150 2250 3150 2050
$Comp
L power:GND #PWR010
U 1 1 5F955E19
P 3150 2250
F 0 "#PWR010" H 3150 2000 50  0001 C CNN
F 1 "GND" H 3155 2077 50  0000 C CNN
F 2 "" H 3150 2250 50  0001 C CNN
F 3 "" H 3150 2250 50  0001 C CNN
	1    3150 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F954973
P 2600 2250
F 0 "#PWR07" H 2600 2000 50  0001 C CNN
F 1 "GND" H 2605 2077 50  0000 C CNN
F 2 "" H 2600 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C3
U 1 1 5F951DA5
P 2600 1900
F 0 "C3" H 2715 1946 50  0000 L CNN
F 1 "10 uf" H 2715 1855 50  0000 L CNN
F 2 "Capacitor_THT_new:CP_Radial_Tantal_D4.5mm_P2.50mm" H 2600 1900 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/T350B106K006AT/399-3548-ND/818410?utm_medium=email&utm_source=oce&utm_campaign=3480_OCE20RT&utm_content=productdetail_US&utm_cid=1537864&so=66439036&mkt_tok=eyJpIjoiT1dVNE1tWmtZV1kxTW1NMyIsInQiOiJ4RERhditDZERhWHJjVWtrakxRK25ZbmxxZnkrYWd6Q1ZhRldtOU5NY25wZXBtR1RBQ2RvNmU3V3JZSDRmM1wvRmN3OTdTdzZUVUdTSDFuNHdKSm9DSlRWQVFkM3VoNlwvUkdKRXRFSzBwUWtTb29DdFN1OHI3dmFQRWFsVStxYnpIIn0%3D" H 2600 1900 50  0001 C CNN
	1    2600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1750 6050 1650
Wire Wire Line
	5500 1750 5500 1650
Wire Wire Line
	5500 2250 5500 2150
Wire Wire Line
	6050 2250 6050 2050
$Comp
L power:GND #PWR014
U 1 1 5F965366
P 6050 2250
F 0 "#PWR014" H 6050 2000 50  0001 C CNN
F 1 "GND" H 6055 2077 50  0000 C CNN
F 2 "" H 6050 2250 50  0001 C CNN
F 3 "" H 6050 2250 50  0001 C CNN
	1    6050 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F96536C
P 6050 1900
F 0 "C6" H 6165 1946 50  0000 L CNN
F 1 ".1 uf" H 6165 1855 50  0000 L CNN
F 2 "Capacitor_THT_new:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 6088 1750 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/K104K15X7RF5TL2/BC1084CT-ND/286706?utm_medium=email&utm_source=oce&utm_campaign=3480_OCE20RT&utm_content=productdetail_US&utm_cid=1537864&so=66439036&mkt_tok=eyJpIjoiT1dVNE1tWmtZV1kxTW1NMyIsInQiOiJ4RERhditDZERhWHJjVWtrakxRK25ZbmxxZnkrYWd6Q1ZhRldtOU5NY25wZXBtR1RBQ2RvNmU3V3JZSDRmM1wvRmN3OTdTdzZUVUdTSDFuNHdKSm9DSlRWQVFkM3VoNlwvUkdKRXRFSzBwUWtTb29DdFN1OHI3dmFQRWFsVStxYnpIIn0%3D" H 6050 1900 50  0001 C CNN
	1    6050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F965372
P 5500 2250
F 0 "#PWR013" H 5500 2000 50  0001 C CNN
F 1 "GND" H 5505 2077 50  0000 C CNN
F 2 "" H 5500 2250 50  0001 C CNN
F 3 "" H 5500 2250 50  0001 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C5
U 1 1 5F965378
P 5500 1900
F 0 "C5" H 5615 1946 50  0000 L CNN
F 1 "10 uf" H 5615 1855 50  0000 L CNN
F 2 "Capacitor_THT_new:CP_Radial_Tantal_D4.5mm_P2.50mm" H 5500 1900 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/T350B106K006AT/399-3548-ND/818410?utm_medium=email&utm_source=oce&utm_campaign=3480_OCE20RT&utm_content=productdetail_US&utm_cid=1537864&so=66439036&mkt_tok=eyJpIjoiT1dVNE1tWmtZV1kxTW1NMyIsInQiOiJ4RERhditDZERhWHJjVWtrakxRK25ZbmxxZnkrYWd6Q1ZhRldtOU5NY25wZXBtR1RBQ2RvNmU3V3JZSDRmM1wvRmN3OTdTdzZUVUdTSDFuNHdKSm9DSlRWQVFkM3VoNlwvUkdKRXRFSzBwUWtTb29DdFN1OHI3dmFQRWFsVStxYnpIIn0%3D" H 5500 1900 50  0001 C CNN
	1    5500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1650 5500 1650
Connection ~ 5500 1650
Wire Wire Line
	5500 1650 5300 1650
Wire Wire Line
	6100 1650 6050 1650
Connection ~ 6050 1650
$Comp
L power:GND #PWR012
U 1 1 5F967978
P 3700 900
F 0 "#PWR012" H 3700 650 50  0001 C CNN
F 1 "GND" H 3705 727 50  0000 C CNN
F 2 "" H 3700 900 50  0001 C CNN
F 3 "" H 3700 900 50  0001 C CNN
	1    3700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 950  4400 800 
Wire Wire Line
	4400 800  3700 800 
Wire Wire Line
	3700 800  3700 900 
$Comp
L Device:C C7
U 1 1 5F96AC37
P 9550 2250
F 0 "C7" H 9665 2296 50  0000 L CNN
F 1 ".1 uf" H 9665 2205 50  0000 L CNN
F 2 "Capacitor_THT_new:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9588 2100 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/K104K15X7RF5TL2/BC1084CT-ND/286706?utm_medium=email&utm_source=oce&utm_campaign=3480_OCE20RT&utm_content=productdetail_US&utm_cid=1537864&so=66439036&mkt_tok=eyJpIjoiT1dVNE1tWmtZV1kxTW1NMyIsInQiOiJ4RERhditDZERhWHJjVWtrakxRK25ZbmxxZnkrYWd6Q1ZhRldtOU5NY25wZXBtR1RBQ2RvNmU3V3JZSDRmM1wvRmN3OTdTdzZUVUdTSDFuNHdKSm9DSlRWQVFkM3VoNlwvUkdKRXRFSzBwUWtTb29DdFN1OHI3dmFQRWFsVStxYnpIIn0%3D" H 9550 2250 50  0001 C CNN
	1    9550 2250
	1    0    0    -1  
$EndComp
Connection ~ 9550 2100
$Comp
L Device:C C8
U 1 1 5F96BACF
P 9650 4250
F 0 "C8" V 9400 4250 50  0000 C CNN
F 1 ".1 uf" V 9500 4250 50  0000 C CNN
F 2 "Capacitor_THT_new:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9688 4100 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/K104K15X7RF5TL2/BC1084CT-ND/286706?utm_medium=email&utm_source=oce&utm_campaign=3480_OCE20RT&utm_content=productdetail_US&utm_cid=1537864&so=66439036&mkt_tok=eyJpIjoiT1dVNE1tWmtZV1kxTW1NMyIsInQiOiJ4RERhditDZERhWHJjVWtrakxRK25ZbmxxZnkrYWd6Q1ZhRldtOU5NY25wZXBtR1RBQ2RvNmU3V3JZSDRmM1wvRmN3OTdTdzZUVUdTSDFuNHdKSm9DSlRWQVFkM3VoNlwvUkdKRXRFSzBwUWtTb29DdFN1OHI3dmFQRWFsVStxYnpIIn0%3D" H 9650 4250 50  0001 C CNN
	1    9650 4250
	0    -1   -1   0   
$EndComp
Connection ~ 9500 4250
Wire Wire Line
	9500 4250 9500 4600
Wire Wire Line
	9800 4250 9950 4250
Wire Wire Line
	9950 4250 9950 4300
$Comp
L power:GND #PWR01
U 1 1 5F97181F
P 800 4150
F 0 "#PWR01" H 800 3900 50  0001 C CNN
F 1 "GND" H 805 3977 50  0000 C CNN
F 2 "" H 800 4150 50  0001 C CNN
F 3 "" H 800 4150 50  0001 C CNN
	1    800  4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F955413
P 3150 1900
F 0 "C4" H 3265 1946 50  0000 L CNN
F 1 ".1 uf" H 3265 1855 50  0000 L CNN
F 2 "Capacitor_THT_new:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3188 1750 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/K104K15X7RF5TL2/BC1084CT-ND/286706?utm_medium=email&utm_source=oce&utm_campaign=3480_OCE20RT&utm_content=productdetail_US&utm_cid=1537864&so=66439036&mkt_tok=eyJpIjoiT1dVNE1tWmtZV1kxTW1NMyIsInQiOiJ4RERhditDZERhWHJjVWtrakxRK25ZbmxxZnkrYWd6Q1ZhRldtOU5NY25wZXBtR1RBQ2RvNmU3V3JZSDRmM1wvRmN3OTdTdzZUVUdTSDFuNHdKSm9DSlRWQVFkM3VoNlwvUkdKRXRFSzBwUWtTb29DdFN1OHI3dmFQRWFsVStxYnpIIn0%3D" H 3150 1900 50  0001 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F979F69
P 800 4000
F 0 "C1" H 915 4046 50  0000 L CNN
F 1 ".1 uf" H 915 3955 50  0000 L CNN
F 2 "Capacitor_THT_new:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 838 3850 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/K104K15X7RF5TL2/BC1084CT-ND/286706?utm_medium=email&utm_source=oce&utm_campaign=3480_OCE20RT&utm_content=productdetail_US&utm_cid=1537864&so=66439036&mkt_tok=eyJpIjoiT1dVNE1tWmtZV1kxTW1NMyIsInQiOiJ4RERhditDZERhWHJjVWtrakxRK25ZbmxxZnkrYWd6Q1ZhRldtOU5NY25wZXBtR1RBQ2RvNmU3V3JZSDRmM1wvRmN3OTdTdzZUVUdTSDFuNHdKSm9DSlRWQVFkM3VoNlwvUkdKRXRFSzBwUWtTb29DdFN1OHI3dmFQRWFsVStxYnpIIn0%3D" H 800 4000 50  0001 C CNN
	1    800  4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3850 1400 3850
Wire Wire Line
	1400 3850 1400 3650
Wire Wire Line
	1400 3850 1400 4250
Connection ~ 1400 3850
$Comp
L ADE_logger:Battery_Holder U1
U 1 1 5F986FC9
P 1250 2100
F 0 "U1" H 1778 2346 50  0000 L CNN
F 1 "Battery_Holder" H 1778 2255 50  0000 L CNN
F 2 "low_current_data_logger:36-1049-ND" H 500 2250 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/keystone-electronics/1049/2745670" H 500 2250 50  0001 C CNN
	1    1250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1250 1100 1050
Wire Wire Line
	1100 1050 1400 1050
Wire Wire Line
	2000 1050 2000 1650
Wire Wire Line
	2000 1650 2400 1650
Connection ~ 2400 1650
Wire Wire Line
	1400 1250 1400 1050
Connection ~ 1400 1050
Wire Wire Line
	1400 1050 2000 1050
$Comp
L power:GND #PWR03
U 1 1 5F98D594
P 1100 2700
F 0 "#PWR03" H 1100 2450 50  0001 C CNN
F 1 "GND" H 1105 2527 50  0000 C CNN
F 2 "" H 1100 2700 50  0001 C CNN
F 3 "" H 1100 2700 50  0001 C CNN
	1    1100 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F98DCB5
P 1400 2700
F 0 "#PWR04" H 1400 2450 50  0001 C CNN
F 1 "GND" H 1405 2527 50  0000 C CNN
F 2 "" H 1400 2700 50  0001 C CNN
F 3 "" H 1400 2700 50  0001 C CNN
	1    1400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2700 1400 2550
Wire Wire Line
	1100 2700 1100 2550
Wire Wire Line
	5300 1850 5300 2150
Wire Wire Line
	5300 2150 5500 2150
Connection ~ 5500 2150
Wire Wire Line
	5500 2150 5500 2050
Wire Wire Line
	6150 3850 7050 3850
$Comp
L ADE_logger:Arduino_Pro_Mini U4
U 1 1 5F8D939E
P 5550 4700
F 0 "U4" H 5950 5850 50  0000 C CNN
F 1 "Arduino_Pro_Mini" V 5550 4900 50  0000 C CNN
F 2 "low_current_data_logger:arduino_mini_pro" H 8400 6200 50  0001 C CNN
F 3 "https://www.sparkfun.com/products/11114" H 8400 6200 50  0001 C CNN
	1    5550 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5FA47A99
P 6100 1450
F 0 "#PWR0101" H 6100 1300 50  0001 C CNN
F 1 "+3.3V" H 6115 1623 50  0000 C CNN
F 2 "" H 6100 1450 50  0001 C CNN
F 3 "" H 6100 1450 50  0001 C CNN
	1    6100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5FA48FD4
P 6500 4150
F 0 "#PWR0102" H 6500 4000 50  0001 C CNN
F 1 "+3.3V" H 6515 4323 50  0000 C CNN
F 2 "" H 6500 4150 50  0001 C CNN
F 3 "" H 6500 4150 50  0001 C CNN
	1    6500 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 4150 6150 4150
Wire Wire Line
	6100 1650 6100 1450
$EndSCHEMATC