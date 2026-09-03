--##! My Apps - Special Workspace Rules

-- Spotify Workspace
hl.window_rule({
    match = { class = "^(Spotify|spotify)$" },
    workspace = "special:music silent",
    opacity = 0.9,
    no_initial_focus = true,
    focus_on_activate = false,
    no_blur = true
})

-- Discord Workspace
hl.window_rule({
    match = { initial_class = "^(Discord|discord)$" },
    workspace = "special:communication silent",
    opacity = 0.95,
    no_initial_focus = true,
    focus_on_activate = false,
    no_blur = true,
    no_screen_share = true,
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
    opacity = 0.9
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

--1080p Display
hl.workspace_rule({ workspace = "6", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "7", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "8", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "9", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })
hl.workspace_rule({ workspace = "10", monitor = "desc:AOC G2460PG #ASOkEZB9ChHd", persistent = true, default = true })


-- Games on Primary monitor
--hl.window_rule({
--    match = {class = "^(steam_app_|steam_proton|.*\\.exe)" },
--    monitor = "desc:AOC Q27G4_D 1T0R7HA007040"})
