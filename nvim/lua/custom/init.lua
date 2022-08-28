-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)

-- local new_cmd = vim.api.nvim_create_user_command
-- local api = vim.api
-- local autocmd = api.nvim_create_autocmd
-- local map = vim.api.nvim_set_keymap

-- Change Hop.nvim highlight color
local opt = vim.opt

opt.shell = "fish"

vim.cmd("hi HopNextKey guifg=#05f2fa")
vim.cmd("hi HopNextKey1 guifg=#05f2fa")
vim.cmd("hi HopNextKey2 guifg=#05f2fa")
-- 
vim.api.nvim_set_keymap('n', '<A-j>', ":MoveLine(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ":MoveLine(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', ":MoveBlock(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<A-l>', ":MoveHChar(1)<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<A-h>', ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<A-l>', ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<A-h>', ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
--
