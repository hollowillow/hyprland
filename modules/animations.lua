-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve( "overshoot", { type = "bezier", points = { {0.5, 0.9}, {0.1, 1.1} } } )
hl.curve( "rubber", { type = "spring", mass = 1, stiffness = 240, dampening = 20 } )

hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "overshoot", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 2, bezier = "overshoot", style = "slidevert" })
hl.animation({ leaf = "windows", enabled = true, speed = 2, spring = "rubber", style = "popin 20%" })
hl.animation({ leaf = "layers", enabled = true, speed = 2, spring = "rubber", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 4, spring = "rubber" })
hl.animation({ leaf = "fade", enabled = false })
