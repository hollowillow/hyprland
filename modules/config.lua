-- https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    input = {
        kb_layout = "us,us",
        kb_variant = ",workman-p",
        kb_options = "caps:backspace, shift:both_capslock_cancel",

        follow_mouse = 2,
        sensitivity = 0,
    },
    cursor = {
        inactive_timeout = 10,
    },
    general = {
        gaps_in = { top = 7, right = 5, left = 5, bottom = 7 },
        gaps_out = 20,
        col = {
            active_border = { colors = { "rgba(d8a657ff)", "rgba(e78a4eff)" }, angle = 45 },
            inactive_border = "rgb(282828)",
        },
        border_size = 2,
        allow_tearing = false,
        layout = "master",
    },
    master = {
        mfact = 0.618,
        orientation = "left",
        new_status = "slave",
    },
    dwindle = {
        special_scale_factor = 0.8,
    },
    decoration = {
        shadow = {
            enabled = false,
        },
    },
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
    },
    binds = {
        hide_special_on_workspace_change = true,
    },
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
        enforce_permissions = false,
    }
})
