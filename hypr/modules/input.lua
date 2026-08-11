-- Input configuration

hl.config({
    input = {
        kb_layout  = "be",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },

    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "razer-razer-basilisk-v3",
    sensitivity = -0.7,
    accel_profile = "flat",

})

-- Add a dedicated device block for the virtual input-remapper device
hl.device({
    name = "razer-razer-basilisk-v3-2",
    sensitivity = -0.7,                         -- Match your desired sensitivity
    accel_profile = "flat",                  -- Match your profile if you use flat/no accel
})
