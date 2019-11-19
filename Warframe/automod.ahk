; DISCLAIMER, THIS SCRIPT IS NOT CONSISTANT.
; REFRAIN FROM USING.
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

autoMod()
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

    ; Drop amount by 4
    MouseMove, -340, 0, 5, R
    Sleep, 200
    MouseClick, L
    Sleep, 200
    MouseClick, L
    Sleep, 200
    MouseClick, L
    Sleep, 200
    MouseClick, L
    Sleep, 200

    ; Select Confirm
    MouseMove, 0, 50, 5, R
    Sleep, 50
    MouseClick, L
    Sleep, 300
}

#IfWinActive ahk_exe Warframe.x64.exe
    ; On Alt + /
    !/::

    autoMod()

    Send, {Up}
    Sleep, 100
    Send, {Up}

    autoMod()

    Send, {Up}
    Sleep, 100
    Send, {Down}

    autoMod()

    Send, {WheelDown}

    Send, {Up}