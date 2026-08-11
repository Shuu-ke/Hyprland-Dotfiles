#!/usr/bin/env bash

# Path to Noctalia's active settings/state file
NOCTALIA_SETTINGS="$HOME/.local/state/noctalia/settings.toml"
[ ! -f "$NOCTALIA_SETTINGS" ] && NOCTALIA_SETTINGS="$HOME/.config/noctalia/settings.toml"

# Target physical DualSense MAC address
DS5_MAC="24:a6:fa:8f:28:23"

# Fetch current target for composite device 0
CURRENT_TARGET=$(inputplumber device 0 targets list 2>/dev/null)

if echo "$CURRENT_TARGET" | grep -qi "xb360"; then
    # --- SWITCH TO NATIVE (PS5 Mode) ---
    inputplumber device 0 targets set ds5
    dualsensectl -d "$DS5_MAC" lightbar 255 0 0

    # Set icon color to Red (OFF/Passthrough)
    sed -i '/\[.*ToggleXboxEmulation.*\]/,/\[/ s/icon_color = .*/icon_color = "#FF4444"/' "$NOCTALIA_SETTINGS"

    notify-send -a "InputPlumber" -i "gamepad" "Controller Mode" "PS5 Passthrough Active (Red)"
else
    # --- SWITCH TO XBOX (Emulation Mode) ---
    inputplumber device 0 targets set xb360
    dualsensectl -d "$DS5_MAC" lightbar 0 255 0

    # Set icon color to Green (ON/Emulation)
    sed -i '/\[.*ToggleXboxEmulation.*\]/,/\[/ s/icon_color = .*/icon_color = "#44FF44"/' "$NOCTALIA_SETTINGS"

    notify-send -a "InputPlumber" -i "gamepad" "Controller Mode" "Xbox 360 Emulation Active (Green)"
fi
