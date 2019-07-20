#define F_CPU 8000000UL
#define USART_BAUDRATE 9600
#define UBRR_VALUE (((F_CPU / (USART_BAUDRATE * 16UL))) - 1)

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

void setupPWM_8bit()
{
	DDRB |= (1 << PB2);					   // 8-bit PWM outputs on PB2
	TCCR0A = (1 << COM0A1) | (1 << WGM00); // phase correct PWM mode
	TCCR0B = (1 << CS00);				   // fastest (no prescaler)
	OCR0A = 128;						   // set PWM pulse width (duty)
}

void setupUSART()
{

	UBRRL = UBRR_VALUE;					  // set baud rate
	UCSRB |= (1 << RXCIE);				  // RX Complete Interrupt Enable
	UCSRB |= (1 << RXEN);				  // RX Enable
	UCSRC |= (1 << UCSZ1) | (1 << UCSZ0); // 8-bit data
	sei();								  // enable global interrupts
}

volatile char receivedBytes[20];
volatile char receivedByteIndex;
volatile char lastSeenMinuteDigit = 'x';

ISR(USART_RX_vect) // incoming serial byte
{
	char thisChar = UDR;

	if (thisChar == '$')
		receivedByteIndex = 0;

	if (receivedByteIndex < sizeof(receivedBytes))
		receivedBytes[receivedByteIndex++] = thisChar;
	else
		processFullBuffer();
}

void processFullBuffer()
{
	// look for a message like:
	//   $GPRMC,184130.00,...
	// which means time:
	//   18:41:30.00
	// and note the digit in the tens place

	uint8_t indexMinutesTens = 9;
	uint8_t indexMinutesOnes = 10;
	uint8_t indexSecondsTens = 11;
	uint8_t indexSecondsOnes = 12;

	// see if the line starts with "$GPRMC"
	if ((receivedBytes[0] == '$') && (receivedBytes[5] == 'C'))
		lastSeenMinuteDigit = receivedBytes[indexMinutesOnes];

	receivedByteIndex = 0; // reset the buffer
}

void waitForNextFiveMinuteMark()
{
	for (;;)
	{
		if (lastSeenMinuteDigit == '0')
			return;
		if (lastSeenMinuteDigit == '5')
			return;
	}
}

void waitForNextTenMinuteMark()
{
	for (;;)
	{
		if (lastSeenMinuteDigit == '0')
			return;
	}
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

int dashSeconds = 9;

void sendDot()
{
	ramp(pwmHigh, rampUpSpeed);
	waitSec(dashSeconds);
	txOFF();
	ramp(pwmLow, 0);
	waitSec(dashSeconds);
	txON();
}

void sendDash()
{
	ramp(pwmHigh, rampUpSpeed);
	waitSec(dashSeconds * 2);
	txOFF();
	ramp(pwmLow, 0);
	waitSec(dashSeconds);
	txON();
}

void sendPreLetter()
{
	OCR0A = pwmLow;
	waitSec(dashSeconds);
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
		waitForNextTenMinuteMark();
		txON();
		sendCallsign();
		txOFF();
	}
}

int main(void)
{
	setupPWM_8bit();
	setupUSART();

	//testFSK();
	//testOOK();
	
	txOFF();

	//testDitsForever();
	sendCallsignForever();
}
