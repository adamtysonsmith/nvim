local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end
    },
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  { "williamboman/mason-lspconfig.nvim" },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "tsserver",
        "rust-analyzer",
        "svelte"
      }
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        adaptive_size = true
      }
    }
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
}

return plugins
