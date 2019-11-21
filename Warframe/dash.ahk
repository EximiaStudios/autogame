; Author: Muazam Kamal
; File: dash.ahk
; Description:
;   Perform the operator dash forward and backward,
;   relative to the facing direction.
;
;   Void mode will stay active after script execution,
;   press CTRL again to get out of void mode. What this mean
;   is that the script is constantly sending CTRL keypress
;   after the execution, resulting in other keys to register as
;   CTRL + "key", blocking their innate actions.
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
