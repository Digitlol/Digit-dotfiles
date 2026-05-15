-- Input method

-- Center the cursor on 1440p monitor + Execute startup scripts
hl.on("hyprland.start", function()
    hl.dsp.cursor.move({ x = 3200, y = 720 })
    hl.dsp.focus({ monitor = "DP-6" })
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/start-easyeffects.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/start-spotify.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/set-ee-default.sh")
end)

-- hl.exec_cmd("waypaper --restore")
