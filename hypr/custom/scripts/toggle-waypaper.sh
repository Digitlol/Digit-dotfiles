#!/usr/bin/env bash

# Old and needs an update for new Lua config
if hyprctl clients | grep -q "class: waypaper"; then
    hyprctl dispatch killwindow "class:waypaper"
else
    waypaper &
fi
