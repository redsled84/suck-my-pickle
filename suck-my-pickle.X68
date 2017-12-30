*-----------------------------------------------------------
* Title      : suck-my-pickle
* Written by : Lucas Black
* Date       : 12.29.2017
* Description: Outputs 'SUCK MY PICKLE' to the console
*-----------------------------------------------------------

    ORG    $1000
START:
    move    #$45,   -(sp)     ; 'e'
    move    #$4C,   -(sp)     ; 'l'
    move    #$4B,   -(sp)     ; 'k'
    move    #$43,   -(sp)     ; 'c'
    move    #$49,   -(sp)     ; 'i'
    move    #$50,   -(sp)     ; 'p'
    move    #$20,   -(sp)     ; ' '
    move    #$59,   -(sp)     ; 'y'
    move    #$4D,   -(sp)     ; 'm'
    move    #$20,   -(sp)     ; ' '
    move    #$4B,   -(sp)     ; 'k'
    move    #$43,   -(sp)     ; 'c'
    move    #$55,   -(sp)     ; 'u'
    move    #$53,   -(sp)     ; 's'

    jsr     output
    
output:
    move    #6,             d0
    move.l  #$00FFFFE4,     a7
    
    for d2 = #0 to #26 by #2 do.s
        move   (sp)+, d1
        trap   #15
    endf
    
    
    
    SIMHALT
    END    START
*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~
