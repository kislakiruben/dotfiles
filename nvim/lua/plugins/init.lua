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
  },
  {
    'nanozuki/tabby.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
  'lewis6991/gitsigns.nvim',
}
