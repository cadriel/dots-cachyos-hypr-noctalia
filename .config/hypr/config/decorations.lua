-----------------------
----- DECORATIONS -----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 14,

        border_size = 2,

        col = {
            active_border = {
                colors = {"rgba(8c8c8ce6)", "rgba(6c6c6ce6)"},
                angle = 100,
            },
            inactive_border = {
                colors = {"rgba(454545f0)"},
                angle = 209,
            },
        },
        
        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = true,

        layout = "dwindle",

        -- force_split = 1,
    },

    decoration = {
        rounding       = 12,
        rounding_power = 2,

        dim_strength = 0.05,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 16,
            render_power = 3,
            color        = "rgba(00000099)",
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 2,
            vibrancy  = 0.1696,
        },
    }
})
