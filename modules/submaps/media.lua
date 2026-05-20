hl.bind("XF86MonBrightnessUp",
    hl.dsp.exec_cmd("hyprctl hyprsunset gamma +10"),
    { description = "Increase screen brightness" }
)
hl.bind("XF86MonBrightnessDown",
    hl.dsp.exec_cmd("hyprctl hyprsunset gamma -10"),
    { description = "Lower screen brightness" }
)

hl.bind("XF86AudioNext",
    hl.dsp.exec_cmd("playerctl --player=mpv,%any next"),
    { description = "Media playback next" }
)
hl.bind("XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl --player=mpv,%any playpause"),
    { description = "Media playback toggle pause" }
)
hl.bind("XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl --player=mpv,%any previous"),
    { description = "Media playback previous" }
)

hl.bind("XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { description = "Raise volume", repeating = true }
)
hl.bind("XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"),
    { description = "Lower volume", repeating = true }
)
hl.bind("XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { description = "Mute volume", repeating = true }
)
