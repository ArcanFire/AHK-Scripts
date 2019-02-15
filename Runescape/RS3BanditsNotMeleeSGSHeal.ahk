;SGS Special set as Numpad Div.
;SGS on V
;Staff/Bow on C

Esc::
ToolTip [RS3BanditsNotMeleeSGSHeal turned off]
Sleep 500
ToolTip
ExitApp

NumpadMult::
ToolTip [RS3BanditsNotMeleeSGSHeal initiated]
Sleep 1000
ToolTip

Loop {
    Random specialTimer, 30000, 100000 ; Waits 0.5 minutes - 1 minute 40 seconds before repeating
    Random buttonPressTimer, 300, 800 ; Holds button for this amount of time
    Random buttonPressTimer2, 300, 800 ; Because it's not a bad idea to have more random variables.
    Random buttonPressTimer3, 300, 800
    Random swapSleepTimer, 1000, 2000 ; Time to wait between swapping weapons again.
    Random swapSleepTimer2, 2000, 3000
    
    Send {V down}
    Sleep buttonPressTimer
    Send {V up}
    
    Sleep swapSleepTimer
    
    Send {/ down}
    Sleep buttonPressTimer2 ; The time to 'hold' the button
    Send {/ up}
    
    Sleep swapSleepTimer2
    
    Send {C down}
    Sleep buttonPressTimer3
    Send {C up}
    
    Sleep specialTimer
}