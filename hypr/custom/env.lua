-- Hyprland input config (Flat mouse sensitivity // no acceleration // fix cursor theme)
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

--- Removes Extra Cursor on 2nd Monitor + Fixes Screensharing for Electron apps not showing your Cursor
hl.config({
     cursor = {
        no_hardware_cursors = true,
    },
})
