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
    -- ['<A-j>'] = {"<cmd> MoveLine(1)<CR>", "Move line up"},
    -- ['<A-k>'] = {"<cmd> MoveLine(-1)<CR>", "Move line up"},
  },
  v = {
    -- ['<A-j>'] = {"<cmd> MoveBlock(1)<CR>", "Move line down"},
    -- ['<A-k>'] = {"<cmd> MoveBlock(-1)<CR>", "Move line up"},
    ['>'] = {">gv", "Indent right"},
    ['<'] = {"<gv", "Indent left"}
  },
  -- i = {
  --   ['<A-j>'] = {"<Esc><cmd> :m .+1<CR>==gi", "Move line up"},
  --   ['<A-k>'] = {"<Esc><cmd> :m .-2<CR>==gi", "Move line up"},
  -- },
}


M.nvimtree = {
  n = {
    -- ["<C-n>"] = {},
    ["<leader>n"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    -- ["<leader>n"] = {"<cmd> Telescope file_browser <CR>", "   toggle file-browser" }
  }
}

M.lspconfig = {
  n = {
    ["<leader>rn"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "   lsp rename",
    },
    ["d["] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "   goto prev",
    },

    ["d]"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "   goto_next",
    },
  }
}

return M
