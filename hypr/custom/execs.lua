-- Input method

-- Center the cursor on 1440p monitor // Execute startup scripts
hl.on("hyprland.start", function()
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/start-easyeffects.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/set-ee-default.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/start-spotify.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/startup-display-init.sh")
    hl.exec_cmd("xwaylandvideobridge")
    hl.exec_cmd("noctalia msg power-set performance")
end)

-- hl.exec_cmd("waypaper --restore")
