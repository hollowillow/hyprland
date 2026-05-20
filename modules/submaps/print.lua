hl.bind("Print",
    hl.dsp.exec_cmd("grim && notify-send -u low 'Saved a screenshot of the screen'"),
    { description = "Take a screenshot of entire screen and save it" }
)
hl.bind("SHIFT + Print",
    hl.dsp.exec_cmd(
        'grim -g "$(slurp)" && notify-send -u low "Saved a screenshot of the selection"'
    ),
    { description = "Take a screenshot of selection area and save it" }
)
hl.bind("CONTROL + Print",
    hl.dsp.exec_cmd(
        '(grim -g "$(slurp)" - | wl-copy) && notify-send -u low "Copied a screenshot of the selection"'
    ),
    { description = "Take a screenshot of selection area and copy it" }
)
hl.bind("ALT + Print",
    hl.dsp.exec_cmd([[
        (hyprctl -j activewindow | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"' | grim -g -) &&
        notify-send -u low "Saved a screenshot of the window"
    ]]),
    { description = "Take a screenshot of selection area and copy it" }
)
