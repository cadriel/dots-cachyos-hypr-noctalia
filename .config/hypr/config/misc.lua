----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = -1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
        disable_splash_rendering = true,
        middle_click_paste = false,
        enable_swallow = true,
        swallow_regex = "(kitty|ghostty|[Kk]onsole|Alacritty|gnome-terminal|xfce[0-9]?-terminal)",
		-- vrr = 0, -- off
        -- vrr = 1, -- on
        vrr = 2, -- on, fullscreen only
        -- vrr = 3, -- on, content type game
    },
    render = {
        direct_scanout = 2,
        cm_enabled = true,
        -- cm_auto_hdr = 0, -- off
        -- cm_auto_hdr = 1, -- switch to cm, hdr
        cm_auto_hdr = 2, -- switch to cm, hdredid
        send_content_type = true,
    },
    xwayland = {
        force_zero_scaling = true
    },
})
