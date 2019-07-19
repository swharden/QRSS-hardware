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
	txOFF();
	ramp(pwmLow, 0);
	waitSec(3);
	txON();
}

void sendDash()
{
	ramp(pwmHigh, rampUpSpeed);
	waitSec(6);
	txOFF();
	ramp(pwmLow, 0);
	waitSec(3);
	txON();
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

void testOOK()
{
	int repeats = 5;
	while (repeats--)
	{
		txON();
		waitSec(1);
		txOFF();
		waitSec(1);
	}
}

void testFSK()
{
	int repeats = 5;
	while (repeats--)
	{
		OCR0A = pwmHigh;
		waitSec(1);
		OCR0A = pwmLow;
		waitSec(1);
	}
}

void txON()
{
	PORTD &= ~(1 << PD5);
}

void txOFF()
{
	PORTD |= (1 << PD5);
}

void testDitsForever()
{
	for (;;)
	{
		
		txON();
		sendPreLetter();
		sendDot();
		txOFF();
		
		waitSec(30);
	}
}

void sendCallsignForever()
{
	for (;;)
	{

		txOFF();
		waitSec(20);
		txON();

		sendCallsign();

		txOFF();
		waitSec(20);
		txON();
	}
}

int main(void)
{
	setupPWM_8bit();

	testOOK();
	testFSK();

	testDitsForever();
	//sendCallsignForever();
}
