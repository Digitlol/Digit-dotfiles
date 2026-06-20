-- Run these commands once when Hyprland starts
hl.on("hyprland.start", function()
    -- ==========================================
    -- 1. Noctalia
    -- ==========================================
    hl.exec_cmd("noctalia")

    -- ==========================================
    -- 2. Core Components (Auth, Lock, Notifications)
    -- ==========================================
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("dbus-update-activation-environment --all")
    -- Fix for systemd environment variables
    hl.exec_cmd("sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- ==========================================
    -- 3. Cursor Theme
    -- ==========================================
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 24")
end)
