-- ######## Window rules ########

-- Disable blur for xwayland context menus
--hl.window_rule({ match = { class = "^()$", title = "^()$" }, no_blur = false })

-- Disable blur for every window
--hl.window_rule({ match = { class = ".*" }, no_blur = false })

-- Floating
hl.window_rule({ match = { title = "^(Open File)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Open File)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Select a File)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Select a File)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Choose wallpaper)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Choose wallpaper)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Choose wallpaper)(.*)$" }, size = { "(monitor_w*0.60)", "(monitor_h*0.65)" } })
hl.window_rule({ match = { title = "^(Open Folder)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Open Folder)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Save As)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Save As)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Library)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Library)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(File Upload)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(File Upload)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(.*)(wants to save)$" }, center = true })
hl.window_rule({ match = { title = "^(.*)(wants to save)$" }, float = true })
hl.window_rule({ match = { title = "^(.*)(wants to open)$" }, center = true })
hl.window_rule({ match = { title = "^(.*)(wants to open)$" }, float = true })
hl.window_rule({ match = { class = "^(blueberry\\.py)$" }, float = true })
hl.window_rule({ match = { class = "^(guifetch)$" }, float = true }) -- FlafyDev/guifetch
hl.window_rule({ match = { class = "^(pavucontrol)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol)$" }, size = { "(monitor_w*0.45)", "(monitor_h*0.45)" } })
hl.window_rule({ match = { class = "^(pavucontrol)$" }, center = true })
hl.window_rule({ match = { class = "^(pavucontrol-qt)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol-qt)$" }, size = { "(monitor_w*0.50)", "(monitor_h*0.65)" } })
hl.window_rule({ match = { class = "^(pavucontrol-qt)$" }, center = true })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, float = true })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, size = { "(monitor_w*0.45)", "(monitor_h*0.45)" } })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, center = true })
hl.window_rule({ match = { class = ".*plasmawindowed.*" }, float = true })
hl.window_rule({ match = { class = "kcm_.*" }, float = true })
hl.window_rule({ match = { class = ".*bluedevilwizard" }, float = true })
hl.window_rule({ match = { title = ".*Welcome" }, float = true })
hl.window_rule({ match = { title = "^(illogical-impulse Settings)$" }, float = true })
hl.window_rule({ match = { title = ".*Shell conflicts.*" }, float = true })
hl.window_rule({ match = { class = "org.freedesktop.impl.portal.desktop.kde" }, float = true })
hl.window_rule({ match = { class = "org.freedesktop.impl.portal.desktop.kde" }, size = { "(monitor_w*0.60)", "(monitor_h*0.65)" } })
hl.window_rule({ match = { class = "^(Zotero)$" }, float = true })
hl.window_rule({ match = { class = "^(Zotero)$" }, size = { "(monitor_w*0.45)", "(monitor_h*0.45)" } })

-- Move
-- kde-material-you-colors spawns a window when changing dark/light theme. This is to make sure it doesn't interfere at all.
hl.window_rule({ match = { class = "^(plasma-changeicons)$" }, float = true })
hl.window_rule({ match = { class = "^(plasma-changeicons)$" }, no_initial_focus = true })
hl.window_rule({ match = { class = "^(plasma-changeicons)$" }, move = { 999999, 999999 } })
-- stupid dolphin copy
hl.window_rule({ match = { title = "^(Copying — Dolphin)$" }, move = { 40, 80 } })

-- Tiling
hl.window_rule({ match = { class = "^dev\\.warp\\.Warp$" }, tile = true })

