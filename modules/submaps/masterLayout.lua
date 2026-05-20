-- sumbap with auto reset
hl.bind(mainMod .. " + SHIFT + M",
    hl.dsp.submap("ORIENTATION"),
    { description = "Enter master layout orientation submap" }
)
hl.define_submap("ORIENTATION", "reset", function()
    hl.bind("g", hl.dsp.layout("orientationcenter"))
    hl.bind("h", hl.dsp.layout("orientationleft"))
    hl.bind("j", hl.dsp.layout("orientationbottom"))
    hl.bind("k", hl.dsp.layout("orientationtop"))
    hl.bind("l", hl.dsp.layout("orientationright"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)
