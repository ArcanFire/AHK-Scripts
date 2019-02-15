Esc::
ToolTip [MinecraftAntiAFKWalker turned off]
Sleep 500
ToolTip
ExitApp

NumpadMult::
ToolTip [MinecraftAntiAFKWalker Initiated]
Sleep 1000
ToolTip
Loop {
    Send {W down}
    Sleep 2000
    Send {W up}
    Sleep 1000
    Send {S down}
    Sleep 2000
    Send {S up}
    Sleep 30000
}