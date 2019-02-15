#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.

;README/SETUP
;Start game client fully zoomed in, Old School layout,
;Iron ore in your hotbar bound to 'Z', Compass face north
;Stand in the middle of the three ores

Esc::ExitApp

>^NumpadSub::

Sleep 500
CoordMode, Mouse, Client
SetMouseDelay, 40

Loop {
    Loop 9 {
        ;Pick random positions on each ore each loop
        Random IronRightX, 915, 955
        Random IronRightY, 225, 250
        
        ;Moving between Right and Middle
        
        
        Random IronMiddleX, 805, 865
        Random IronMiddleY, 275, 300
        
        ;Moving between Middle and Left
        
        Random IronLeftX, 735, 780 
        Random IronLeftY, 210, 235
        
        ;Moving between Left and Right
        
        ;Mine the right ore
        MouseMove, IronRightX, IronRightY
        
        Random SleepIronRightBeforeClick, 500, 1500        
        Sleep SleepIronRightBeforeClick
        Click
        
        Sleep BetweenClickOne, 
        
        ;Didn't use a global sleep because all three sleeps would then be the same 'random' value each loop
        Random SleepBetweenRightMiddle, 2000, 4000
        Sleep SleepBetweenRightMiddle
        
        ;Mine the middle ore
        MouseMove, IronMiddleX, IronMiddleY
        
        Random SleepIronMiddleBeforeClick, 500, 1500        
        Sleep SleepIronMiddleBeforeClick
        Click
        
        ;Didn't use a global sleep because all three sleeps would then be the same 'random' value each loop
        Random SleepBetweenMiddleLeft, 2000, 4000
        Sleep SleepBetweenMiddleLeft
        
        ;Mine the left ore
        MouseMove, IronLeftX, IronLeftY
        Random SleepIronLeftBeforeClick, 500, 1500        
        Sleep SleepIronLeftBeforeClick
        Click
        
        ;Didn't use a global sleep because all three sleeps would then be the same 'random' value each loop
        Random SleepBetweenLeftRight, 2000, 4000
        Sleep SleepBetweenLeftRight
        
        Random SleepBeforeRestartLoop, 2000, 4000
        Sleep SleepBeforeRestartLoop
    }
    
    Send {Z down}
    Random SleepHoldingZ, 5800, 6500
    Sleep SleepHoldingZ
    Send {Z up}
}