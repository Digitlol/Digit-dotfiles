--##! Other

hl.bind("CTRL+SUPER+ALT+Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"),
    { description = "Other:Edit user keybinds" })

--##! My Apps ^^

hl.bind("SUPER + W", hl.dsp.exec_cmd(Browser), {
    description = "App:Helium"
})

hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd(Workbrowser), {
    description = "App:Helium - Work"
})

hl.bind("SUPER + X", hl.dsp.workspace.toggle_special("music"), {
    description = "App:Spotify"
})

hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("slack"), {
    description = "App:Slack"
})

hl.bind("SUPER + C", hl.dsp.exec_cmd(Discord), {
    description = "App:Discord"
})

hl.bind("SUPER + A", hl.dsp.exec_cmd("gnome-clocks"), {
    description = "App:Clocks"
})

-- hl.bind("CTRL + SUPER + T",
--     hl.dsp.exec_cmd(HOME .. "/.config/hypr/custom/scripts/toggle-wallpaper.sh")
-- )

--# Media -> Spotify

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl --player=spotify next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl --player=spotify previous"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl --player=spotify play-pause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl --player=spotify play-pause"), { locked = true })
