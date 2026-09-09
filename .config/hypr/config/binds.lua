---------------------
---- KEYBINDINGS ----
---------------------

-- Main Modifier
local mainMod = "SUPER"
local noctCall = "noctalia msg "
local launchPrefix = "uwsm app -- " -- if you are not using UWSM, make this empty (e.g. "")

-- 1. Applications
hl.bind(mainMod .. " + Return",                       hl.dsp.exec_cmd(launchPrefix .. TERMINAL), { description = "Terminal" })
hl.bind("CONTROL + ALT + Escape",                     hl.dsp.exec_cmd(launchPrefix .. TERMINAL .. " -e btop"), { description = "Btop++" })
hl.bind(mainMod .. " + E",                            hl.dsp.exec_cmd(launchPrefix .. FILE_MANAGER), { description = "File manager" })
hl.bind(mainMod .. " + T",                            hl.dsp.exec_cmd(launchPrefix .. EDITOR), { description = "Editor" })
hl.bind(mainMod .. " + C",                            hl.dsp.exec_cmd(launchPrefix .. CALCULATOR), { description = "Calculator" })
hl.bind("XF86Calculator",                             hl.dsp.exec_cmd(launchPrefix .. CALCULATOR))
hl.bind(mainMod .. " + B",                            hl.dsp.exec_cmd(launchPrefix .. BROWSER), { description = "Browser" })
hl.bind(mainMod .. " + Escape",                       hl.dsp.exec_cmd("hyprctl kill"), { description = "Kill" })
hl.bind(mainMod .. " + Q",                            hl.dsp.window.close(), { description = "Close" })

-- 2. Shell
hl.bind(mainMod .. " + Z",                            hl.dsp.exec_cmd(noctCall .. "settings-toggle"), { description = "Settings" })
hl.bind(mainMod .. " + X",                            hl.dsp.exec_cmd(noctCall .. "panel-toggle control-center"), { description = "Control center" })
hl.bind(mainMod .. " + Space",                        hl.dsp.exec_cmd(noctCall .. "panel-toggle launcher"), { description = "Launcher" })
hl.bind(mainMod .. " + period",                       hl.dsp.exec_cmd(noctCall .. "panel-toggle launcher /emo"), { description = "Emoticons" })
hl.bind(mainMod .. " + L",                            hl.dsp.exec_cmd(noctCall .. "session lock"), { description = "Session lock" })
hl.bind(mainMod .. " + ALT + C",                      hl.dsp.exec_cmd(noctCall .. "panel-toggle session"), { description = "Session controls" })
hl.bind(mainMod .. " + SHIFT + W",                    hl.dsp.exec_cmd(noctCall .. "panel-toggle wallpaper"), { description = "Wallpapers" })
hl.bind(mainMod .. " + V",                            hl.dsp.exec_cmd(noctCall .. "panel-toggle clipboard"), { description = "Clipboard" })
hl.bind(mainMod .. " + A",                            hl.dsp.exec_cmd(noctCall .. "panel-toggle control-center notifications"), { description = "Notifications" })
hl.bind(mainMod .. " + K",                            hl.dsp.exec_cmd(noctCall .. "panel-toggle kenn/keybind-cheatsheet:cheatsheet"), { description = "Keybinds" })

-- 3. Monitor moves
hl.bind(mainMod .. " + SHIFT + 1",                    hl.dsp.window.move({ monitor = MONITOR1 }), { description = "Move to monitor 1" })
hl.bind(mainMod .. " + SHIFT + 2",                    hl.dsp.window.move({ monitor = MONITOR2 }), { description = "Move to monitor 2" })
hl.bind(mainMod .. " + SHIFT + 3",                    hl.dsp.window.move({ monitor = MONITOR3 }), { description = "Move to monitor 3" })

