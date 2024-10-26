; DISCLAIMER, THIS SCRIPT MIGHT NOT BE CONSISTANT ON LOWER FPS.
; BEWARE.
;
; Author: Muazam Kamal
; File: automod.ahk
; Description:
;   Auto select specified amount of mods.
;
; Keybind: "ALT + /"

#IfWinActive ahk_exe Code.exe
    ~^s::
    ToolTip, Reload
    Sleep, 1000
    ToolTip
    Reload
    return

SendWithDelay(input, delay, repeatCount) {
    Loop, %repeatCount%
    {
        ; Send key down
        Send, % "{" . input . " down}"
        Sleep, delay
        ; Send key up
        Send, % "{" . input . " up}"
        Sleep, delay
    }
}

MouseLeftClickWithDelay(delay, repeatCount) {
    Loop, %repeatCount%
    {
        MouseClick, L
        Sleep, delay
    }
}

; Initial setup, ensure cursor is at the first mod regardless where it started at
setup()
{
    ; Start at profile icon
    SendWithDelay("Left", 50, 10)
    SendWithDelay("Up", 50, 5)
    SendWithDelay("Left", 50, 5)

    ; Get to first mod
    SendWithDelay("Down", 50, 4)
}

; Start main logic to select a mod, max, then decrease by count (default 5)
autoMod(decreaseCount = 5)
{
    Sleep, 100

    ; Select mod
    MouseClick, L
    Sleep, 200

    ; Select max amount
    MouseMove, 110, 0 , 5, R
    Sleep, 100
    MouseClick, L
    Sleep, 100

    ; Drop amount by 'decreaseCount', default to 5
    MouseMove, -340, 0, 5, R
    Sleep, 200
    MouseLeftClickWithDelay(100, decreaseCount)

    ; Select Confirm
    MouseMove, 0, 50, 5, R
    Sleep, 50
    MouseClick, L
    Sleep, 300
}

; Select all three rows in a column
selectColumn()
{
    ; Select top row mod
    autoMod()

    ; Select middle row mod
    SendWithDelay("Left", 50, 2)
    SendWithDelay("Up", 50, 1)
    autoMod()

    ; Select bottom row mod
    SendWithDelay("Left", 50, 2)
    autoMod()

    ; Go back to top row, and scroll to next column
    SendWithDelay("Left", 50, 2)
    SendWithDelay("Up", 50, 2)
    Send, {WheelDown}
}

#IfWinActive ahk_exe Warframe.x64.exe
    ; On Alt + /
    !/::

    setup()

    selectColumn()
