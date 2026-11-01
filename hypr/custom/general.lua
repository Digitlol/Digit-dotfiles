-- Hyprland input config (Flat mouse sensitivity // no acceleration // fix cursor theme)
hl.config({
    input = {
        force_no_accel = true,
        accel_profile = "flat",
        sensitivity = 0,
    },
    cursor = {
        sync_gsettings_theme = true,
        no_hardware_cursors = true,
    }
})

-- Hyprland Plugin - Hyprexpo
--hl.config({
--    plugin = {
--       hyprexpo = {
--            columns = 3,
--            rows = 3,
--            workspace_method = "center",
--            cross_monitor = 0,
--            dynamic_grid = 0,
--            skip_empty = 0,
--            max_workspace = 18,
--            overview_mode = "grid",
--
--            border_color = "rgba(ffffff00)",
--            border_color_focus = "rgba(ffffff00)",
--            border_color_current = "rgba(ffffff00)",
--            border_grad_focus = "rgba(ffffff00)",
--            border_color_hover = "rgba(ffffff00)",
--            border_grad_current = "rgba(ffffff00)",
--            border_width = 1,
--            drag_drop_proxy_color = "rgba(ffffff22)",
--            drag_drop_proxy_active_color = "rgba(ffffff44)",
--            drag_drop_proxy_border_color = "rgba(ffffff00)",
--            drag_drop_proxy_border_width = 1,
--            drag_drop_source_border_color = "rgba(ffffff00)",
--            drag_drop_source_border_width = 1,
--            label_color_default = "rgb(ffffff)",
--            label_color_hover = "rgb(ffffff)",
--            label_color_focus = "rgb(ffffff)",
--            label_color_current = "rgb(ffffff)",
--            selection_label_color = "rgb(ffffff)",
--            workspace_number_color = "rgb(ffffff)",
--        },
--    },
--})
