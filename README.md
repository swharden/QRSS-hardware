# QRSS Hardware
This repository is a growing collection of notes and resources related to QRSS hardware (TX and RX) that Scott Harden (AJ4VD) found useful.

***This project is still new (as of July, 2019) and not really intended for public viewing yet. I am making it public so those curious about signals they see on the air can check out what I've been working on.***

## QRSS TX

### My QRSS Transmitter

The transmitter I'm working on consists of a few separate modules. Modules are individually powered (with DC barrel jacks, about 12V) and use SMA connectors for inputs/outputs. This design currently has FSK (frequency-shift keying), OOK (on-off keying), and adjustable power output. 

![](/graphics/builds/idea-modules.JPG)

* **oscillator** - Colpitts, 10.140 MHz crystal, no inductors (so SMT PCB is easy), outputs about 1 mW
* **oscillator oven** - uses two power 50 Ohm resistors to heat the _entire oscillator enclosure_ to above ambient room temperature. Thermistor is used for temperature sensation. By heating an entire metal-enclosed oscillator module, the entire oscillator circuitry (not just the crystal) becomes thermo-stable.
* **keyer** - based on an ATTiny2313 microcontroller, uses a Neo-6M GPS module to read the time so messages can restart every 10 minutes (even at :00). Keying is pulse-width modulated (PWM), and OOK output is also provided. Keyer has voltage combiner which has separate knobs to adjust center frequency and FSK width.
* **amplifier** - currently an IRF510 final transistor with  74HC541 buffer pre-amplifier. The 74HC541's enable lines are controlled by the keyer to provide OOK. A potentiometer sets the power output. The current design has been tested to over 10W but this is an unnecessary (and undesirable) power level for QRSS.
* **frequency counter** - this is an independent project at the moment. I'm creating a USB frequency counter which will be useful for graphing frequency stability over time (and its relationship with temperature).
* **antenna** - 30m dipole in my attic (Gainesville, Florida, USA).


![](/graphics/builds/2019-07-19-modules.jpg)
![](/graphics/builds/2019-07-19-keyer.jpg)
![](/graphics/builds/2019-07-19-oven.jpg)


### Design Goals

**Modularize everything:** By isolating functional units and giving them common adapters, a single unit can be developed without impacting the rest of the system. Get a baseline device on-line then optimize at the module level, testing how the whole system performs when a single module is modified or replaced.

**SMT everything:** This will occur module by module, but I'd love to design this entire setup to be very small using SMT components and easy to replicate using PCBs. I'm especially interested in designing an ovenized oscillator where the PCB itself is heated by SMT resistors, then integrating this circuit with the keyer. My goal is to thermo-regulate the entire oscillator circuit (not just the crystal).

**Document findings:** If a circuit diagram is meaningful, snap a picture of it (or create it in LTSpice or KiCad) to document it. If you source a useful part from Mouser or Digikey, document the part number.


## QRSS Resources
* [What is QRSS?](https://www.qsl.net/m0ayf/What-is-QRSS.html)
* Join the [_QRSS Knights_ mailing list](https://groups.io/g/qrssknights)