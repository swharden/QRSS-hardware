# AJ4VD QRSS Spots

This page serves is a running log of recent notable QRSS spots. AJ4VD's QRSS signal is transmitted from Gainesville, Florida, USA. 

### 2019-07-20: new image stacking software
If the transmitter frequency is stable, transmissions start every 10 minutes, and grabbers are time-aligned to be every 10 minutes, multiple grabs can be averaged together to enhance signal-to-noise ratio. This is called _QRSS Image Stacking_. To simplify the process of making these images I created a new program: [QRSS Stitch and Stack](https://github.com/swharden/QRSS-Stich-and-Stack).

As an aside, the average of 13 images displayed in the screenshot looks great!

![](/spots/2019-07-20/qrss-stitch-and-stack-screenshot.jpg)

### 2019-07-20: started transmitting letters
I finished writing the microcontroller code to read the GPS time and only start transmissions when the minutes value ends with a zero. The signal now stacks nicely in 10-minute grabs. Now that GPS and the oven is working well I've started sending my callsign (AJ4VD).

Description | Image
---|---
First AJ4VD identifier spotted in Pensacola, FL (W4HBK) as I was actively adjusting the transmission length | ![](/spots/2019-07-20/W4HBK-first-callsign.jpg)
AJ4VD spotted in Greensboro, NC (WD4ELG) | ![](/spots/2019-07-20/WD4ELG-first-callsign.jpg)
5x frame stack (mean frame) from the WD4ELG grabber reveals the AJ4VD signal much better, and confirms the GPS timer is working well. | ![](/spots/2019-07-20/WD4ELG-5x-stack.jpg)


### 2019-07-18: OOK and FSK both work now
I got OOK and FSK working together (the S shape in the middle). I'm also now using a cude oven, but am not sure yet how stable frequency is over long timespans.

Description | Image
---|---
AJ4VD spotted in Pensacola, FL (W4HBK) | ![](/spots/2019-07-18/W4HBK-OOK.jpg)
AJ4VD spotted in Greensboro, NC (WD4ELG) | ![](/spots/2019-07-19/WD4ELG-Greensboro-NC-OOK.jpg)

### 2019-07-14: amplifier improvements

I improved my amplifier (now output 500mW) and am impressed how well my attic dipole is doing! It runs east/west so it radiates north/south. I saw my signal on a few more grabbers.

Description | Image
---|---
AJ4VD spotted in Northwood, OH (N8NJ) | ![](/spots/2019-07-14/N8NJ-Northwood-OH-USA.jpg)
AJ4VD spotted in Las Cruces, NM (WA5DJJ) | ![](/spots/2019-07-14/WA5DJJ-LasCruces-NM-USA.jpg)
AJ4VD spotted in Florida (WD4AH) with a nice airplane reflection in the middle | ![](/spots/2019-07-14/WD4AH-FL-USA.jpg)
AJ4VD spotted in Ontario, Canada | ![](/spots/2019-07-14/VA3ROM-Ontario-Canada.jpg)
AJ4VD spotted in Pensacola, FL (W4HBK) but this 8-hour grab reveals when my AC kicks on and off and demonstrates the necessity of ovenizing my setup. It's the signal around 10,139,980 Hz. | ![](/spots/2019-07-14/W4HBK-Pensacola-FL-USA-unstable.jpg)

### 2019-07-13: first QRSS transmissions (in a few years)

This week I strung-up a 30m dipole in the attic and built an oscillator, keyer, and amplifier (all as separate modules). I finished the amplifier this morning and spotted the signal (the rectangular squiggle) on two grabbers. I was running 3 PPV into 50 Ohm so I think that's about 22 mW.

Description | Image
---|---
AJ4VD spotted in Pensacola, FL (W4HBK) | ![](/spots/2019-07-13/W4HBK-Pensacola-FL-USA.jpg)
AJ4VD spotted in Greensboro, NC (WD4ELG) | ![](/spots/2019-07-13/WD4ELG-Greensboro-NC-USA.jpg)

### Historical QRSS Experiments
See [/history/](/history/) for a notes regarding AJ4VD's earlier QRSS experiments.
