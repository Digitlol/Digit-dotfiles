#!/bin/bash

# If already running → just open workspace
if hyprctl clients | grep -q "class: discord"; then
    hyprctl dispatch togglespecialworkspace communication
    exit 0
fi

# Launch Discord
discord &

# Wait for window to exist
for i in {1..20}; do
    if hyprctl clients | grep -q "class: discord"; then
        break
    fi
    sleep 0.05
done

# Instead of toggle → force workspace focus
hyprctl dispatch workspace special:communication
