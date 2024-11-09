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
            Send("{Shift Down}{Left}{Shift Up}")
        } else {
            Send("{Left}")
        }
    } else {
        Send("h")
    }
    return
}

*j:: {
    global isNavigationMode
    if isNavigationMode {
        if GetKeyState("Shift", "P") { ; Check if Shift is held down
            Send("{Shift Down}{Down}{Shift Up}")
        } else {
            Send("{Down}")
        }
    } else {
        Send("j")
    }
    return
}

*k:: {
    global isNavigationMode
    if isNavigationMode {
        if GetKeyState("Shift", "P") { ; Check if Shift is held down
            Send("{Shift Down}{Up}{Shift Up}")
        } else {
            Send("{Up}")
        }
    } else {
        Send("k")
    }
    return
}

*l:: {
    global isNavigationMode
    if isNavigationMode {
        if GetKeyState("Shift", "P") { ; Check if Shift is held down
            Send("{Shift Down}{Right}{Shift Up}")
        } else {
            Send("{Right}")
        }
    } else {
        Send("l")
    }
    return
}