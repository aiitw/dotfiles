return {
  -- autoclose tags in html, jsx etc
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      require("custom.plugins.nvim-ts-autotag")
    end,
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["goolord/alpha-nvim"] = {
    after = "base46",
    disable = false,
    config = function()
      require "plugins.configs.alpha"
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["rmagatti/auto-session"] = {
    config = function()
      require "custom.plugins.auto-session"
    end
  },
  -- ["phaazon/hop.nvim"] = {
  --   branch = 'v2',
  --   event = 'BufReadPost',
  --   config = function()
  --     require'hop'.setup {}
  --   end
  -- },
  ["nvim-telescope/telescope-file-browser.nvim"] = {
    cmd = "Telescope",
    requires = {"nvim-telescope/telescope.nvim"},
  },
  ["nvim-telescope/telescope-fzf-native.nvim"] = {
    run = "make",
  },
  ["fedepujol/move.nvim"] = {
  },
  ["glepnir/lspsaga.nvim"] = {
    branch = "main",
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.lspsaga"
    end,
    setup = function ()
      require("core.utils").load_mappings "lspsaga"
    end
  },
  ["kevinhwang91/nvim-ufo"] = {
    after = "nvim-lspconfig",
    requires = "kevinhwang91/promise-async",
    config = function()
      require "custom.plugins.nvim-ufo"
    end
  },
  -- ["nvim-telescope/telescope.nvim"] = {
  --   cmd = "Telescope",
  --   config = function()
  --     require "plugins.configs.telescope"
  --   end,
  -- },
}
