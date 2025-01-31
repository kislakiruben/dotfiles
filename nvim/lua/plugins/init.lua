return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Useful status updates for LSP
  {
    'j-hui/fidget.nvim',
    config = true,
  },

  -- Autocomplete
  'hrsh7th/vim-vsnip-integ',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',

  -- LSPs, linters and formatters
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'mfussenegger/nvim-lint',
  'mhartington/formatter.nvim',
  'prettier/vim-prettier',

  -- Copilot
  -- 'github/copilot.vim',

  -- Appearance
  'EdenEast/nightfox.nvim',
  {
    'freddiehaddad/feline.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    },
  },
  {
    'nanozuki/tabby.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
  -- used only by feline (for now)
  'lewis6991/gitsigns.nvim',
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',  -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = true
  },

  -- Track time
  {
    "3rd/time-tracker.nvim",
    dependencies = {
      "3rd/sqlite.nvim",
    },
    event = "VeryLazy",
    opts = {
      data_file = vim.fn.stdpath("data") .. "/time-tracker.db",
    },
  },

  -- Bookmark files and code
  {
    "otavioschwanck/arrow.nvim",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      -- or if using `mini.icons`
      -- { "echasnovski/mini.icons" },
    },
    opts = {
      show_icons = true,
      leader_key = ';',        -- Recommended to be a single key
      buffer_leader_key = 'm', -- Per Buffer Mappings
    }
  }
}
