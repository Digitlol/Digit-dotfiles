--##! My Apps - Special Workspace Rules

-- Spotify Workspace
hl.window_rule({
    match = { class = "^(Spotify|spotify)$" },
    workspace = "special:music silent",
    opacity = 0.85,
    no_initial_focus = true,
    focus_on_activate = false
})

-- Discord
hl.window_rule({
    match = { initial_class = "^(Discord|discord)$" },
    workspace = "special:communication silent",
    opacity = 0.85,
    no_initial_focus = true,
    focus_on_activate = false
})

-- Slack
hl.window_rule({
    match = { class = "^(Slack|slack)$" },
    workspace = "special:slack silent",
    opacity = 0.85,
    no_initial_focus = true,
    focus_on_activate = false
})

-- Mission Center
hl.window_rule({
    match = { class = "^(io.missioncenter.MissionCenter)$" },
    workspace = "special:sysmon",
    opacity = 0.8
})

-- Zed
hl.window_rule({
    match = { class = "^(dev.zed.Zed)$" },
    opacity = 0.85
})

-- Steam
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
    opacity = 1,
    no_blur = true
})

-- Kitty
hl.window_rule({
    match = { class = "^(Kitty|kitty)$" },
    opacity = 0.85
})

-- Discord RPC
hl.window_rule({
    match = { class = "^(rpc-toggle$)" },
    float = true,
    center = true,
    size = { "(monitor_w*0.50)", "(monitor_h*0.50)" },
    opacity = 0.85
})
-- Helium Tweaks - Bitwarden

hl.window_rule({
    match = { class = "^(chrome-nngceckbapebfimnlniiiahkandclblb-Profile_2)$" },
    float = true,
    center = true,
    size = { "(monitor_w*0.40)", "(monitor_h*0.50)" },
    opacity = 0.85
})

-- QRClip
hl.window_rule({
    match = { class = "^(QR-clip)$" },
    float = true,
    center = true,
    size = { "(monitor_w*0.50)", "(monitor_h*0.50)" },
    opacity = 0.85
})

-- Telegram
hl.window_rule({
    match = { class = "^(TelegramDesktop|telegram-desktop)$" },
    focus_on_activate = false,
    no_focus = true
})
hl.window_rule({
    match = { title = "^(Telegram|telegram)$" },
    focus_on_activate = false,
    no_focus = true
})

-- Superhuman
hl.window_rule({
    match = { title = "^(Superhuman|superhuman)$" },
    opacity = 0.85,
    no_focus = true
})
hl.window_rule({
    match = { initial_title = "^(Superhuman|superhuman)$" },
    opacity = 0.85
})

-- Dolphin
hl.window_rule({
    match = { class = "^(org.kde.dolphin$)" },
    opacity = 0.85
})

-- Quo
hl.window_rule({
    match = { initial_title = "^(quo|Quo)$" },
    opacity = 0.85
})

-- WhatsApp
hl.window_rule({
    match = { title = "^(WhatsApp Web|whatsapp web)$" },
    opacity = 0.85,
})
