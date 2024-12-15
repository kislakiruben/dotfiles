require('options')
require('config')
require('lazy').setup({
  spec = {
    { import = 'plugins' },
  },
  -- automatically check for plugin updates
  checker = { enabled = false }
})
require('gitsigns').setup()

vim.cmd [[colorscheme duskfox]]

require('ui.tabby')
require('ui.feline')
