# QRSS Hardware

This repository is an evolving collection of notes and resources related to QRSS hardware (TX and RX) that I (Scott Harden, AJ4VD) find useful. Eventually this work will become a webpage, but for now it's a GitHub repository which makes it easy to edit.

* **[Recently spotted AJ4VD QRSS signals](/spots)**
* Hardware notes are in the [builds](/builds) folder 
* New to QRSS?
  * [What is QRSS?](https://www.qsl.net/m0ayf/What-is-QRSS.html)
  * Join the [_QRSS Knights_ mailing list](https://groups.io/g/qrssknights)
  * See live signals around the world with [QRSS Plus](http://www.swharden.com/qrss/plus/)

### Modular QRSS Transmitter for Experimentation

The transmitter I built uses separate modules. I designed my transmitter this way so I can get a signal on the air, then work toward improving individual modules individually. My current design supports FSK (frequency-shift keying), OOK (on-off keying), and adjustable power output, and synchronization with GPS time. 

Modules are all individually powered and use SMA connectors for inputs/outputs. By applying this [SOLID](https://www.youtube.com/watch?v=TMuno5RZNeE&t=15m50s) principle to hardware development, the system easy to refactor (because it reduces _coupling_) and individual units are easy to test (because they have a defined _interface_).

![](/graphics/builds/idea-modules.jpg)

* **oscillator** - Colpitts, 10.140 MHz crystal, no inductors (so SMT PCB is easy), outputs about 1 mW
* **oscillator oven** - uses two power 50 Ohm resistors to heat the _entire oscillator enclosure_ to above ambient room temperature. Thermistor is used for temperature sensation. By heating an entire metal-enclosed oscillator module, the entire oscillator circuitry (not just the crystal) becomes thermo-stable.
* **keyer** - based on an ATTiny2313 microcontroller. Keying is pulse-width modulated (PWM), and OOK output is also provided. Keyer has voltage combiner which has separate knobs to adjust center frequency and FSK width. Output is a single voltage for the oscillator, and a signal voltage for the amplifier. While it's currently configured for OOK, an analog voltage could be sent to the amplifier to control power output from software.
* **GPS** - To start messages at precise 10 minute intervals a GPS module (Neo-6M) is used. Rather than tap into the 1PPS signal line, I'm using the microcontroller to parse the serial data coming off the chip and begin transmitting at precise times.
* **amplifier** - currently an IRF510 final transistor with  74HC541 buffer pre-amplifier. The 74HC541's enable lines are controlled by the keyer to provide OOK. A potentiometer sets the power output. The current design has been tested to over 10W but this is an unnecessary (and undesirable) power level for QRSS.
* **frequency counter** - this is an independent project at the moment. I'm creating a USB frequency counter which will be useful for graphing frequency stability over time (and its relationship with temperature). I'll link to this once I have it tested/working.
* **antenna** - 30m dipole in my attic (Gainesville, Florida, USA)

### Photographs

This is a work in progress so the enclosures (if they even exist) are pretty crude. Additional photographs (and schematics) at various stages of the design process can be found in sub-folders of this repository. As individual modules are improved, these photographs will be updated.

![](/graphics/builds/2019-07-19-modules.jpg)
![](/graphics/builds/2019-07-19-keyer.jpg)
![](/graphics/builds/2019-07-19-oven.jpg)
![](/graphics/builds/2019-07-13-oscillator.jpg)


### Project goals

I experimented with QRSS on and off over the last decade, but all of my designs were pretty crude. Now that I have more experience, knowledge, and resources, I'd like to get back into the hobby.

There are a lot of crystal oven designs and chassis heater designs out there, and I'd like to get better at testing different designs. This requires precision temperature and frequency measurements and involves using a PC for data-logging and analysis. I'd like to get a better understanding of the temperature vs. frequency profile not just of crystals, but of the entire oscillator circuit. I'm interested in developing a SMT oscillator board with the temperature controller built-in (using SMT resistors to heat the PCB, temperature-stabilizing the entire oscillator rather than just the crystal).

I'd also like to improve QRSS Plus, and see about creating an open-source QRSS spectrograph like Argo now that I have experience developing Windows applications with C#. While my previous efforts (in Python) were interesting, I now have a strong appreciation for click-to-run software that works with minimal complexity.