-- 4. Workspace moves
hl.bind(mainMod .. " + CONTROL + SHIFT + Right",      hl.dsp.window.move({ workspace = "m+1" }), { description = "Move to workspace right" })
hl.bind(mainMod .. " + CONTROL + SHIFT + Left",       hl.dsp.window.move({ workspace = "m-1" }), { description = "Move to workspace left" })
for i = 1, NUM_WPM do
  local key = i % 10
  hl.bind(mainMod .. " + CONTROL + SHIFT + " .. key,  hl.dsp.window.move({ workspace = "m~" .. i }), { description = "Move to workspace " .. i })
end

-- 5. Window focus
hl.bind(mainMod .. " + Left",                         hl.dsp.focus({ direction = "left" }), { description = "Focus left" })
hl.bind(mainMod .. " + Right",                        hl.dsp.focus({ direction = "right" }), { description = "Focus right" })
hl.bind(mainMod .. " + Up",                           hl.dsp.focus({ direction = "up" }), { description = "Focus up" })
hl.bind(mainMod .. " + Down",                         hl.dsp.focus({ direction = "down" }), { description = "Focus down" })
hl.bind("ALT + Tab",                                  hl.dsp.window.cycle_next(), { description = "Cycle" })
hl.bind(mainMod .. " + Tab",                          hl.dsp.exec_cmd(noctCall .. "window-switcher"), { description = "Switch" })

-- 6. Monitor focus
hl.bind(mainMod .. " + 1",                            hl.dsp.focus({ monitor = MONITOR1 }), { description = "Monitor 1" })
hl.bind(mainMod .. " + 2",                            hl.dsp.focus({ monitor = MONITOR2 }), { description = "Monitor 2" })
hl.bind(mainMod .. " + 3",                            hl.dsp.focus({ monitor = MONITOR3 }), { description = "Monitor 3" })

