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

--# Game mode
hl.bind("SUPER + P", function ()
    local game_mode = (hl.get_config("animations.enabled") == false)

    if game_mode then
        hl.exec_cmd("hyprctl reload")
        return
    end

    hl.config({
        general = {
            gaps_in = 0, gaps_out = 0, -- Disable gaps
            border_size = 0,
        },

        animations = {
            enabled = false, -- Disable animations
        },

        -- Disable blur, shadow and window rounding
        decoration = {
            shadow = { enabled = false },
            blur = { enabled = false },
            rounding = 0,
        }
    })
    hl.window_rule({ match = { class = ".*" }, no_blur = true, opacity = 1 })
end)
hl.bind("SUPER + O", hl.dsp.exec_cmd("noctalia msg panel-toggle nomadcxx/gamer-mode:main"), {
    description = "Noctalia:Game Mode"
})
