#!/bin/bash

# If already running → just open workspace
if hyprctl clients | grep -q "class: btop"; then
    hyprctl dispatch togglespecialworkspace sysmon
    exit 0
fi

# Launch
kitty --class btop -e btop &

# Wait for window to exist
for i in {1..20}; do
    if hyprctl clients | grep -q "class: btop"; then
        break
    fi
    sleep 0.05
done

# Instead of toggle → force workspace focus
hyprctl dispatch workspace special:sysmon