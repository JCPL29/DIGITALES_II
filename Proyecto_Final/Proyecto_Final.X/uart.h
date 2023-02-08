/* 
 * File:   uart.h
 * Author: camil
 *
 * Created on 7 de febrero de 2023, 12:16 PM
 */

#ifndef UART_H
#define	UART_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <pic16f887.h>
#include <xc.h>
void USART_Init(long);
void USART_TxChar(char);
void USART_SendString(const char *);
char USART_RxChar();

#define F_CPU 8000000/64
//#define Baud_value(baud_rate) (((float)(F_CPU)/(float)baud_rate)-1)
#define Baud_value (((float)(F_CPU)/(float)baud_rate)-1)


#ifdef	__cplusplus
}
#endif

#endif	/* UART_H */

