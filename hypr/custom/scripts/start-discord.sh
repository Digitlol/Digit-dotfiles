#!/bin/bash

# If already running → just open workspace
if hyprctl clients | grep -q "class: discord"; then
    hyprctl dispatch togglespecialworkspace communication
    exit 0
fi

# Launch Discord (Wayland attempt first)
ELECTRON_OZONE_PLATFORM_HINT=x11 discord &

# Wait for window to exist
for i in {1..20}; do
    if hyprctl clients | grep -q "class: discord"; then
        break
    fi
    sleep 0.05
done

# Focus workspace
hyprctl dispatch workspace special:communication
