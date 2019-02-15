SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


loop {
    test:
        NumpadMult::
        ImageSearch, outx, outy, 0, 0, A_ScreenWidth, A_ScreenHeight, Compass.png

        Random, randomX, 10, 30
        Random, randomY, 10, 30

        if (ErrorLevel = 0) {
            MouseMove, outx + randomX, outy + randomY
        }


        
    test2:
        NumpadSub::
        ImageSearch, outx, outy, 0, 0, A_ScreenWidth, A_ScreenHeight, Compass.png

        Random, randomX, 10, 30
        Random, randomY, 10, 30

        if (ErrorLevel = 0) {
            MouseMove, outx + randomX, outy + randomY
        }
    return
}

Esc::ExitApp