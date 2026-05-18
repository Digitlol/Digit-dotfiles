#!/bin/bash

WORKSPACE="sysmon"
CLASS="io.missioncenter.MissionCenter"

# If already running → toggle special workspace
if hyprctl clients | grep -qi "class: $CLASS"; then
    hyprctl eval 'hl.dispatch(hl.dsp.workspace.toggle_special("sysmon"))'
    exit 0
fi

# Launch Mission Center
missioncenter &

# Wait for window to exist
for i in {1..20}; do
    if hyprctl clients | grep -qi "class: $CLASS"; then
        break
    fi
    sleep 0.05
done

# Focus special workspace
hyprctl eval 'hl.dispatch(hl.dsp.focus({ workspace = "special:sysmon" }))'
