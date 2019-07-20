# QRSS Notes

## Notable QRSS TX Design Pages
* **Dave Hassall (WA5DJJ)** built multiple transmitters and has [great web pages](http://www.zianet.com/dhassall/QRSS_A.html) that describe their design. The first two builds are fully analog:
  * [MEPT v1](http://www.zianet.com/dhassall/QRSSMEPT1.html) uses 2n2222 for oscillator, buffer, and final. The oscillator board is insulated. Initially it output 50 mW, but was later modified to output up to 900 mW.
  * [MEPT v2](http://www.zianet.com/dhassall/QRSSMEPT2.html) uses a resistor crystal oven. The final amplifier are 3x 2n2222 transistors in parallel for 250mW output.
* **VK1TKA** made a solar-powered MEPT and [documented the build](http://clayton.isnotcrazy.com/mept_v1)
  * The microcontroller is clocked at the transmitter frequency and CKOUT is amplified with a [74HC245](https://assets.nexperia.com/documents/data-sheet/74HC_HCT245.pdf) (500 mW max dissipation) in push-pull configuration as the output driver
  * It uses an interesting temperature compensation scheme (in software) 


## Hardware
* [Genesis Q5 transmitter](http://www.genesisradio.com.au/Q5/) uses a 74HC04N as an oscillator and also to buffer and amplify the output.
* [Using 74HC240 as a buffer amplifier](http://py2ohh.w2c.com.br/trx/digital/rfdigital.htm)

## Software
* [Argo](https://digilander.libero.it/i2phd/argo/) - a spectrograph for QRSS
* [QrssPig](https://github.com/MartinHerren/QrssPiG) - a QRSS grabber for Raspberry Pi (in Python)
* [Spectran](http://www.sdradio.eu/weaksignals/spectran.html)
* [SpectrumLab](https://www.qsl.net/dl4yhf/spectra1.html)

## Oscillator Designs
[Crystal Oscillator Circuits by VK5SRP](/graphics/diagrams/crystal-oscillator-notes-VK5SRP.pdf)
![](qrss-oscillator-w7zoi.png)


## Designs at a glance

### Transmitters (and oscillators)
![](/graphics/diagrams/qrss-tx-G6AVK.png)
![](/graphics/diagrams/qrss-tx-IW0HK.jpg)
![](/graphics/diagrams/qrss-tx-aa1tj.jpg)
![](/graphics/diagrams/qrss-tx-hans.gif)
![](/graphics/diagrams/qrss-tx-m0ayf.gif)
![](/graphics/diagrams/qrss-tx-n0qbh.jpg)
![](/graphics/diagrams/qrss-tx-n2cx.PNG)
![](/graphics/diagrams/qrss-tx-ng0r.png)
![](/graphics/diagrams/qrss-oscillator-vk2zay.jpg)

### Receivers
![](/graphics/diagrams/qrss-rx-hans.gif)
![](/graphics/diagrams/qrss-rx-m0ayf.gif)

## FSK
These are notes related to shifting a crystal oscillator's frequency.

### [High Frequency VCO Design and Schematics](https://www.qsl.net/va3iul/High_Frequency_VCO_Design_and_Schematics/High_Frequency_VCO_Design_and_Schematics.htm)

### [Variable Frequency Oscillators](http://ftp.unpad.ac.id/orari/orari-diklat/teknik/homebrew/pcb/crystal-sets-to-sideband/chap10.pdf)

This text has _50 secrets of avoiding drift_ and _varactor tuning_ sections which are worth reviewing.

There's also a good section about building precision power supplies for VFOs.

![](/graphics/diagrams/oscillator-varactor-tuned.png)

Use a varactor as a temperature-compensated VFO

![](/graphics/diagrams/oscillator-temperature-compensated.png)

### vk2zay Fine and Coarse Tuning
http://www.vk2zay.net/article/181


![](/graphics/diagrams/varactor-tuning-vk2zay.jpg)

I tried building designs like this but it's too frustrating. Every time you adjust the coarse, the FSK distance changes. Further, it changes nonlinearly (with bigger swings when the voltage is near zero). Maybe I used a sub-ideal varactor in my tests (a reverse-biased LED).


# QRSS Oven Designs

## Links

* [Temperature Control Circuits](http://www.techlib.com/electronics/ovenckts.htm)
* [Crystal Oven Controller](https://www.w6pql.com/crystal_oven_controller.htm) (W6PQL)
* [Crystal Ovens for QRSS Applications](https://www.qsl.net/m0ayf/Crystal-Ovens.html) (M0AYF)
* [A simple crystal oven/heater that uses no power resistors](http://ka7oei.blogspot.com/2018/01/a-simple-crystal-ovenheater-that-uses.html) (KA7OEI)
* Temperature Controllers for QRSS [Part 1](http://pensacolasnapper.blogspot.com/2011/03/temperature-controllers-for-qrss.html),  [Part 2](http://pensacolasnapper.blogspot.com/2011/03/temperature-controllers-for-qrss-part-2.html), and [Part 3](http://pensacolasnapper.blogspot.com/2011/03/temperature-controllers-for-qrss-part-3.html) (W4HBK)
* [Use a transistor as a heater](https://www.edn.com/design/components-and-packaging/4371386/Use-a-transistor-as-a-heater)

## Temperature Sensors
* [NTC thermistor](https://www.mouser.com/ProductDetail/Vishay-BC-Components/NTCS0805E3103JMT?qs=%2Fha2pyFadugG%252BVCtdoH7fOXGwZyTJj3a87dtpnBjw%2FHIFXuReLm0zw%3D%3D) 0805 ($0.53) 10K ambient
* [LM335](https://www.mouser.com/ProductDetail/STMicroelectronics/LM335Z?qs=sGAEpiMZZMuaKyt%2FjIB%2FpgcqLP%252BGkGYM) ($0.48) output voltage (zener breakdown) varies directly (and linearly) with temperature (10mV/K).
* [LM84](https://www.mouser.com/ProductDetail/Texas-Instruments/LMT84LP?qs=sGAEpiMZZMvfFCidbTccAx%2Fjajy0Q%252BmrLK0XXJnLE5s%3D) ($0.83) output voltage varies inversely to temperature. 50C is 750 mV.

## Heater Elements
* [chassis mount wirewound power resistors](https://www.mouser.com/Passive-Components/Resistors/Wirewound-Resistors/Wirewound-Resistors-Chassis-Mount/_/N-7fx9g?Ns=Pricing|0) ($1-2)

## Typical Op-Amp Designs
![](/graphics/diagrams/oven-techlib-baro.gif)
![](/graphics/diagrams/oven-techlib-ovenckts.gif)
![](/graphics/diagrams/oven-LM331-datasheet.PNG)
![](/graphics/diagrams/oven-w6pql-thermistor.gif)
![](/graphics/diagrams/oven-m0ayf-mk1.gif)
![](/graphics/diagrams/oven-m0ayf-mk2.gif)
![](/graphics/diagrams/oven-ka7oei.jpg)
![](/graphics/diagrams/oven-w4hbk.jpg)
![](/graphics/diagrams/oven-w3kkc.PNG)

## Alternate Designs
![](/graphics/diagrams/oven-techlib-tl431.gif)
![](/graphics/diagrams/oven-pa0tab-schematica.jpg)

# Notable Components

This is a list of components I frequently design with. By keeping links to their Mouser pages all in one place it makes ordering easy. It also makes retrieving datasheets simple and fast.

* special passives
  * [10uF capacitor (35V)](https://www.mouser.com/ProductDetail/Taiyo-Yuden/GMK212BBJ106KG-T?qs=sGAEpiMZZMs0AnBnWHyRQPSjYu%2Fkbgu8jC8AZ5Vshl1rlGMRpR%252BRRQ%3D%3D) 0805 ($0.61)
  * [10uF capacitor (10V)](https://www.mouser.com/ProductDetail/Taiyo-Yuden/LMK212ABJ106MG-T?qs=sGAEpiMZZMs0AnBnWHyRQIHQ3Mw87cdoP86Dk9lrloMw0%2FN1H1pNqw%3D%3D) 0805 ($0.15)
  * [47 Ohm resistor (500 mW)](https://www.mouser.com/ProductDetail/Panasonic/ERJ-P06F47R0V?qs=sGAEpiMZZMtlubZbdhIBIK7FbVYKWV6WeeFY5DwaNCk%3D) 1206 ($0.17)
* [10.140 MHz crystal](https://www.mouser.com/ProductDetail/IQD/LFXTAL013480Bulk?qs=e4%2FAndAAwgLefIQQ1kDEyw%3D%3D) ($0.75)
* [ATTiny2313](https://www.mouser.com/ProductDetail/Microchip-Technology-Atmel/ATTINY2313A-SU?qs=sGAEpiMZZMvqv2n3s2xjsRLJ5ROJ0gc0dZSXrqbzGMo%3D) SOIC-20 ($1.12)
* [74HC04](https://www.mouser.com/ProductDetail/Toshiba/74HC04DBJ?qs=sGAEpiMZZMutVWjHE%2FYQw9wp2KmMZae1rDJE3jT16hQ%3D) SOIC-14 ($0.40)
  * 6 inverting gates
  * 6V max operating voltage
  * 25mA max output current (6x = 150mA)
  * 500mW max total power output
* [74HC240](https://www.mouser.com/ProductDetail/ON-Semiconductor/MC74HC240ADWR2G?qs=sGAEpiMZZMtOwpHsRTkso1w2FFrRgZoC7Sba8mWwszY%3D) (8 gates) SOIC-20 ($0.58)
  * 8 inverting gates
  * 6V max operating voltage
  * 35mA max output current (8x = 280mA)
  * 450mW max total power output
* [74HC541](https://www.mouser.com/ProductDetail/Texas-Instruments/SN74HC541PWR?qs=sGAEpiMZZMutXGli8Ay4kJcA9wggc6B%2Fyo4DRY3IQXc%3D) (8 gates, all on the same side!) TSSOP-20 ($0.58)
  * 6V max operating voltage
  * 20mA max output current (8x = 120mA)
  * recommended 6mA output max (8x = 48mA)
* [7805 regulator (1A)](https://www.mouser.com/ProductDetail/ON-Semiconductor/MC7805CDTRKG?qs=sGAEpiMZZMtUqDgmOWBjgFMGuATcbJe5wWS0hbY0mRQ%3D) DPAK-3 ($0.56)
* [SMA connector](https://www.mouser.com/ProductDetail/LPRS/SMA-CONNECTOR?qs=sGAEpiMZZMuLQf%252BEuFsOrkd7M7rmHNHidLMZ%2Ftb%252B0T1YCJLScw0qLA%3D%3D) ($1.08)
* varactor - use an 0805 LED for now
* [ferrite bead](https://www.mouser.com/ProductDetail/Taiyo-Yuden/BK2125LM252-T?qs=sGAEpiMZZMtdyQheitOmRas3gyT7ksc5miBuNUkh3Qk%3D) (200 mA, ~2kOhm at 10MHz) 0805 ($0.12)

## Online Calculators
* [capacitor impedance calculator](http://www.learningaboutelectronics.com/Articles/Capacitor-impedance-calculator.php)
* [inductor impedance calculator](http://www.learningaboutelectronics.com/Articles/Inductor-impedance-calculator.php)