/*
 * TEMP.c
 *
 *  Created on: 11 Sep 2023
 *      Author: george yaccoup
 */
#include <avr/io.h>
#include "Lib/Macros.h"
#include "Lib/stdTypes.h"
void Timer0_inti()
{

	SETBIT(TCCR0, WGM01);
	SETBIT(TCCR0, WGM00);

	SETBIT(TCCR0, COM01);
	SETBIT(TCCR0, COM00);

	SETBIT(TCCR0, COM00);
}
void set_duty_Ciycle(float copy_Floatduty) {
	OCR0 = 255 * copy_Floatduty;
}
