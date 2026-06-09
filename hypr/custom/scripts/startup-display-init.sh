#!/usr/bin/env bash

MONITOR="DP-3"
CURSOR_X=1280
CURSOR_Y=720

sleep 0.2

hyprctl dispatch "hl.dsp.focus({ monitor = \"${MONITOR}\" })"
hyprctl dispatch "hl.dsp.cursor.move({ x = ${CURSOR_X}, y = ${CURSOR_Y} })"
