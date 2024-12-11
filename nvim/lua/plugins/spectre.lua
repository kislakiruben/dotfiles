-- search and replace
return {
  'windwp/nvim-spectre',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  keys = {
    { '<Leader>sr', '<cmd>lua require("spectre").open()<CR>' },
    { '<Leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>' },
    { '<Leader>sp', '<cmd>lua require("spectre").open_file_search()<CR>' },
  },
  config = true,
}
