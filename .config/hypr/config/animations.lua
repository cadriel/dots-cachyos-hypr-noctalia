-----------------------
----- ANIMATIONS ------
-----------------------

hl.config({
    animations = {
        enabled = true,
    }
})

-- -- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
-- hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
-- hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
-- hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
-- hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
-- hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- -- Default springs
-- hl.curve("easy",           { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })

-- hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
-- hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
-- hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
-- hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
-- hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
-- hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
-- hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
-- hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
-- hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
-- hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
-- hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
-- hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
-- hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
-- hl.animation({ leaf = "workspaces",    enabled = true,  speed = 5.2,  bezier = "easeInOutCubic", style = "slide" })
-- hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 5.2,  bezier = "easeInOutCubic", style = "slide" })
-- hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 5.2,  bezier = "easeInOutCubic", style = "slide" })
-- hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Custom "weighted" curves
hl.curve("weightySlide",   { type = "bezier", points = { {0.16, 1},    {0.26, 1}    } }) -- fast launch, hard decel — workspace slides
hl.curve("softLand",       { type = "bezier", points = { {0.34, 1.35}, {0.64, 1}    } }) -- slight overshoot-settle — windows/scratchpad popping in
hl.curve("gracefulFade",   { type = "bezier", points = { {0.22, 1},    {0.36, 1}    } }) -- quick decel, no overshoot — anything appearing
hl.curve("quickFadeOut",   { type = "bezier", points = { {0.4, 0},     {1, 1}       } }) -- accelerates away — anything disappearing

-- Springs
hl.curve("easy",           { type = "spring", mass = 1,   stiffness = 238.1191, dampening = 24.21279333 })
hl.curve("graceful",       { type = "spring", mass = 1.1, stiffness = 170,      dampening = 20 })

hl.animation({ leaf = "global",           enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",           enabled = true,  speed = 5,    bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",          enabled = true,  speed = 3.5,  spring = "graceful" })
hl.animation({ leaf = "windowsIn",        enabled = true,  speed = 3.2,  bezier = "softLand",     style = "popin 85%" })
hl.animation({ leaf = "windowsOut",       enabled = true,  speed = 2.6,  bezier = "gracefulFade", style = "popin 90%" })

hl.animation({ leaf = "fadeIn",           enabled = true,  speed = 2.6,  bezier = "gracefulFade" })
hl.animation({ leaf = "fadeOut",          enabled = true,  speed = 2.2,  bezier = "quickFadeOut" })
hl.animation({ leaf = "fade",             enabled = true,  speed = 3,    bezier = "quick" })

hl.animation({ leaf = "layers",           enabled = true,  speed = 3.5,  bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",         enabled = true,  speed = 3.6,  bezier = "gracefulFade", style = "slide top" })
hl.animation({ leaf = "layersOut",        enabled = true,  speed = 2.4,  bezier = "quickFadeOut", style = "slide top" })

hl.animation({ leaf = "fadeLayersIn",     enabled = true,  speed = 2.4,  bezier = "gracefulFade" })
hl.animation({ leaf = "fadeLayersOut",    enabled = true,  speed = 2,    bezier = "quickFadeOut" })

hl.animation({ leaf = "workspaces",       enabled = true,  speed = 4.2,  bezier = "weightySlide", style = "slide" })
hl.animation({ leaf = "workspacesIn",     enabled = true,  speed = 4.2,  bezier = "weightySlide", style = "slide" })
hl.animation({ leaf = "workspacesOut",    enabled = true,  speed = 3.4,  bezier = "weightySlide", style = "slide" })

hl.animation({ leaf = "specialWorkspace", enabled = true,  speed = 3.6,  bezier = "softLand",     style = "slidevert" })

hl.animation({ leaf = "zoomFactor",       enabled = true,  speed = 6,    bezier = "quick" })