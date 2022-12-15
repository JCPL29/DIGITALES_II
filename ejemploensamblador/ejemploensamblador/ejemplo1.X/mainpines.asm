
#include "p16F887.inc"    
; CONFIG1
; __config 0x28D5
 __CONFIG _CONFIG1, _FOSC_INTRC_CLKOUT & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOREN_OFF & _IESO_OFF & _FCMEN_ON & _LVP_OFF
; CONFIG2
; __config 0x3FFF
 __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF

  LIST p=16F887
   
N EQU 0x40
cont1 EQU 0x20
cont2 EQU 0x21
cont3 EQU 0x22
var EQU 0x23
varEfecto EQU 0x24
 
    ORG	0x00
    GOTO INICIO
  
INICIO
    BCF STATUS,RP0   ;RP0 = 0
    BCF STATUS,RP1  ;RP1 = 0
    CLRF PORTA	;PORTA = 0
    CLRF PORTD ;PORT SECUENCIA LED
    ;MOVLW B'0000000'  ;
    ;MOVWF PORTA
    BSF STATUS, RP0 ;RP0 = 1
    CLRF TRISA
    CLRF TRISD	;SECUENCIA SALIDA
    BSF STATUS,RP1
    CLRF ANSEL
    BCF STATUS,RP0  ;BANK O RP1=0 RP0=0
    BCF STATUS,RP1
    BSF TRISB,0
    
    
    BOTON
    BTFSC PORTB,0
    GOTO BOTON
    CALL RETARDO
    BTFSC PORTB,0
    GOTO BOTON
    GOTO EFECTO
    
    EFECTO
    INCF varEfecto
    
    
    

    MOVLW 0x01
    MOVWF PORTD

    
    
    LOOP
    
    MOVLW 16
    MOVWF var
    
    
SECUENCIA1
    RLF PORTD
    CALL RETARDO
    DECFSZ var,1
    GOTO SECUENCIA1
   
    
MOVLW 16
MOVWF var
SECUENCIA2
    RRF PORTD
    CALL RETARDO
    DECFSZ var,1
    GOTO SECUENCIA2
    
MOVLW 0xF0
MOVWF PORTD
    

MOVLW 16
MOVWF var    
SECUENCIA4
    SWAPF PORTD
    CALL RETARDO
    DECFSZ var,1
    GOTO SECUENCIA4
    
    

MOVLW 0xCC
MOVWF PORTD
    
MOVLW 16
MOVWF var

SECUENCIA5
    SWAPF PORTD
    RRF PORTD
    CALL RETARDO
    DECFSZ var,1
    GOTO SECUENCIA5
 
    

    
RETARDO
    MOVLW N
    MOVWF cont1
    
REP_1
    MOVLW N
    MOVWF cont2
    
REP_2
    DECFSZ cont2,1
    GOTO REP_2
    DECFSZ cont1,1
    GOTO REP_1
    RETURN
   
    END
    
    
    ;BSF PORTD,0
 ;   GOTO SECUENCIA2
    
;ENC_LED
    ;BSF PORTA,0	;RA0 = 1
    ;CALL RETARDO
    ;BCF PORTA,0
    ;CALL RETARDO
    ;GOTO ENC_LED
    

;SECUENCIA2
 ;   CALL RETARDO
  ;  ;RLF PORTD,1
  ;  MOVF cont3,0
  ;  CALL SEC_LOOKUP
  ;  MOVWF PORTD
  ;  INCF cont3,1
  ;  GOTO SECUENCIA2
    
    
;RETARDO
;    MOVLW N
;    MOVWF cont1
    
;REP_1
;    MOVLW N
;    MOVWF cont2
    
;REP_2
;    DECFSZ cont2,1
;    GOTO REP_2
;    DECFSZ cont1,1
;    GOTO REP_1
;    RETURN

; SEC_LOOKUP 
;	ADDWF PCL,f
;	RETLW 01h ; //Hex value to display the number 0. 0x40
;	RETLW 02h ; //Hex value to display the number 1. 0x79
;	RETLW 04h ; //Hex value to display the number 2.
;	RETLW 08h ; //Hex value to display the number 3.
;	RETLW 10h ; //Hex value to display the number 4.
;	RETLW 20h ; //Hex value to display the number 5.
;	RETLW 40h ; //Hex value to display the number 6.
;	RETLW 80h ; //Hex value to display the number 7.
;	RETURN
    
    
    ;END


