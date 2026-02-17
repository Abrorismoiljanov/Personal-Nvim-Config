-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.ui = {
  tabline = {
    bufferline = {
      -- minimum width of each tab
      min_width = 40,  -- default is like 10, make it wider
      max_width = 50,  -- optional
    },
  },
}


M.base46 = {
	theme = "catppuccin",
  transparency = true;
  hl_override = require("custom.highlights").override,

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
