; Author: Muazam Kamal
; File: dash.ahk
; Description:
;   Perform the operator dash forward and backward,
;   relative to the facing direction.
;
; Keybind: "`" or "CTRL + `" (backtick)
;
; Modify:
;   Modify the sleep line to add or lower delay
;   between the forward dash and backward dash.

#IfWinActive ahk_exe Warframe.x64.exe
    $`::
    $^`::
        ; Hold ctrl down
        Send, {Ctrl down}

        ; Forward dash
        Send, {Space}

        ; Lower the sleep time if needed
        Sleep, 400

        ; Backward dash
        Send, {s down}{Space}
        Send, {s up}
