local M = {}

-- M.telescope = {
-- }
M.disabled = {
  n = {
    -- ["<leader>n"] = {},
    -- ["<leader>rn"] = {},
  }
}
M.general = {
  n = {
    [';p'] = { "<cmd> HopPattern <CR>", "HopPattern" },
    [';f'] = { "<cmd> HopChar1CurrentLine <CR>", "HopChar1CurrentLine" },
    ['<C-a>'] = { "ggVG", "Select All"},
    ['x'] = {'"_x', "Delete without yank"},
    ['<C-Up>'] = {"<cmd>resize -2<CR>", "Resize split up"},
    ['<C-Down>'] = {"<cmd>resize +2<CR>", "Resize split down"},
    ['<C-Left>'] = {"<cmd>vertical resize -2<CR>", "Resize split left"},
    ['<C-Right>'] = {"<cmd>vertical resize +2<CR>", "Resize split right"},
    -- ['<A-j>'] = {"<cmd> MoveLine(1)<CR>", "Move line up"},
    -- ['<A-k>'] = {"<cmd> MoveLine(-1)<CR>", "Move line up"},
  },
  v = {
    -- ['<A-j>'] = {"<cmd> MoveBlock(1)<CR>", "Move line down"},
    -- ['<A-k>'] = {"<cmd> MoveBlock(-1)<CR>", "Move line up"},
    ['>'] = {">gv", "Indent right"},
    ['<'] = {"<gv", "Indent left"},
  },
  -- i = {
  --   ['<A-j>'] = {"<Esc><cmd> :m .+1<CR>==gi", "Move line up"},
  --   ['<A-k>'] = {"<Esc><cmd> :m .-2<CR>==gi", "Move line up"},
  -- },
}


M.nvimtree = {
  n = {
    ["<leader>n"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    -- ["<leader>n"] = {"<cmd> Telescope file_browser <CR>", "   toggle file-browser" }
  }
}

-- M.lspconfig = {
--   n = {
--     ["<leader>rn"] = {
--       function()
--         require("nvchad_ui.renamer").open()
--       end,
--       "   lsp rename",
--     },
--     ["d["] = {
--       function()
--         vim.diagnostic.goto_prev()
--       end,
--       "   goto prev",
--     },
--
--     ["d]"] = {
--       function()
--         vim.diagnostic.goto_next()
--       end,
--       "   goto_next",
--     },
--   }
-- }

M.lspsaga = {
  plugin = true,
  i = {
    ['<c-;>'] = {"<cmd>Lspsaga signature_help<cr>", "signature help"}
  },
  n = {
    ['<leader>ca'] = {"<cmd>Lspsaga code_action<CR>", "code action"},
    ['<leader>rn'] = {"<cmd>Lspsaga rename<CR>", "lsp rename"},
    ['gp'] = {"<cmd>Lspsaga preview_definition<CR>", "preview definition"},
    ['gd'] = {"<cmd>Lspsaga lsp_finder<CR>", "lsp finder"},
    ['K'] = {"<cmd>Lspsaga hover_doc<CR>", "hover doc"},
    ['[e'] = {"<cmd>Lspsaga diagnostic_jump_next<CR>", "jump to next"},
    [']e'] = {"<cmd>Lspsaga diagnostic_jump_prev<CR>", "jump to prev"},
  },
  v = {
    ['<leader>ca'] = {"<cmd><C-U>Lspsaga range_coed_action<CR>", "code action"},
  }
}

return M
