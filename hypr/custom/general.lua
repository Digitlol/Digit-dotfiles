-- Hyprland input config (Flat mouse sensitivity // no acceleration // fix cursor theme)
hl.config({
    input = {
        force_no_accel = true,
        accel_profile = "flat",
        sensitivity = 0,
    },
    cursor = {
        sync_gsettings_theme = true,
        no_hardware_cursors = false,
    }
})

--##! csgo_vulkan_fix (Can be used for any game)
hl.config({
    plugin = {
        csgo_vulkan_fix = {
            fix_mouse = true,
        },
    },
})

hl.plugin.csgo_vulkan_fix.vkfix_app({ app = "cs2", w = 1280, h = 960 })
--hl.plugin.csgo_vulkan_fix.vkfix_app({ app = "steam_app_2767030", w = 1728, h = 1080 })
