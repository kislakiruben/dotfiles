return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- LSPs
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- Appearance
  {
    'freddiehaddad/feline.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function()
      require('gitsigns').setup()
    end,
  },
  {
    'nanozuki/tabby.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
  -- used only by feline (for now)
  'lewis6991/gitsigns.nvim',
}
