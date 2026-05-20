-- submap that needs to be exited
hl.bind(mainMod .. " + M",
    hl.dsp.submap("RATIO"),
    { description = "Enter master layout ratio submap" }
)
hl.define_submap("RATIO", function()
    hl.bind("j",
        hl.dsp.layout("mfact -0.01"),
        { description = "Decrease master layout ratio", repeating = true }
    )
    hl.bind("k",
        hl.dsp.layout("mfact +0.01"),
        { description = "Increase master layout ratio", repeating = true }
    )
    hl.bind("g",
        hl.dsp.layout("mfact exact 0.618"),
        { description = "Reset master layout ratio" }
    )
    hl.bind("catchall", hl.dsp.no_op())
    hl.bind("escape", hl.dsp.submap("reset"))
end)
