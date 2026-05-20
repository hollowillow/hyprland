-- passthrough submap
hl.bind(mainMod .. " + p", hl.dsp.submap("PASSTHROUGH"))
hl.define_submap("PASSTHROUGH", function()
    hl.bind(mainMod .. " + escape", hl.dsp.submap("reset"))
end)
