#define F_CPU 1000000UL
#include <avr/io.h>
#include <util/delay.h>

void setupPWM_8bit()
{
	DDRB |= (1 << PB2);					   // 8-bit PWM outputs on PB2
	TCCR0A = (1 << COM0A1) | (1 << WGM00); // phase correct PWM mode
	TCCR0B = (1 << CS00);				   // fastest (no prescaler)
	OCR0A = 128;						   // set PWM pulse width (duty)
}

void setupPWM_16bit()
{
	DDRB |= (1 << PB3);		 // 16-bit PWM output on PB3
	TCCR1A |= (1 << COM1A1); // Clear OC1A/OC1B on Compare Match when upcounting
	TCCR1B |= (1 << WGM13);  // enable "PWM, phase and frequency correct"
	TCCR1B |= (1 << CS10);   // enable output, fastest clock (no prescaling)
	ICR1 = 10000;			 // set the top value (up to 2^16)
	OCR1A = 0;				 // set PWM pulse width (duty)
}

void wait(char seconds)
{
	while (seconds-- > 0)
		_delay_ms(1000);
}

void squaresForever(){
	int pwmTop = 200;
	int pwmBot = 100;
	for (;;)
	{
		OCR0A = pwmTop;
		wait(1);
		OCR0A = pwmBot;
		wait(1);
	}
}

void trianglesForever(){
	int pwmTop = 200;
	int pwmBot = 100;
	for (;;)
	{
		for (OCR0A = pwmTop; OCR0A > pwmBot; OCR0A--)
		{
			_delay_ms(50);
		}
		wait(10);
		for (OCR0A = pwmBot; OCR0A < pwmTop; OCR0A++)
		{
			_delay_ms(50);
		}
		wait(10);
	}
}

int main(void)
{
	setupPWM_8bit();
	//squaresForever();
	trianglesForever();
}
