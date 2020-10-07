; Author: Muazam Kamal
; File: arkuma.ahk
; Description:
;   Spam enter key for Arkuma casino
;
; Keybind: 
;   "CTRL + Alt + F" to toggle
;
; Info:
;   A high-pitched beep on activate to ensure activation.
;   A lower-pitched beep on deactivate to ensure deactivation.

#MaxThreadsPerHotkey, 2
loopStatus := False

$^!f::
    loopStatus := !loopStatus

    if (loopStatus) {
        SoundBeep, 800
    } else {
        SoundBeep
    }

    while (loopStatus) {
        ControlSend, , {Enter}, Phantasy Star Online 2
        Sleep 1000
    }

return