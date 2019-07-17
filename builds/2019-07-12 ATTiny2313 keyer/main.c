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

void waitSec(int seconds)
{
	while (seconds--)
		_delay_ms(1000);
}

void waitMilliSec(int milliseconds)
{
	while (milliseconds--)
		_delay_ms(1);
}

int pwmHigh = 200;
int pwmLow = 100;
int rampUpSpeed = 50;
int rampDownSpeed = 2;

void ramp(int target, int speed)
{
	if (OCR0A < target)
	{
		while (OCR0A < target)
		{
			OCR0A += 1;
			waitMilliSec(speed);
		}
	}
	else if (OCR0A > target)
	{
		while (OCR0A > target)
		{
			OCR0A -= 1;
			waitMilliSec(speed);
		}
	}
}

void sendDot()
{
	ramp(pwmHigh, rampUpSpeed);
	waitSec(3);
	ramp(pwmLow, 0);
}

void sendDash()
{
	ramp(pwmHigh, rampUpSpeed);
	waitSec(6);
	ramp(pwmLow, 0);
}

void sendPreLetter()
{
	OCR0A = pwmLow;
	waitSec(3);
}

void sendCallsign()
{
	// A
	sendPreLetter();
	sendDot();
	sendDash();
	
	// J
	sendPreLetter();
	sendDot();
	sendDash();
	sendDash();
	sendDash();
	
	// 4
	sendPreLetter();
	sendDot();
	sendDot();
	sendDot();
	sendDot();
	sendDash();
	
	// V
	sendPreLetter();
	sendDot();
	sendDot();
	sendDot();
	sendDash();
	
	// D
	sendPreLetter();
	sendDash();
	sendDot();
	sendDot();
}

int main(void)
{
	setupPWM_8bit();

	for (;;)
	{
		waitSec(10);
		sendCallsign();
		waitSec(50);
	}
}
