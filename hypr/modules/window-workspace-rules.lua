-- Window and Workspace Rules
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
suppressMaximizeRule:set_enabled(false)

local suppressFullscreenRule = hl.window_rule({
    -- Ignore fullscreen requests from all apps.
    name  = "suppress-fullscreen-events",
    match = { class = ".*" },

    suppress_event = "fullscreen",
})
suppressFullscreenRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})


hl.workspace_rule({ workspace = "1", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "", persistent = true })
--hl.workspace_rule({ workspace = "4", monitor = "", persistent = true })
--hl.workspace_rule({ workspace = "5", monitor = "", persistent = true })
-- Workspace rule for gaps
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0 })

-- Window rule for rounding (applies rounding:0 to windows on single-window workspaces)
hl.window_rule({
  match = { workspace = "w[tv1]" },
  rounding = 0,
})
-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Noctalia Settings
hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})

-- For Noctalia Color templates
--require("noctalia").apply_theme()

-- Automatically float and center child windows
hl.window_rule({
    name  = "float-and-center-child",
    match = {
        title = ".*(Settings|Preferences|Dialog|Options|Properties).*",
    },
    float = true,
    center = true,
})


hl.window_rule({
  name = "nautilus-transparency", -- Naming is optional but helps with organization
  match = {
    class = "org.gnome.Nautilus"
  },
  -- Opacity format: <active> <inactive> <fullscreen>
  opacity = "0.85 override 0.85 override 1.0 override"
})

hl.window_rule({
  name = "kitty-transparency", -- Naming is optional but helps with organization
  match = {
    class = "kitty"
  },
  -- Opacity format: <active> <inactive> <fullscreen>

    opacity = "0.85 override 0.85 override 1.0 override",
   -- float = true,
     size = { 900, 700},
    --center = true
})
-- --- Steam Main Window & Popups ---
-- --- Steam Windows ---
-- 1. Float and center ALL Steam windows by default (Friends, Properties, Popups, etc.)
hl.window_rule({
    match = { class = "^steam$" },
    float = true,
    center = true
})

-- 2. Force ONLY the main Steam window to remain tiled
hl.window_rule({
    match = { class = "^steam$", title = "^Steam$" },
    float = false
})

-- --- File Pickers & Desktop Portals ---
-- XDG Desktop Portals (GTK, KDE, Hyprland portal implementations)
hl.window_rule({
    match = { class = "^xdg-desktop-portal-.*$" },
    float = true,
    center = true
})

-- Common standard file dialogue titles
hl.window_rule({
    match = { title = "^(Open File|Select a File|Save As|Open Folder|Choose Files|All Files)$" },
    float = true,
    center = true
})

hl.window_rule({
    match = { title = "Picture-in-Picture" },
    float = true,
    pin = true,
    center = true
})