-- 7. Window layout
hl.bind(mainMod .. " + SHIFT + Up",                   hl.dsp.window.move({ direction = "u" }), { description = "Move up" })
hl.bind(mainMod .. " + SHIFT + Right",                hl.dsp.window.move({ direction = "r" }), { description = "Move right" })
hl.bind(mainMod .. " + SHIFT + Left",                 hl.dsp.window.move({ direction = "l" }), { description = "Move left" })
hl.bind(mainMod .. " + SHIFT + Down",                 hl.dsp.window.move({ direction = "d" }), { description = "Move down" })
hl.bind(mainMod .. " + J",                            hl.dsp.layout("togglesplit"), { description = "Toggle split" })
hl.bind(mainMod .. " + D",                            hl.dsp.window.fullscreen({ mode = 1 }), { description = "Fill" })
hl.bind(mainMod .. " + F",                            hl.dsp.window.fullscreen(), { description = "Fullscreen" })
hl.bind(mainMod .. " + ALT + Space",                  hl.dsp.window.float({ action = "toggle" }), { description = "Float" })
hl.bind(mainMod .. " + minus",                        hl.dsp.window.resize({ x = -20, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + equal",                        hl.dsp.window.resize({ x = 20, y = 0, relative = true }), { repeating = true })

-- 8. Workspace focus
hl.bind(mainMod .. " + CONTROL + Right",              hl.dsp.focus({ workspace = "m+1" }), { description = "Go Right" })
hl.bind(mainMod .. " + CONTROL + Left",               hl.dsp.focus({ workspace = "m-1" }), { description = "Go Left" })
hl.bind(mainMod .. " + CONTROL + Down",               hl.dsp.focus({ workspace = "emptym" }), { description = "Next empty" })

-- Scroll through existing workspaces & monitors
-- hl.bind(mainMod .. " + mouse_up",                     hl.dsp.focus({ workspace = "m+1" }), { description = "Next workspace" })
-- hl.bind(mainMod .. " + mouse_down",                   hl.dsp.focus({ workspace = "m-1" }), { description = "Previous workspace" })
-- hl.bind(mainMod .. " + CONTROL + mouse_down",         hl.dsp.focus({ workspace = "m+1" }), { description = "Next workspace" })
-- hl.bind(mainMod .. " + CONTROL + mouse_up",           hl.dsp.focus({ workspace = "m-1" }), { description = "Previous workspace" })

-- Focus on workspace number
-- Absolute
-- for i = 1, NUM_WPM do
--     local key = i % 10
--     hl.bind(mainMod .. " + ALT + " .. key,            hl.dsp.focus({ workspace = i }), { description = "Workspace " .. i })
-- end
-- Relative
for i = 1, NUM_WPM do
  local key = i % 10
  hl.bind(mainMod .. " + CONTROL + " .. key,        hl.dsp.focus({ workspace = "m~" .. i }), { description = "Workspace " .. i })
end

-- Special workspace (scratchpad)
-- hl.bind(mainMod .. " + SHIFT + S",                    hl.dsp.window.move({ workspace = "special" }), { description = "Move to special" })
-- hl.bind(mainMod .. " + S",                            hl.dsp.workspace.toggle_special(), { description = "Toggle special" })


-- Zoom
-- local function zoomfunction(value)
--     local zoomvalue = hl.get_config("cursor:zoom_factor")
--     if (zoomvalue + value) > 3.0 then
--         hl.config({ cursor = { zoom_factor = 3.0 } })
--     elseif (zoomvalue + value) < 1.0 then
--         hl.config({ cursor = { zoom_factor = 1.0 } })
--     else
--         hl.config({ cursor = { zoom_factor = zoomvalue + value } })
--     end
-- end
-- hl.bind(mainMod .. " + Minus", function() zoomfunction(-0.3) end, { repeating = true})
-- hl.bind(mainMod .. " + Plus", function() zoomfunction(0.3) end, { repeating = true })

--# Zoom with keypad
-- hl.bind(mainMod .. " + code:82", function() zoomfunction(-0.3) end, { repeating = true })
-- hl.bind(mainMod .. " + code:86", function() zoomfunction(0.3) end, { repeating = true })



---------------------------
---- HARDWARE CONTROLS ----
---------------------------

-- Audio
hl.bind("XF86AudioRaiseVolume",                       hl.dsp.exec_cmd(noctCall .. "volume-up"),   { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",                       hl.dsp.exec_cmd(noctCall .. "volume-down"), { locked = true, repeating = true })
hl.bind("XF86AudioMute",                              hl.dsp.exec_cmd(noctCall .. "volume-mute"), { locked = true })
hl.bind("XF86AudioMicMute",                           hl.dsp.exec_cmd(noctCall .. "mic-mute"),    { locked = true })

-- Media
hl.bind("XF86AudioPlay",                              hl.dsp.exec_cmd(noctCall .. "media toggle"),   { locked = true })
hl.bind("XF86AudioPause",                             hl.dsp.exec_cmd(noctCall .. "media toggle"),   { locked = true })
hl.bind("XF86AudioNext",                              hl.dsp.exec_cmd(noctCall .. "media next"),     { locked = true })
hl.bind("XF86AudioPrev",                              hl.dsp.exec_cmd(noctCall .. "media previous"), { locked = true })

-- Brightness
hl.bind("XF86MonBrightnessUp",                        hl.dsp.exec_cmd(noctCall .. "brightness-up"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",                      hl.dsp.exec_cmd(noctCall .. "brightness-down"), { locked = true, repeating = true })

-------------------
---- UTILITIES ----
-------------------

-- 9. Screen Capture
hl.bind(mainMod .. " + P",                            hl.dsp.exec_cmd("hyprpicker -a -n"), { description = "Color picker" })
hl.bind("Print",                                      hl.dsp.exec_cmd(noctCall .. "screenshot-region"))
hl.bind(mainMod .. " + Print",                        hl.dsp.exec_cmd(noctCall .. "screenshot-fullscreen"))
hl.bind(mainMod .. " + SHIFT + P",                    hl.dsp.exec_cmd(noctCall .. "screenshot-region"), { description = "Screenshot (Region)" })
hl.bind(mainMod .. " + ALT + P",                      hl.dsp.exec_cmd(noctCall .. "screenshot-fullscreen"), { description = "Screenshot (Fullscreen)" })

-- Move & Resize with mouse
hl.bind(mainMod .. " + mouse:272",                    hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273",                    hl.dsp.window.resize())
