-- Fuzzy Finder (files, lsp, etc)
return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<Leader>fl', '<cmd>Telescope current_buffer_fuzzy_find theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>ff', '<cmd>Telescope find_files layout_config={height=0.5}<CR>' },
    { '<Leader>fg', '<cmd>Telescope live_grep theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fb', '<cmd>Telescope buffers theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fh', '<cmd>Telescope help_tags theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fv', '<cmd>Telescope git_files theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fp', '<cmd>Telescope planets theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fk', '<cmd>Telescope keymaps theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fc', '<cmd>Telescope builtin theme=get_ivy layout_config={height=0.5}<CR>' },
  },
  config = {
    defaults = {
      mappings = {
        i = {
          ['<C-u>'] = false,
          ['<C-d>'] = false,
        },
      },
    },
  }
}
