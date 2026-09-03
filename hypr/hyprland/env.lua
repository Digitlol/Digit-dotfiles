-- Load environment variables for Hyprland custom tweaks
local home_dir = os.getenv("HOME")

-- ==========================================
-- 1. GPU & Hardware Drivers
-- ==========================================
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")

-- ==========================================
-- 2. Wayland & Compositor Tweaks
-- ==========================================
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("ELECTRON_ENABLE_WAYLAND_CURSOR", "1")
hl.env("QT_QPA_PLATFORM", "wayland;xcb") -- Prefer Wayland, fallback to XCB
hl.env("QT_QPA_PLATFORMTHEME", "kde")    -- Use KDE integration for Qt apps

-- ==========================================
-- 3. Application Paths & Themes
-- ==========================================
local xdg_data_dirs_old = os.getenv("XDG_DATA_DIRS") or ""
hl.env("XDG_DATA_DIRS", home_dir .. "/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share:" .. xdg_data_dirs_old)
hl.env("XDG_MENU_PREFIX", "plasma-") -- Use Plasma menu prefix for shortcuts

-- ==========================================
-- 4. Portal Fixes
-- ==========================================
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- ==========================================
-- 5. Cursor Fixes
-- ==========================================
hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
