#!/usr/bin/env bash

MONITOR="DP-6"
CURSOR_X=3200
CURSOR_Y=720

sleep 0.2

hyprctl dispatch "hl.dsp.focus({ monitor = \"${MONITOR}\" })"
hyprctl dispatch "hl.dsp.cursor.move({ x = ${CURSOR_X}, y = ${CURSOR_Y} })"
