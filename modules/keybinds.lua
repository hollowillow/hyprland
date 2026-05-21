-- https://wiki.hypr.land/Configuring/Basics/Binds/
-- SUBMAPS and KEYBIND SETS ---
require('modules.submaps.masterRatio')
require('modules.submaps.masterLayout')
require('modules.submaps.passthrough')
require('modules.submaps.print')
require('modules.submaps.media')

-- GENERAL ---
hl.bind(mainMod .. " + SPACE",
    hl.dsp.exec_cmd("float-term fzmenu"),
    { description = "Open program launcher" }
)
hl.bind(mainMod .. " + ESCAPE",
    hl.dsp.exec_cmd("float-term power"),
    { description = "Open power menu" }
)

hl.bind(mainMod .. " + W",
    hl.dsp.exec_cmd("toggle-waybar"),
    { description = "Toggle waybar" }
)

hl.bind(mainMod .. " + RETURN",
    hl.dsp.exec_cmd("$TERMINAL"),
    { description = "Spawn a terminal" }
)

hl.bind(mainMod .. " + Q",
    hl.dsp.window.close(activewindow),
    { description = "Close active window" }
)
hl.bind(mainMod .. " + SHIFT + Q",
    hl.dsp.window.kill(activewindow),
    { description = "Kill active window" }
)

hl.bind(mainMod .. " + TAB",
    hl.dsp.window.fullscreen({ fullscreen, toggle, activewindow}),
    { description = "Fullscreen active window" }
)

hl.bind(mainMod .. " + i",
    hl.dsp.exec_cmd("$TERMINAL --class='script.invisible'"),
    { description = "Spawn a special invisible window" }
)
--- WORKSPACE NAVIGATION ---

-- using the id for the workspace instead of name,
-- the name method doesn't work even when you define a name with the workspace rules
-- if the workspace is empty before you move to it, it creates a new workspace with a negative int id
for i, ws in pairs(workspaces) do
    hl.bind(mainMod .. " + " .. ws.key,
        hl.dsp.focus({ workspace = i }),
        { description = "Focus workspace " .. ws.name }
    )
    hl.bind(mainMod .. " + SHIFT + " .. ws.key,
        hl.dsp.window.move({ workspace = i }),
        { description = "Move focused window to workspace " .. ws.name }
    )
end

hl.bind(mainMod .. " + j",
    hl.dsp.layout("cyclenext"),
    { description = "Focus next window in master layout" }
)
hl.bind(mainMod .. " + k",
    hl.dsp.layout("cycleprev"),
    { description = "Focus previous window in master layout" }
)
hl.bind(mainMod .. " + h",
    hl.dsp.layout("focusmaster"),
    { description = "Focus master" }
)
hl.bind(mainMod .. " + SHIFT + j",
    hl.dsp.layout("swapnext"),
    { description = "Swap current window with next window" }
)
hl.bind(mainMod .. " + SHIFT + k",
    hl.dsp.layout("swapprev"),
    { description = "Swap current window with previous window" }
)
hl.bind(mainMod .. " + SHIFT + h",
    hl.dsp.layout("swapwithmaster"),
    { description = "Swap current window with master window" }
)
hl.bind(mainMod .. " + CONTROL + j",
    hl.dsp.layout("rollnext"),
    { description = "Rotate stack forward" }
)
hl.bind(mainMod .. " + CONTROL + k",
    hl.dsp.layout("rollprev"),
    { description = "Rotate stack backward" }
)

-- special workspace
hl.bind(mainMod .. " + G",
    hl.dsp.workspace.toggle_special("scratchpad"),
    { description = "Focus scratchpad" }
)
hl.bind(mainMod .. " + SHIFT + G",
    hl.dsp.window.move({ workspace = 'special:scratchpad' }),
    { description = "Move focused window to scratchpad" }
)

--- SCRIPTS ---
hl.bind(scriptMod .. " + w",
    hl.dsp.exec_cmd("wp random"),
    { description = "Change to a random wallpaper" }
)
hl.bind(scriptMod .. " + SHIFT + w",
    hl.dsp.exec_cmd("term-menu wp select"),
    { description = "Select wallpaper" }
)
