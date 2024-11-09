#Requires AutoHotkey v2.0
#SingleInstance Force

; Toggle state variable
global isNavigationMode := false

; Function to update keyboard LEDs and show tooltip feedback
UpdateLED() {
    global isNavigationMode  ; Ensure the global variable is recognized here
    if isNavigationMode {
        SetCapsLockState("On")
        ToolTip("Navigation Mode ON")  ; Tooltip for activation
    } else {
        SetCapsLockState("Off")
        ToolTip("Navigation Mode OFF") ; Tooltip for deactivation
    }
    SetTimer(ClearToolTip, 1000) ; Set timer to clear tooltip after 1 second
}

ClearToolTip() {
    ToolTip("") ; Clear the tooltip
}

; Caps Lock key to toggle navigation mode
CapsLock:: {
    global isNavigationMode  ; Ensure the global variable is recognized here
    isNavigationMode := !isNavigationMode
    UpdateLED()
}

; Map h/j/k/l to arrow keys in navigation mode, with optional Shift for text selection
*h:: {
    global isNavigationMode
    if isNavigationMode {
        if GetKeyState("Shift", "P") { ; Check if Shift is held down
            Send("+{Left}")
        } else {
            Send("{Left}")
        }
    } else {
        if GetKeyState("Shift", "P") {
            Send("H")
        } else {
            Send("h")
        }
    }
    return
}

*j:: {
    global isNavigationMode
    if isNavigationMode {
        if GetKeyState("Shift", "P") { ; Check if Shift is held down
            Send("+{Down}")
        } else {
            Send("{Down}")
        }
    } else {
        if GetKeyState("Shift", "P") {
            Send("J")
        } else {
            Send("j")
        }
    }
    return
}

*k:: {
    global isNavigationMode
    if isNavigationMode {
        if GetKeyState("Shift", "P") { ; Check if Shift is held down
            Send("+{Up}")
        } else {
            Send("{Up}")
        }
    } else {
        if GetKeyState("Shift", "P") {
            Send("K")
        } else {
            Send("k")
        }
    }
    return
}

*l:: {
    global isNavigationMode
    if isNavigationMode {
        if GetKeyState("Shift", "P") { ; Check if Shift is held down
            Send("+{Right}")
        } else {
            Send("{Right}")
        }
    } else {
        if GetKeyState("Shift", "P") {
            Send("L")
        } else {
            Send("l")
        }
    }
    return
}

; Handle Ctrl + h/j/k/l for navigation mode
^h:: {
    global isNavigationMode
    if isNavigationMode {
        Send("^+{Left}")  ; Ctrl+Shift+Left
    } else {
        Send("^h")  ; Ctrl+h
    }
    return
}

^j:: {
    global isNavigationMode
    if isNavigationMode {
        Send("^+{Down}")  ; Ctrl+Shift+Down
    } else {
        Send("^j")  ; Ctrl+j
    }
    return
}

^k:: {
    global isNavigationMode
    if isNavigationMode {
        Send("^+{Up}")  ; Ctrl+Shift+Up
    } else {
        Send("^k")  ; Ctrl+k
    }
    return
}

^l:: {
    global isNavigationMode
    if isNavigationMode {
        Send("^+{Right}")  ; Ctrl+Shift+Right
    } else {
        Send("^l")  ; Ctrl+l
    }
    return
}