-- Picture-in-Picture
hl.window_rule({ match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" }, keep_aspect_ratio = true })
hl.window_rule({ match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" }, move = { "(monitor_w*0.73)", "(monitor_h*0.72)" } })
hl.window_rule({ match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" }, size = { "(monitor_w*0.25)", "(monitor_h*0.25)" } })
hl.window_rule({ match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" }, pin = true })

-- Screen sharing
hl.window_rule({ match = { title = ".*is sharing (a window|your screen).*" }, float = true })
hl.window_rule({ match = { title = ".*is sharing (a window|your screen).*" }, pin = true })
hl.window_rule({ match = { title = ".*is sharing (a window|your screen).*" }, move = { "(monitor_w*.5-window_w*.5)", "(monitor_h-window_h-12)" } })

-- --- Tearing ---
hl.window_rule({ match = { title = ".*\\.exe" }, immediate = true })
hl.window_rule({ match = { title = ".*minecraft.*" }, immediate = true })
hl.window_rule({ match = { class = "^(steam_app).*" }, immediate = true })

-- No shadow for tiled windows
hl.window_rule({ match = { float = 0 }, no_shadow = true })

-- ######## Workspace rules ########
hl.workspace_rule({ workspace = "special:special", gaps_out = 30 })

-- ######## Layer rules ########
--hl.layer_rule({ match = { namespace = ".*" }, xray = true })
--hl.layer_rule({ match = { namespace = "walker" }, no_anim = true })
--hl.layer_rule({ match = { namespace = "selection" }, no_anim = true })
--hl.layer_rule({ match = { namespace = "overview" }, no_anim = true })
--hl.layer_rule({ match = { namespace = "anyrun" }, no_anim = true })
--hl.layer_rule({ match = { namespace = "indicator.*" }, no_anim = true })
--hl.layer_rule({ match = { namespace = "osk" }, no_anim = true })
--hl.layer_rule({ match = { namespace = "hyprpicker" }, no_anim = true })

--hl.layer_rule({ match = { namespace = "noanim" }, no_anim = true })
--hl.layer_rule({ match = { namespace = "gtk-layer-shell" }, blur = true })
--hl.layer_rule({ match = { namespace = "gtk-layer-shell" }, ignore_alpha = 0 })
--hl.layer_rule({ match = { namespace = "launcher" }, blur = true })
--hl.layer_rule({ match = { namespace = "launcher" }, ignore_alpha = 0.5 })
--hl.layer_rule({ match = { namespace = "notifications" }, blur = true })
--hl.layer_rule({ match = { namespace = "notifications" }, ignore_alpha = 0.69 })
--hl.layer_rule({ match = { namespace = "logout_dialog" }, blur = true }) -- wlogout

-- Launchers need to be FAST
--hl.layer_rule({ match = { namespace = "gtk4-layer-shell" }, no_anim = true })

--#!! Noctalia Shell
hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})

hl.window_rule({
    match = { initial_title = "^(Noctalia Settings$)" },
    float = true,
    center = true,
    size = { "(monitor_w*0.60)", "(monitor_h*0.75)" },
    opacity = 0.90
})

--##! My Apps - Special Workspace Rules

-- Spotify Workspace
hl.window_rule({
    match = { class = "^(Spotify|spotify)$" },
    workspace = "special:music silent",
    opacity = 0.9,
    no_initial_focus = true,
    focus_on_activate = false,
    no_blur = false,
})

-- Discord Workspace
hl.window_rule({
    match = { initial_class = "^(Discord|discord)$" },
    workspace = "special:communication silent",
    opacity = 0.9,
    no_initial_focus = true,
    focus_on_activate = false,
    no_blur = false,
    no_screen_share = false,
    xray = true,
})

-- Slack Workspace
hl.window_rule({
    match = { class = "^(slack)$" },
    workspace = "special:slack silent",
    opacity = 1,
    no_initial_focus = true,
    focus_on_activate = false,
    no_blur = true,
})

hl.window_rule({
    match = { initial_title = "^Annotate.*"},
    float = false,
})

-- Btop Workspace
hl.window_rule({
    match = { class = "^(btop)$" },
    workspace = "special:sysmon",
    opacity = 0.8,
    no_blur = true
})

-- Zed
hl.window_rule({
    match = { class = "^(dev.zed.Zed)$" },
    opacity = 0.90
})
-- Gnome Clocks
hl.window_rule({
    match = { initial_class = "^(org.gnome.clocks|org.gnome.clocks)$" },
    opacity = 0.90
})

-- Steam - The order matters
hl.window_rule({
    match = { initial_title = "^(Friends List|friends list)$" },
    float = true
})

hl.window_rule({
    match = { initial_class = "^(Steam|steam)$" },
    float = true
})

hl.window_rule({
    match = { initial_title = "^Steam$" },
    tile = true
})

hl.window_rule({
    match = { class = "^(Steam|steam)$" },
    opacity = 0.98,
    no_blur = true,
    no_initial_focus = true,
    focus_on_activate = false,
    workspace = "1"
})

-- Kitty
hl.window_rule({
    match = { class = "^(Kitty|kitty)$" },
    opacity = 0.9,
})

-- Discord RPC
hl.window_rule({
    match = { class = "^(rpc-toggle$)" },
    float = true,
    center = true,
    size = { "(monitor_w*0.50)", "(monitor_h*0.50)" },
    opacity = 0.90
})
-- Helium Tweaks - Bitwarden pop-up to float + center w/ blur

hl.window_rule({
    match = { class = "^(chrome-nngceckbapebfimnlniiiahkandclblb-Profile_2)$" },
    float = true,
    center = true,
    size = { "(monitor_w*0.25)", "(monitor_h*0.50)" },
    opacity = 0.90,
    no_blur = false
})

hl.window_rule({
    match = { class = "^(brave-nngceckbapebfimnlniiiahkandclblb-Profile_1)$" },
    float = true,
    center = true,
    size = { "(monitor_w*0.25)", "(monitor_h*0.50)" },
    opacity = 0.90,
    no_blur = false
})

-- QRClip
hl.window_rule({
    match = { class = "^(QR-clip)$" },
    float = true,
    center = true,
    size = { "(monitor_w*0.50)", "(monitor_h*0.50)" },
    opacity = 0.90
})

-- Telegram (Stop it's fucking crap)
hl.window_rule({
    match = { class = "^(org.telegram.desktop)$" },
    focus_on_activate = false,
})
hl.window_rule({
    match = { initial_title = "^(Telegram|telegram)$" },
    focus_on_activate = false,
})

-- Superhuman Web PWA
hl.window_rule({
    match = { title = "^(Superhuman|superhuman)$" },
    opacity = 1
})
hl.window_rule({
    match = { initial_title = "^(Superhuman|superhuman)$" },
    opacity = 1
})

-- Dolphin (To stop lag when using Dolphin drag select)
hl.window_rule({
    match = { class = "^(org.kde.dolphin$)" },
    no_blur = true
})

-- Quo Web PWA
hl.window_rule({
    match = { initial_title = "^(quo|Quo)$" },
    opacity = 1
})

-- WhatsApp Web PWA
hl.window_rule({
    match = { initial_class = "^(com.rtosta.zapzap)$" },
    opacity = 0.90,
    no_initial_focus = true,
    focus_on_activate = false,
})

-- Pavucontrol
hl.window_rule({
    match = { class = "^(pavucontrol-qt)$" },
    opacity = 0.95
})

-- Emote
hl.window_rule({
    match = { initial_class = "^(emote)$" },
    no_initial_focus = true,
    focus_on_activate = true,
    stay_focused = true,
})

-- Waydroid
hl.window_rule({
    match = { class = "(?i)^(Waydroid|waydroid\\..*)$" },
    float = true,
    center = true,
    fullscreen = false,
    maximize = false,
    size = { "1600", "900" },
    suppress_event = "fullscreen",
    fullscreen_state = 0,
})

--#!Assigning monitors

-- 1440p Display
hl.workspace_rule({ workspace = "1", monitor = "desc:AOC Q27G4_D 1T0R7HA007040", persistent = true, default = true })
hl.workspace_rule({ workspace = "2", monitor = "desc:AOC Q27G4_D 1T0R7HA007040", persistent = true, default = true })
hl.workspace_rule({ workspace = "3", monitor = "desc:AOC Q27G4_D 1T0R7HA007040", persistent = true, default = true })
hl.workspace_rule({ workspace = "4", monitor = "desc:AOC Q27G4_D 1T0R7HA007040", persistent = true, default = true })
hl.workspace_rule({ workspace = "5", monitor = "desc:AOC Q27G4_D 1T0R7HA007040", persistent = true, default = true })
hl.workspace_rule({ workspace = "6", monitor = "desc:AOC Q27G4_D 1T0R7HA007040", persistent = true, default = true })
hl.workspace_rule({ workspace = "7", monitor = "desc:AOC Q27G4_D 1T0R7HA007040", persistent = true, default = true })
hl.workspace_rule({ workspace = "8", monitor = "desc:AOC Q27G4_D 1T0R7HA007040", persistent = true, default = true })
hl.workspace_rule({ workspace = "9", monitor = "desc:AOC Q27G4_D 1T0R7HA007040", persistent = true, default = true })

--1080p Display
hl.workspace_rule({ workspace = "10", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "11", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "12", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "13", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "14", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "15", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "16", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "17", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "18", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })


-- Games on Primary monitor
--hl.window_rule({
--    match = {class = "^(steam_app_|steam_proton|.*\\.exe)" },
--    monitor = "desc:AOC Q27G4_D 1T0R7HA007040"})
