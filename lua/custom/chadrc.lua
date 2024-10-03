---@type ChadrcConfig
local M = {}

  M.ui = {
    theme = 'oxocarbon',
    tabufline = {
      enabled = false
    },
    transparency = true,
  }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
