; Author: Muazam Kamal
; File: dealornodeal.ahk
; Description:
;   Hold the T key for the specified amount of time.
;
; Keybind: "CTRL + T"
;
; Modify:
;   Modify the sleep value (in ms), to adjust
;   how long the key will be pressed.

#IfWinActive ahk_exe Warframe.x64.exe
    $^t::
        Send, {t down}

        Sleep, 1000 ; Hold the key for 1000ms or 1 second

        Send, {t up}