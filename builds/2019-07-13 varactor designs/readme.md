# Varactor FSK Designs for QRSS

For QRSS it's convenient to have 2 frequency shift adjustments: a coarse one to set frequency (~200 Hz), and a fine one for FSK (5 Hz). 

Most QRSS TX designs use a variable capacitor to set the coarse adjustment, but I don't like that design because it means you have to open your enclosure every time you want to shift frequency:

![](/graphics/diagrams/qrss-tx-aa1tj.jpg)

VK2ZAY shows a design that pulls one leg of a crystal using two varactors, the magnitude of each is controlled by a series capacitor:

![](/graphics/diagrams/varactor-tuning-vk2zay.jpg)

I tried building designs like this I find them very frustrating. 

Issue 1: coarse adjustment modifies FSK shift.
Every time I adjust the coarse voltage, the FSK distance changes. Consider a coarse adjustment resulting in a small capacitance: the fine FSK can produce a large shift. When the coarse produces a large capacitance, the fine FSK has little effect. If your fine FSK is a perfect 5Hz and you adjust the coarse frequency, your FSK is no longer 5Hz.

Issue 2: varactor diodes are too variable at low voltages. For stable operation it helps to run a varactor at several volts. I fix this by running the FSK voltage through a voltage divider _to VCC_ (not ground), and use the high-pulled fractional voltage on the varactor.

![](/graphics/diagrams/varactor-tuning-aj4vd-v1.PNG)

This is a design I came up with that seems to be treating me well so far. Fixed capacitors (optionally populated) set the frequency so the crystal oscillates in the QRSS band. The coarse adjustment moves the signal around the QRSS band (100Hz). The fine adjustment is pulled high (ideal for varactor stability and linearity) through a divider, making it fine. Adjust R4 to control how wide the FSK can be.