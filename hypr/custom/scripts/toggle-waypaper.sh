#!/usr/bin/env bash

if hyprctl clients | grep -q "class: waypaper"; then
    hyprctl dispatch killwindow "class:waypaper"
else
    waypaper &
fi
