--##! My Apps - Special Workspace Rules

-- Spotify
hl.window_rule({
    match = { class = "^(Spotify|spotify)$" },
    workspace = "special:music silent"
})
hl.window_rule({
    match = { class = "^(Spotify|spotify)$" },
    opacity = 0.9
})

-- Discord
hl.window_rule({
    match = { initial_class = "^(Discord|discord)$" },
    workspace = "special:communication silent"
})
hl.window_rule({
    match = { initial_class = "^(Discord|discord)$" },
    opacity = 0.97
})

-- Slack
hl.window_rule({
    match = { class = "^(Slack|slack)$" },
    workspace = "special:slack silent"
})
hl.window_rule({
    match = { class = "^(Slack|slack)$" },
    opacity = 0.97
})

-- Btop
hl.window_rule({
    match = { class = "^(btop|Btop)$" },
    workspace = "special:sysmon"
})
hl.window_rule({
    match = { class = "^(btop|Btop)$" },
    opacity = 0.8
})

-- Zed
hl.window_rule({
    match = { class = "^(dev.zed.Zed)$" },
    opacity = 0.97
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
    opacity = 0.97
})

-- Kitty
hl.window_rule({
    match = { class = "^(Kitty|kitty)$" },
    opacity = 0.97
})

-- Discord RPC
hl.window_rule({
    match = { class = "^(rpc-toggle$)" },
    float = true
})
hl.window_rule({
    match = { class = "^(rpc-toggle$)" },
    center = true
})
hl.window_rule({
    match = { class = "^(rpc-toggle$)" },
    size = { "(monitor_w*0.50)", "(monitor_h*0.50)" }
})

-- QRClip
hl.window_rule({
    match = { class = "^(QR-clip)$" },
    float = true
})
hl.window_rule({
    match = { class = "^(QR-clip)$" },
    center = true
})
hl.window_rule({
    match = { class = "^(QR-clip)$" },
    size = { "(monitor_w*0.50)", "(monitor_h*0.50)" }
})

-- Telegram
hl.window_rule({
    match = { class = "^(TelegramDesktop|telegram-desktop)$" },
    no_focus = true
})
hl.window_rule({
    match = { title = "^(Telegram|telegram)$" },
    no_focus = true
})

-- Superhuman
hl.window_rule({
    match = { title = "^(Superhuman|superhuman)$" },
    opacity = 0.97
})
hl.window_rule({
    match = { initial_title = "^(Superhuman|superhuman)$" },
    opacity = 0.97
})

-- Dolphin
hl.window_rule({
    match = { class = "^(org.kde.dolphin$)" },
    opacity = 0.97
})

-- Quo
hl.window_rule({
    match = { initial_title = "^(quo|Quo)$" },
    opacity = 0.97
})

-- WhatsApp
hl.window_rule({
    match = { title = "^(WhatsApp Web|whatsapp web)$" },
    opacity = 0.98
})
