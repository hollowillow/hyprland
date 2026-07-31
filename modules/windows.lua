-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/ 
-- WORKSPACES
hl.window_rule({
    match = { class = browser },
    workspace = 'name:browser',
})
hl.window_rule({
    match = { class = '^(mpv)$' },
    workspace = 'name:media',
    fullscreen = true,
    opaque = true,
})
hl.window_rule({
    match = { class = '^(steam)$' },
    workspace = 'name:games',
    -- fullscreen = true,
})
hl.window_rule({
    match = { class = '.*RetroArch.*' },
    workspace = 'name:games',
    fullscreen = true,
})

-- SCRATCHPAD
hl.window_rule({
    match = { class = '.*discord.*' },
    workspace = 'special:scratchpad',
})
hl.window_rule({
    match = { class = '.*blueman.*' },
    workspace = 'special:scratchpad',
})
hl.window_rule({
    match = { class = '.*qpwgraph.*' },
    workspace = 'special:scratchpad',
})

hl.window_rule({
    match = { class = '.*KeePassXC.*' },
    workspace = 'special:scratchpad',
    no_screen_share = true,
})
hl.window_rule({
    match = { class = '.*qBittorent.*' },
    workspace = 'special:scratchpad',
    no_screen_share = true,
})

-- SPECIAL
hl.window_rule({
    name = 'floatTerm',
    match = { class = '^(dev.hollowillow.floatTerm)$' },
    workspace = 'special:floatTerm',
    stay_focused = true,
    float = true,
    size = { 1000, 500 },
    border_color = 'rgb(7daea3)',
    opaque = true,
    animation = 'gnomed',
})

hl.window_rule({
    name = 'invisible',
    match = { class = '^(script.invisible)$' },
    border_color = "rgb(7daea3)",
    opacity = 0,
    no_anim = true,
    no_blur = true,
    no_shadow = true,
})
