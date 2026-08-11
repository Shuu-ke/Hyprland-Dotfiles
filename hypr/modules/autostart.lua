-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
  hl.exec_cmd("noctalia")
end)

-- Mute microphone automatically on startup
hl.on("hyprland.start", function ()
    hl.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 1")
end)

hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
end)
