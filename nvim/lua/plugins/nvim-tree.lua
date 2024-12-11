-- file explorer
return {
  'nvim-tree/nvim-tree.lua',
  cmd = 'NvimTreeFindFileToggle',
  keys = { { '<Leader>e', '<cmd>NvimTreeFindFileToggle<CR>' } },
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  config = {
    respect_buf_cwd = true,
    sort_by = 'case_sensitive',
    view = {
      adaptive_size = true,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  },
}
