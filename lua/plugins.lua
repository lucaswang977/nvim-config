return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight-night]])
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require('lualine').setup()
    end,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
    config = function()
      require('Comment').setup()
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require('bufferline').setup()
    end,
  },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require('nvim-autopairs').setup({
        disable_filetype = { "TelescopePrompt" , "vim" },
      })
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    config = function()
      require('ibl').setup()
    end
  },
  {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  },
  {
    "ojroques/nvim-oscyank",
    config = function()
      vim.keymap.set('v', '<leader>y', require('osc52').copy_visual)
    end,
  },
  {
    "ggandor/leap.nvim",
    dependencies = { "tpope/vim-repeat" },
    config = function ()
      require 'leap'.add_default_mappings()
    end
  },
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow"
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function ()
      require("symbols-outline").setup()
    end
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function ()
      require("symbols-outline").setup()
    end
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html", "typescript", "tsx", "kdl", "prisma" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function ()
      local rainbow_delimiters = require 'rainbow-delimiters'

      vim.g.rainbow_delimiters = {
          strategy = {
              [''] = rainbow_delimiters.strategy['global'],
              vim = rainbow_delimiters.strategy['local'],
          },
          query = {
              [''] = 'rainbow-delimiters',
              lua = 'rainbow-blocks',
          },
          highlight = {
              'RainbowDelimiterRed',
              'RainbowDelimiterYellow',
              'RainbowDelimiterBlue',
              'RainbowDelimiterOrange',
              'RainbowDelimiterGreen',
              'RainbowDelimiterViolet',
              'RainbowDelimiterCyan',
          },
      }
    end
  },
}
