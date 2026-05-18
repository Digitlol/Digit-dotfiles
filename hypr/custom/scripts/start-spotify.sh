#!/bin/bash
sleep 5
hyprctl dispatch 'hl.dsp.exec_cmd("flatpak run com.spotify.Client", { workspace = "special:music silent" })'
