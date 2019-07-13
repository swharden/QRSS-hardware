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

### Transmitters
![](/graphics/diagrams/qrss-tx-G6AVK.png)
![](/graphics/diagrams/qrss-tx-IW0HK.jpg)
![](/graphics/diagrams/qrss-tx-aa1tj.jpg)
![](/graphics/diagrams/qrss-tx-hans.gif)
![](/graphics/diagrams/qrss-tx-m0ayf.gif)
![](/graphics/diagrams/qrss-tx-n0qbh.jpg)
![](/graphics/diagrams/qrss-tx-n2cx.PNG)
![](/graphics/diagrams/qrss-tx-ng0r.png)

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