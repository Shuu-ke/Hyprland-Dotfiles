-- Environment variables
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")

hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- Qt apps (fractional works fine here)
--hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
--hl.env("QT_SCALE_FACTOR", "1.5")
--hl.env("QT_QPA_PLATFORM", "wayland;xcb")

-- Force Firefox to run natively on Wayland
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- Clean up GTK apps (Remove GDK_DPI_SCALE so it stops shrinking your browsers)
--hl.env("GDK_SCALE", "2")
--hl.env("GDK_DPI_SCALE", "1.0")

hl.env("CHROME_FLAGS", "--force-device-scale-factor=1.5 --ozone-platform-hint=auto")
--hl.env("STEAM_FORCE_DESKTOPUI_SCALING","2")
