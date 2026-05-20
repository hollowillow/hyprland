-- IMPORT MODULES
require('modules.variables')
require('modules.config')
require('modules.keybinds')
require('modules.workspaces')
require('modules.windows')
require('modules.animations')

-- AUTOSTART --
hl.on("hyprland.start", 
    function()
        hl.exec_cmd("wp random")
        hl.exec_cmd("waybar")
        hl.exec_cmd("hyprsunset")
        hl.exec_cmd("hypridle")
    end
)

-- MONITORS --
hl.monitor({
    output = "",
    mode = "2560x1440@144",
    position = "0x0",
    scale = "1",
    -- transform = "1", -- vertical monitor
})
