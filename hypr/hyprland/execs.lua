-- Run these commands once when Hyprland starts
hl.on("hyprland.start", function()
    -- ==========================================
    -- 1. Bar & Wallpaper Management
    -- ==========================================
    hl.exec_cmd("$HOME/.config/hypr/hyprland/scripts/start_geoclue_agent.sh")
    hl.exec_cmd("qs -c $qsConfig")
    hl.exec_cmd("$HOME/.config/hypr/custom/scripts/__restore_video_wallpaper.sh")

    -- ==========================================
    -- 2. Core Components (Auth, Lock, Notifications)
    -- ==========================================
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("dbus-update-activation-environment --all")
    -- Fix for systemd environment variables
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- ==========================================
    -- 3. Audio
    -- ==========================================
  --  hl.exec_cmd("easyeffects --hide-window --service-mode")

    -- ==========================================
    -- 4. Clipboard History (Cliphist)
    -- ==========================================
    -- Commented out: wl-paste plain history
    -- hl.exec_cmd("wl-paste --watch cliphist store")

    -- Text Clipboard
    hl.exec_cmd(
        "wl-paste --type text --watch bash -c 'cliphist store && qs -c $qsConfig ipc call cliphistService update'")

    -- Image Clipboard
    hl.exec_cmd(
        "wl-paste --type image --watch bash -c 'cliphist store && qs -c $qsConfig ipc call cliphistService update'")

    -- ==========================================
    -- 5. Cursor Theme
    -- ==========================================
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 24")

    -- ==========================================
    -- 6. QuickShell / II Shell Fix (Optional)
    -- ==========================================
    -- This block fixes pinned apps not launching in some versions of QuickShell
    -- Uncomment if you are experiencing launch issues with docked apps:
    -- hl.exec_cmd("sleep 3.5 && hyprctl reload && sleep 0.5 && touch ~/.config/quickshell/ii/shell.qml")
end)
