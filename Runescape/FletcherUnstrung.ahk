Esc::
ToolTip [Flether turned off]
Sleep 500
ToolTip
ExitApp

NumpadMult::
ToolTip [Fletcher Initiated]
Sleep 1000
ToolTip

loop {
    Random mouseClickOpenBank, 200, 500     ; Holds button between these times (ms)
    Send {LButton down}
    Sleep mouseClickOpenBank                ; Time to 'hold' mouse click
    Send {LButton up}
    
    Random openingUI, 1500, 3500            ; Take into account for lag opening any UI
    Random buttonPushDuration, 200, 500     ; Time to push present button down for
    Sleep openingUI
    Send {Numpad2 down}
    Sleep buttonPushDuration
    Send {Numpad2 up}
    
    Sleep openingUI                         ; Waiting for UI to open again
    Send {NumpadDot down}
    Sleep buttonPushDuration
    Send {NumpadDot up}
    
    Sleep OpeningUI
    Send {Space down}
    Sleep buttonPushDuration
    Send {Space up}
    
    Random fletchDuration, 18000, 21000     ; Player is fletching
    Sleep fletchDuration
}