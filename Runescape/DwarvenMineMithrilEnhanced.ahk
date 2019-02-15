;README
;Zoom out fully.

Esc::ExitApp

NumpadMult::
;Globals
Sleep 500
CoordMode, Mouse, Client

;Compass click
Random compassPosX, 1670, 1690
Random compassPosY, 25, 40
MouseClick, left, compassPosX, compassPosY

;Wait after hitting compass
Random compassWait, 1000, 3000
Sleep compassWait

Loop {
    Loop 2 {
        ;First Mithril
        Random firstMithrilPosX, 1198, 1210
        Random firstMithrilPosY, 486, 498
        MouseClick, left, firstMithrilPosX, firstMithrilPosY

        Loop 3 {
            if (ImageSearch, imageLocX, imageLocY, 0, 0, A_ScreenWidth, A_ScreenHeight, MiningEXPCounter.png) {
                if (ErrorLevel = 0) {
                    Goto, test
                }
            }
        }
        
        ;Random sleepBetweenOre1, 15000, 30000
        ;Sleep sleepBetweenOre1

        ;Second Mithril
        test:
        Random secondMithrilPosX, 1090, 1110
        Random secondMithrilPosY, 490, 500
        MouseClick, left, secondMithrilPosX, secondMithrilPosY

        Random sleepBetweenOre2, 15000, 30000
        Sleep sleepBetweenOre2

        ;Third Mithril
        Random thirdMithrilPosX, 1000, 1020
        Random thirdMithrilPosY, 485, 500
        MouseClick, left, thirdMithrilPosX, thirdMithrilPosY

        Random sleepBetweenOre3, 15000, 30000
        Sleep sleepBetweenOre3

        ;Fourth Mithril
        Random fourthMithrilPosX, 850, 870
        random fourthMithrilPosY, 530, 540
        MouseClick, left, fourthMithrilPosX, fourthMithrilPosY

        Random sleepBetweenOre4, 15000, 30000
        Sleep sleepBetweenOre4
        
        ;Reset to first
        Random resetToFirstPosX1, 695, 700
        Random resetToFirstPosY1, 660, 665
        MouseClick, left, resetToFirstPosX1, resetToFirstPosY1
        
        Random resetToFirstSleep1, 4000, 5000
        Sleep resetToFirstSleep1
        
        Random resetToFirstPosX2, 825, 830
        Random resetToFirstPosY2, 560, 565
        MouseClick, left, resetToFirstPosX2, resetToFirstPosY2
        
        Random sleepBeforeRestart, 2000, 4000
        Sleep sleepBeforeRestart
        
        ;Waiting for all ores to respawn
        Random endSleep, 150000, 180000
        Sleep endSleep
    }
    
    ;Bank deposit
    Random depositBoxPosX, 995, 1020
    Random depositBoxPosY, 385, 440
    MouseClick, left, depositBoxPosX, depositBoxPosY

    ;Time to run to deposit box
    Random depositBoxRun, 4000, 6000
    Sleep depositBoxRun

    Random bankDepositPosX, 995, 1025
    Random bankDepositPosY, 605, 620
    MouseClick, left, bankDepositPosX, bankDepositPosY

    Random clickExitBankSleep, 1000, 3000
    Sleep clickExitBankSleep
    MouseClick, left, 1135, 380

    Random runToResetSleep, 1000, 3000
    Sleep runToResetSleep

    ;Reset location
    Random resetLocationPosX, 805, 810
    Random resetLocationPosY, 645, 650
    MouseClick, left, resetLocationPosX, resetLocationPosY

    ;Waiting for all ores to respawn
    Random endSleep, 150000, 180000
    Sleep endSleep
}