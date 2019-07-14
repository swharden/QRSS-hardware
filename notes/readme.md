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