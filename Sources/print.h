/*
 * print.h
 *
 *  Created on: 2017Äê8ÔÂ22ÈÕ
 *      Author: xiuwe
 */

#ifndef SOURCES_DEV_PRINT_H_
#define SOURCES_DEV_PRINT_H_

#include "cpu.h"
#include <stdarg.h>
#include "Blue.h"
#include "string.h"

void UARTprintf(const uint8_t *pcString, ...);

void printArray(uint8_t *data, uint8_t len);

#define MY_DEBUG

#ifdef MY_DEBUG
#define MY_DEBUGF(message) do { \
								{UARTprintf message;} \
							 } while(0)
#else
#define MY_DEBUGF(message)
#endif /* PLC_DEBUG */




#endif /* SOURCES_DEV_PRINT_H_ */
