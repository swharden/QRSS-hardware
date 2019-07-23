# QRSS Amplifier

## Quick and dirty amplifier

I built a crude amplifier just to get on the air. It outputs about 1W and uses an IRF510 final stage (class C). It's bad. I won't even show the schematic. I'll design this formally and post design/schematics here

### Class C Notes

* Inductor values for 50 Ohms impedance at 10.14 MHz
  * 13 turns on a T50-2 is 0.83 uH (52.8 Ohms)
  * 16 turns on a T37-6 is 0.77 uH (48.9 Ohms)
* A SMT [82 uH (300 mA) inductor](https://www.mouser.com/ProductDetail/Wurth-Elektronik/7447669182?qs=sGAEpiMZZMsg%252By3WlYCkU9du5C09XLa6DQHwJKVZZ3I%3D) 4532 ($0.39) could be nice
* ~~[IRF510](https://www.mouser.com/ProductDetail/Vishay-Siliconix/IRF510SPBF?qs=sGAEpiMZZMshyDBzk1%2FWi1F3z9PgzPBnwTk%2FKoweXds%3D) TO-263-3 ($1.23)~~
  * Use smaller transistors/FETs for finals. 
  * IRF510 has high gate capacitance and is has more power than QRSS needs.

### Lowpass filter

* quick and dirty 3-pole LPF according to the [Chebyshev Calculator](http://www.calculatoredge.com/electronics/ch%20pi%20low%20pass.htm)
  * C1 and C2 = 200 pF
  * L1 = 761 nH (16t on T37-6)
