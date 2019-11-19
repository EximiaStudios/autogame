; Author: Muazam Kamal
; File: spin2win.ahk
; Description:
;   Rebind the MOUSE4 to perform melee
;   slide attack
;
; Keybind: "MOUSE4"

#IfWinActive ahk_exe Warframe.x64.exe
    $XButton1::
        Send, ^e