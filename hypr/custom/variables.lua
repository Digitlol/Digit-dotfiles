-- Hyprland input config
hl.config({
    input = {
        force_no_accel = true,
        accel_profile = "flat",
        sensitivity = 0,
    },

    cursor = {
        sync_gsettings_theme = true,
    }
})

-- Removes Extra Cursor on 2nd Monitor
-- hl.config({
--     cursor = {
--         no_hardware_cursors = true,
--     }
-- })

Browser = 'helium-browser --profile-directory="Profile 1"'
Workbrowser = 'helium-browser --profile-directory="Profile 2"'
TaskManager = "$HOME/.config/hypr/custom/scripts/sysmon.sh"
Discord = "$HOME/.config/hypr/custom/scripts/start-discord.sh"
