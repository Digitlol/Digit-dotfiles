--##! My Apps - Special Workspace Rules

-- Spotify Workspace
hl.window_rule({
    match = { class = "^(Spotify|spotify)$" },
    workspace = "special:music silent",
    opacity = 0.90,
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
    no_blur = true
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
})

-- Kitty
hl.window_rule({
    match = { class = "^(Kitty|kitty)$" },
    opacity = 1
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
    opacity = 0.90
})
hl.window_rule({
    match = { initial_title = "^(Superhuman|superhuman)$" },
    opacity = 0.90
})

-- Dolphin (To stop lag when using Dolphin drag select)
hl.window_rule({
    match = { class = "^(org.kde.dolphin$)" },
    no_blur = true
})

-- Quo Web PWA
hl.window_rule({
    match = { initial_title = "^(quo|Quo)$" },
    opacity = 0.95
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


-- Assigning monitors
hl.workspace_rule({ workspace = "1", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "DP-3", persistent = true })

hl.workspace_rule({ workspace = "6", monitor = "DP-2", persistent = true })
hl.workspace_rule({ workspace = "7", monitor = "DP-2", persistent = true })
hl.workspace_rule({ workspace = "8", monitor = "DP-2", persistent = true })
hl.workspace_rule({ workspace = "9", monitor = "DP-2", persistent = true })
hl.workspace_rule({ workspace = "10", monitor = "DP-2", persistent = true })

hl.workspace_rule({ workspace = "1", monitor = "DP-3", default=true})
hl.workspace_rule({ workspace = "6", monitor = "DP-2", default=true})
