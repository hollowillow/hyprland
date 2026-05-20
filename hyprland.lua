-- MONITORS --
hl.monitor({
    output = "",
    mode = "2560x1440@144",
    position = "0x0",
    scale = "1",
    -- transform = "1", -- vertical monitor
})

-- INPUT --
hl.config({
    input = {
        kb_layout = "us,us",
        kb_variant = ",workman-p",
        kb_options = "caps:backspace, shift:both_capslock_cancel",

        follow_mouse = 2,
        sensitivity = 0,
    }
})

-- AUTOSTART --
hl.on("hyprland.start", function()
    hl.exec_cmd("wp random")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("hypridle")
)

-- LOOKS --
hl.config({
    general = {
        gaps_in = { 7, 5 },
        gaps_out = 20,

        col.active_border = { colors = { "rgb(d8a657)", "rgb(e78a4e)" }, angle = 45 },
        col.inactive_border = "rgb(282828)",
        border_size = 2,

        allow_tearing = false,

        layout = "master",
    }
})

hl.config({
    master = {
        mfact = 0.618,
        special_scale_factor = 0.8,
        orientation = "left",
        new_status = "slave",
    }
})

-- KEYBINDS --
local mainMod = "ALT"
hl.bind(mainMod .. " + SPACE",
    hl.dsp.exec_cmd("float-term fzmenu"),
    { description = "Open program launcher" }
)
hl.bind(mainMod .. " + RETURN",
    hl.dsp.exec_cmd("$TERMINAL"),
    { description = "Spawn a terminal" }
)

-- iterate over numbers and make keybinds to workspaces for them
local keys = {'a', 's', 'd', 'f'}
for i = 1, 4 do
    hl.bind(mainMod .. " + " .. keys[i],
        hl.dps.focus({ workspace = i}),
        { description = "Focus workspace " .. i, }
    )
    hl.bind(mainMod .. " + SHIFT + " .. keys[i],
        hl.dps.window.move({ workspace = i}),
        { description = "Move focused window to workspace " .. i, }
    )
end

-- same thing but specifying key:name pairs
local workspaces = {
    { key = 't', name = 'name:terminal' }
    { key = 'b', name = 'name:browser' }
    { key = 'm', name = 'name:media' }
    { key = 'g', name = 'name:games' }
}
for i, ws in ipairs(workspaces) do
    hl.bind(mainMod .. " + " .. ws.key,
        hl.dps.focus({ workspace = ws.name}),
        { description = "Focus workspace " .. ws.name, }
    )
    hl.bind(mainMod .. " + SHIFT + " .. ws.key,
        hl.dps.window.move({ workspace = ws.name}),
        { description = "Move focused window to workspace " .. ws.name, }
    )
end

-- submap that needs to be exited
hl.bind(mainMod .. " + m",
    hl.dsp.submap("RATIO"),
    { description = "Enter master layout ratio submap" }
)
hl.define_submap("RATIO", function()
    hl.bind("h",
        hl.resize({ x = 10, y = 0, relative = true }),
        { description = "Decrease master ratio", repeating = true }
    )
    hl.bind("l",
        hl.resize({ x = -10, y = 0, relative = true }),
        { description = "Increase master ratio", repeating = true }
    )
    hl.bind("catchall", hl.dsp.no_op())
    hl.bind("escape", hl.dsp.submap("reset"))
)

-- sumbap with auto reset
hl.bind(mainMod .. " + SHIFT + m",
    hl.dsp.submap("ORIENTATION"),
    { description = "Enter master layout orientation submap" }
)
hl.define_submap("RATIO", "reset" function()
    hl.bind("h", hl.dsp.layout("orientationleft"))
    hl.bind("l", hl.dsp.layout("orientationright"))
    hl.bind("catchall", hl.dsp.submap("reset"))
)

-- passthrough submap
hl.bind(mainMod .. " + p", hl.dsp.submap("PASSTHROUGH"))
hl.define_submap("PASSTHROUGH", function()
    hl.bind(KEYS, hl.dsp.submap("reset"))
end)

-- WINDOW RULES --
hl.window_rule({
    name = "browser",
    match = { class = "^($BROWSER)$" },
    workspace = 2,
})

-- WORKSPACE RULES --
hl.workspace_rule({ 1, on_created_empty = "$BROWSER", default_name = "browser" })
