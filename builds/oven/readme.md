# QRSS Oven

### QRSS Oscillators Need Ovens
My oscillator looks stable on time scales of minutes, but on time scales of hours it is obvious that it wobbles as my central air conditioning turns on and off. I could go nuts with Styrofoam, but a crystal oven (or chassis heater) is warranted.

### Why I want a chassis heater (not a oven heater)
Some DIY QRSS ovens use resistors as the heater element and package the heater and temperature sensor against the crystal. While temperature stability of the crystal is good, I prefer to thermo-stabilize all frequency-determining components (capacitors and varactors) of the oscillator circuit. For this reason, I prefer a chassis heater.

### Eventually I want a SMT PCB heater
When I get an oscillator I like using SMT parts, I'll try adding the temperature sensor and heater directly on the board. This is ideal for small PCBs. It would be cool if the board could thermo-regulate itself, then the oscillator would just need insulation, and the heater would require very low power.