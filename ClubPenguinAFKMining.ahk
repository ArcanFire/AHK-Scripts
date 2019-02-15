;HOW TO USE
;Mine in gold mining area, preferably empty server
;so you don't accidentally click on other penguins

Esc::
ToolTip [ClubPenguinAFKMining turned off]
Sleep 1000
ToolTip
ExitApp

NumpadMult::
ToolTip [ClubPenguinAFKMining initiated]
Sleep 500
ToolTip

;Global variables
CoordMode, Mouse, Client

Loop {
    Random ClickBoxX, 700, 1200
    Random ClickBoxY, 700, 940
    MouseClick, left, ClickBoxX, ClickBoxY      ;Clicks left of penguin
    Sleep 2500                                  ;Time to walk
    Send D                                      ;Dance
    Sleep 10000                                 ;Time for coins to appear
    Random ClickBoxX, 700, 1200
    Random ClickBoxY, 700, 940
    MouseClick, left, ClickBoxX, ClickBoxY      ;Clicks right of penguin
    Sleep 2500                                  ;Time to walk
    Send D                                      ;Dance
    Sleep 10000                                 ;Time for coins to appear
}