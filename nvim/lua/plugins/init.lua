return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- LSPs
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- Copilot
  'github/copilot.vim',

  -- Appearance
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
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",  -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  },
}
