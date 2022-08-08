-- Just an example, supposed to be placed in /lua/custom/
local M = {}
local override = require "custom.override"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "vscode_dark",
  hl_override = {
    CursorLine = {bg = "one_bg3"},
    Visual = {bg = "lightbg"}
  },
}

M.plugins = {
   override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["goolord/alpha-nvim"] = override.alpha,
    ["williamboman/mason.nvim"] = override.mason,
    ["nvim-telescope/telescope.nvim"] = override.telescope
   },
   user = require "custom.plugins",
   
}

M.mappings = require "custom.mappings"

return M
