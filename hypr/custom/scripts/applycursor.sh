#!/bin/bash

CURSOR_THEME="Bibata-Modern-Ice"
CURSOR_SIZE=24

sleep 2
gsettings set org.gnome.desktop.interface cursor-theme "$CURSOR_THEME"
gsettings set org.gnome.desktop.interface cursor-size "$CURSOR_SIZE"
