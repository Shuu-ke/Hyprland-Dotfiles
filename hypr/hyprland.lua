
-- Split configuration into multiple modules
-- Each file in modules/ handles a specific section

require("modules.monitors")            -- Monitor settings
require("modules.defaultApps")         -- Default application assignments
require("modules.autostart")           -- Autostart processes on login
require("modules.environment")         -- Environment variables
require("modules.permissions")         -- Permission configuration 
require("modules.appearance")          -- Look and feel (gaps, borders, decoration, etc.)
require("modules.animations")          -- Curves and animation definitions
require("modules.layouts")             -- Dwindle, Master, and Scrolling layouts
require("modules.input")               -- Input device and gesture configuration
require("modules.keybindings")         -- All keybindings (SUPER + ...)
require("modules.window-workspace-rules") -- Window rules, workspace rules, and layer rules
