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
