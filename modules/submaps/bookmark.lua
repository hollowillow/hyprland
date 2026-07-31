-- sumbap with auto reset
hl.bind(scriptMod .. " + B",
    hl.dsp.submap("BOOKMARK"),
    { description = "Enter bookmark submap" }
)
hl.define_submap("BOOKMARK", "reset", function()
    hl.bind("o",
        hl.dsp.exec_cmd('float-term "bk search | xargs -I % xdg-open %"'),
        { description = "Open bookmark in default browser" }
    )
    hl.bind("a",
        hl.dsp.exec_cmd('float-term "bk interactive"'),
        { description = "Open bookmark in default browser" }
    )
    hl.bind("escape", hl.dsp.submap("reset"))
end)
