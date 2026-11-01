-- Run these commands once when Hyprland starts
hl.on("hyprland.start", function()

    -- 1. Noctalia Shell

    hl.exec_cmd("noctalia")

    -- 2. Core Components (Auth, Lock, Notifications)

    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("dbus-update-activation-environment --all")
    -- Fix for systemd environment variables
    hl.exec_cmd("sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- 3. Cursor Theme

    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")

    -- 4. Scripts

    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/start-easyeffects.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/set-ee-default.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/start-spotify.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/startup-display-init.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/applycursor.sh")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/camerasettings.sh")

    -- 5. Other

    hl.exec_cmd("xsettingsd")
    hl.exec_cmd("xwaylandvideobridge")
    hl.exec_cmd("noctalia msg power-set performance")
    hl.exec_cmd("xrandr --output DP-3 --primary")
    --    hl.exec_cmd("hyprpm reload -n")
end)
