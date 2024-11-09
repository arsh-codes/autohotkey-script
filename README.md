# Vim-like Navigation Mode Script (with `h`, `j`, `k`, `l` for Arrow Keys) – Available System-Wide

This script maps the `h`, `j`, `k`, and `l` keys to the arrow keys throughout your entire system, just like in **Vim**, to help you build muscle memory for navigation without moving your hands away from the home row. Press `CapsLock` to toggle between normal typing and navigation mode, and use `Shift` to select text while moving the cursor.


## Why `CapsLock` and `h`, `j`, `k`, `l`?
- **Vim-inspired**: Just like in **Vim**, the `h`, `j`, `k`, and `l` keys are used for navigation, allowing you to move the cursor without reaching for the arrow keys. This helps you build muscle memory and navigate faster with your fingers always near the home row.
- **CapsLock for Mode Switching**: The `CapsLock` key is used to toggle navigation mode because it's a less-used key, easily accessible for switching between typing and navigation without interrupting your workflow.
- **Shift for Capitalization**: `Shift` retains its usual function for typing capital letters, ensuring a natural typing experience.
- **No `Esc` Key**: Escape (Esc) is not used here because it's far from the home row, while `CapsLock` is a more convenient key to toggle modes.

### Recommendation:
- **Disable your arrow keys** to encourage using `h`, `j`, `k`, and `l` for all navigation tasks. This helps you develop Vim-like muscle memory for more efficient navigation.


## Features:
- **Vim-like Navigation (System-wide)**: Press `CapsLock` to toggle between normal mode and navigation mode.
  - When navigation mode is on, `h`, `j`, `k`, and `l` act as arrow keys:
    - `h` = Left arrow
    - `j` = Down arrow
    - `k` = Up arrow
    - `l` = Right arrow
  - Hold `Shift` with these keys to select text.
- **Tooltips**: A tooltip will briefly show "Navigation Mode ON" or "Navigation Mode OFF" when toggled.
- **Caps Lock Indicator**: The Caps Lock LED will indicate whether navigation mode is active.

## Installation and Setup

### Step 1: Install AutoHotkey
To run this script, you’ll need AutoHotkey installed on your computer.

1. Go to the [AutoHotkey website](https://www.autohotkey.com/) and download the installer.
2. Run the installer and follow the prompts to install AutoHotkey on your computer.

### Step 2: Save the Script
1. Copy the script below into a text editor (like Notepad).
2. Save the file with a `.ahk` extension, for example: `navigation_mode.ahk`.

### Step 3: Run the Script
1. After saving the file, double-click on the `.ahk` file you just created.
2. AutoHotkey will run the script, and the script will start working immediately.
3. You should see a new AutoHotkey icon in your system tray (near the clock), indicating the script is running.

### Step 4: Using the Script
- **Press `CapsLock`** to toggle between normal mode and navigation mode.
  - When in **Navigation Mode**, use:
    - `h` to move left
    - `j` to move down
    - `k` to move up
    - `l` to move right
  - **Hold `Shift`** to select text while moving.

---

**Note**: To stop the script, right-click the AutoHotkey icon in your system tray and select **Exit**.
