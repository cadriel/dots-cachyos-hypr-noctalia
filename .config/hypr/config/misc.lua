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
        vrr = 2, -- fullscreen-only: OLED panels can flicker at the variable/low refresh rates the idle desktop runs at with vrr=1
    },
    render = {
        direct_scanout = 2,
        cm_enabled = true,
        cm_auto_hdr = true,    -- only takes effect once a monitor's cm mode is "auto" (currently srgb, so this is a no-op for now)
        send_content_type = true,
    },
    xwayland = {
        force_zero_scaling = true
    },
})
