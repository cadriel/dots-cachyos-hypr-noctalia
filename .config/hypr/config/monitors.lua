-- Monitor Configuration

hl.monitor({
    output = "DP-2",
    mode = "3840x2160@240.0",
    position = "0x0",
    scale = 1.5,
    bitdepth = 10,
    -- cm = "edid",
    -- cm = "srgb",
    -- cm = "hdredid",
    -- cm = "wide",
    -- cm = "auto",

     -- vrr = 0, -- off
    -- vrr = 1, -- on
    vrr = 2, -- on, fullscreen only
    -- vrr = 3, -- content type game

    -- sdr_eotf = "default",

    supports_wide_color = 1,
    supports_hdr = 1,

    -- sdrbrightness = 1,
    -- sdrsaturation = 1,

    -- sdr_min_luminance = 0.005,
    -- sdr_max_luminance = 400,
    
    -- min_luminance = 0,
    -- max_luminance = 1000,
    -- max_avg_luminance = 300,
})

