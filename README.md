# Vim-like Navigation Mode Script  
**System-Wide Navigation with h, j, k, l (Inspired by Vim)**  

This script, written in **AutoHotkey v2**, maps the `h`, `j`, `k`, and `l` keys to the arrow keys throughout your entire system. It allows you to navigate like in Vim, helping you build muscle memory without moving your hands from the home row. Press the `CapsLock` key to toggle between normal typing and navigation modes.  

---

## **Core Features:**

### 1. **Toggle Navigation Mode:**
   - The **Caps Lock key** is used to toggle "navigation mode" on or off.
   - When navigation mode is active:
     - The **Caps Lock LED** on your keyboard serves as a visual indicator.
     - A tooltip will briefly show "Navigation Mode ON" or "Navigation Mode OFF" for user feedback.

### 2. **Navigation Mode:**
   - **h**, **j**, **k**, and **l** are remapped to function like arrow keys:
     - `h` -> Left Arrow  
     - `j` -> Down Arrow  
     - `k` -> Up Arrow  
     - `l` -> Right Arrow  
   - Holding **Shift** while using these keys allows text selection.
   - Modifier key combinations are supported for extended functionality:
     - **Ctrl + h/j/k/l** for larger movements or text selection.
     - **Alt + h/j/k/l** for actions like Alt + Arrow keys.
     - **Win + h/j/k/l** for actions like snapping windows (if supported by the OS).

### 3. **Default Mode:**
   - When navigation mode is off, the `h`, `j`, `k`, and `l` keys work normally.
   - Modifier keys (Shift, Ctrl, Alt, or Win) work as expected for typing or other commands.

---

## **Why Use CapsLock and h, j, k, l?**  
- **Vim-Inspired Navigation:**  
  The `h`, `j`, `k`, and `l` keys mimic Vim's movement keys, allowing efficient navigation without reaching for the arrow keys.  
- **CapsLock for Mode Switching:**  
  The `CapsLock` key serves as a convenient toggle for switching between typing and navigation modes without disrupting your workflow.

---


## **Installation and Setup:**

### Step 1: Install AutoHotkey
   - Go to the [AutoHotkey website](https://www.autohotkey.com/) and download the installer.
   - Follow the prompts to install AutoHotkey on your system.

### Step 2: Save the Script
   - Copy the script into a text editor (like Notepad).
   - Save it with a `.ahk` extension (e.g., `navigation_mode.ahk`).

### Step 3: Run the Script
   - Double-click on the `.ahk` file you just created.
   - The script will run immediately, and you should see an AutoHotkey icon in your system tray.

### Step 4: Using the Script
   - Press **CapsLock** to toggle between normal mode and navigation mode.
   - In navigation mode, use the keys:
     - `h` = Left, `j` = Down, `k` = Up, `l` = Right.
   - Hold **Shift** with these keys to select text.
   - Optionally, use **Ctrl**, **Alt**, or **Win** with these keys for additional navigation functionality.

---

### **Recommendation:**  
Disable the arrow keys on your keyboard to encourage using `h`, `j`, `k`, and `l` for all navigation tasks. This helps you develop Vim-like muscle memory for faster and more efficient navigation.

---

### **Stopping the Script:**
To stop the script, right-click the AutoHotkey icon in the system tray and select **Exit**.
