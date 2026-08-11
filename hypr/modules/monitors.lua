-- Monitor configuration
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
    output   = "",
    mode     = "3840x2160@160",
    position = "0x0",
    scale    = 1.5,
    bitdepth = 10,
    cm = "srgb",
    sdr_eotf = "default",
    vrr      = 2,
   -- icc= "/home/shuu/Downloads/srgb_to_gamma2p2_400_mhc2.icm",

 --hdr
    sdrbrightness = 1,
    sdrsaturation = 1.22,
    supports_wide_color = 1,
    supports_hdr = 1,
    sdr_min_luminance = 0,
    sdr_max_luminance   = 400,
    min_luminance       = 0,
    max_luminance       = 2090,
    max_avg_luminance = 1730,

})
