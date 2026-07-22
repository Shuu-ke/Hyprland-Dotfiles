-- Layouts
-- Dwindle: https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/
-- Master: https://wiki.hypr.land/Configuring/Layouts/Master-Layout/
-- Scrolling: https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/

hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
