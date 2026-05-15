#!/bin/bash

WORKSPACE="communication"
CLASS="discord"

# If Discord already running → toggle special workspace
if hyprctl clients | grep -qi "class: $CLASS"; then
    hyprctl eval 'hl.dispatch(hl.dsp.workspace.toggle_special("communication"))'
    exit 0
fi

# Launch Discord
ELECTRON_OZONE_PLATFORM_HINT=x11 discord &

# Wait for window
for i in {1..40}; do
    if hyprctl clients | grep -qi "class: $CLASS"; then
        break
    fi
    sleep 0.05
done

# Focus workspace
hyprctl eval 'hl.dispatch(hl.dsp.focus({ workspace = "special:communication" }))'
