-- Monitor configuration
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
    output   = "",
    mode     = "3840x2160@160",
    position = "0x0",
    scale    = 1.5,
    bitdepth = 10,
    cm = "srgb",
    --sdrbrightness = 1.2,
    --sdrsaturation = 0.98,
    vrr = 2,
    supports_wide_color = 1,
    supports_hdr = 1,
    sdr_min_luminance = 0,
    sdr_max_luminance = 730,
})
