# QRSS Oven

### QRSS Oscillators Need Ovens
My oscillator looks stable on time scales of minutes, but on time scales of hours it is obvious that it wobbles as my central air conditioning turns on and off. I could go nuts with Styrofoam, but a crystal oven (or chassis heater) is warranted.

### Why I want a chassis heater (not a oven heater)
Some DIY QRSS ovens use resistors as the heater element and package the heater and temperature sensor against the crystal. While temperature stability of the crystal is good, I prefer to thermo-stabilize all frequency-determining components (capacitors and varactors) of the oscillator circuit. For this reason, I prefer a chassis heater.

### Eventually I want a SMT PCB heater
When I get an oscillator I like using SMT parts, I'll try adding the temperature sensor and heater directly on the board. This is ideal for small PCBs. It would be cool if the board could thermo-regulate itself, then the oscillator would just need insulation, and the heater would require very low power.

### Chassis Heater Design
* see [chassis heater designs and experiments](2019-07-15%20chassis%20heater) 

### Calculating power dissipation of a transistor heating a resistor

Consider a NPN with a collector tied to VCC (`Vcc`) and emitter dumping into a resistor (`R`) to ground. Let's say I'm driving a 50 Ohm resistor as a heater. How hot will the transistor get? Is my transistor beefy enough? To answer this I need to ***determine the peak power dissipation through a transistor into a resistive load.***

We should assume the current flowing through the resistor (`I`) will be the same as the current flowing through the transistor.

```c
// Ve is a function of R and I
Ve = R * I

// transistor voltage drop
Vce = Vcc - Ve

// power through the transistor
Pnpn = I * Vce

// substitute 
Pnpn = I * Vce
Pnpn = I * (Vcc - Ve)
Pnpn = I * (Vcc - (R * I))
Pnpn = (I * Vcc) - (I^2 * R)

// at peak power the first derivative of current is zero
Pnpn = (I * Vcc) - (I^2 * R)
d(Pnpn) = Vcc - (2 * I * R) = 0

// find the current through the resistor (= transistor) at peak power
Vcc - (2 * I * R) = 0
2 * I * R = VCC
Ipeak = VCC / (2 * R)

// substitute back into original equation
Pnpn = (Ipeak * Vcc) - (Ipeak^2 * R)
Pnpn = ((Vcc / (2 * R)) * Vcc) - ((Vcc / (2 * R))^2 * R)
Pnpn = (Vcc^2) / (2 * R) - (Vcc^2 * R) / (4 * R^2)
4 * R * Pnpn = 2 * Vcc^2 - Vcc^2
Pnpn = Vcc ^ 2 / (4 * R)
Pnpn = Vcc * Vcc / (4 * R)
Pnpn = Vcc * (I * R) / (4 * R)
Pnpn = Vcc * I / 4

// since the power through the resistor is
Pr = Vcc * I

// peak power through the NPN is 1/4 that through the resistor
Pnpn = Vcc * I / 4
```