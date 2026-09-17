-- Environment variables
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "32")
-- Native Hyprcursor Variables
hl.env("HYPRCURSOR_THEME", "macOS")
hl.env("HYPRCURSOR_SIZE", "28")
hl.env("XCURSOR_THEME", "McMojave-cursors")

hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
-- optional: reduces the GPU power-state penalty NVDEC decode otherwise causes
hl.env("CUDA_DISABLE_PERF_BOOST", "1")
-- Export display environment to DBus daemon on startup
--hl.exec("dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland")

hl.env("GBM_BACKEND", "nvidia-drm")


hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- Force Firefox to run natively on Wayland
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("CHROME_FLAGS", "--force-device-scale-factor=1.5 --ozone-platform-hint=auto")

-- Force GTK applications to use Wayland, falling back to X11 if unavailable
hl.env("GDK_BACKEND", "wayland,x11,*")

-- Force Qt applications to use Wayland natively, falling back to XCB (X11)
hl.env("QT_QPA_PLATFORM", "wayland;xcb")

-- Force SDL2 applications (many native indie games and emulators) to use Wayland
hl.env("SDL_VIDEODRIVER", "wayland")

-- Force Clutter-based toolkits to use Wayland
hl.env("CLUTTER_BACKEND", "wayland")

-- Fix for older Java-based applications (like older Minecraft launchers or IDEs) on Wayland
hl.env("_JAVA_AWT_WM_NONEREPARENTING", "1")

-- Enable custom Qt styling via qt5ct / qt6ct
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

--hl.env("GTK_THEME", "Fluent-Dark")
