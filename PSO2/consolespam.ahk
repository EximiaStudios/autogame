; Author: Muazam Kamal
; File: consolespam.ahk
; Description:
;   Spam the button mashing console on TA quest.
;
; Keybind: "CTRL + E"
;
; Modify:
;   Remove the SetkeyDelay and/or SetBatchLines lines
;   if you have performance issue with the script.

SetkeyDelay, -1
SetBatchLines, -1

#IfWinActive ahk_exe pso2.exe
    $^e::
        While GetKeyState("e", "P")
        {
            Send,{e down}{e up}
        }
    return

    ; ^e up::
