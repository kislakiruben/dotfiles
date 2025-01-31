-- utilities. autocomplete, surround, pair, etc ...
return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.comment').setup()
    require('mini.completion').setup()
    require('mini.fuzzy').setup()
    require('mini.jump2d').setup()
    require('mini.surround').setup()
    require('mini.indentscope').setup({
      draw = {
        animation = require('mini.indentscope').gen_animation.none()
      }
    })
  end
}
