-- Sets Mouse Acceleration -> Off // Sensitivity -> Raw
hl.config({
    input = {
        accel_profile = "flat",
        sensitivity = 0,
    }
})

-- Removes Extra Cursor on 2nd Monitor
-- hl.config({
--     cursor = {
--         no_hardware_cursors = true,
--     }
-- })

Browser = 'brave --profile-directory="Default" --disable-gpu-compositing'
Workbrowser = 'brave --profile-directory="Profile 1" --disable-gpu-compositing'
TaskManager = "$HOME/.config/hypr/custom/scripts/sysmon.sh"
Discord = "$HOME/.config/hypr/custom/scripts/start-discord.sh"
