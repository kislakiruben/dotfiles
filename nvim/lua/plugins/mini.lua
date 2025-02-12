return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.comment').setup()
    require('mini.completion').setup()
    require('mini.fuzzy').setup()
    require('mini.jump2d').setup()
  end
}
