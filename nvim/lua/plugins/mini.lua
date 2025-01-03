-- utilities. autocomplete, surround, pair, etc ...
return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.align').setup()
    require('mini.comment').setup()
    require('mini.completion').setup()
    require('mini.fuzzy').setup()
    require('mini.jump').setup()
    require('mini.jump2d').setup()
    require('mini.misc').setup()
    require('mini.pairs').setup()
    -- require('mini.statusline').setup()
    require('mini.surround').setup()
    require('mini.trailspace').setup()
    require('mini.ai').setup()
  end
 }
