; Author: Slideway
; Modified: Muazam Kamal
; File: WASD.ahk
; Description:
;   Rebind WASD to move the camera (as arrow keys)
;   Follows according to CapsLock status,
;   If CapsLock is ON, script is ON, and vice-versa.
;
; Keybind:
;   W, A, S, D, rebinded.
;   Caps Lock to toggle script.
;
; Info:
;   Disabled by default (WASD working as usual).
;   High pitched beep on enable.
;   Low pitched beep on disable.

#IfWinActive ahk_exe EternalReturn.exe
    Suspend

    w::Up
    a::Left
    s::Down
    d::Right

    ~CapsLock::
    Suspend, Off

    ; Only enabled when CapsLock is ON.
    if (GetKeyState("Capslock", "T")) {
        SoundBeep, 800
        Suspend, Off
    } else {
        SoundBeep
        Suspend, On
    }

    return
