Esc::
ToolTip [RS3Bandits turned off]
Sleep 500
ToolTip
ExitApp

NumpadMult::
ToolTip [RS3Bandits Initiated]
Sleep 1000
ToolTip

Loop {
    Random sleepTimer, 300, 800 ; Holds button for this amount of time
    Send {/ down}
    Sleep sleepTimer ; The time to 'hold' the button
    Send {/ up}
    Random specialTimer, 30000, 120000 ; Waits 0.5 minutes - 2 minutes before repeating
    Sleep specialTimer
}