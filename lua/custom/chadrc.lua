---@type ChadrcConfig
local M = {}

  M.ui = {
    theme = 'tokyonight',
    tabufline = {
      enabled = false
    },
    transparency = true,
  }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
