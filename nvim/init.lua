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
require('ui.harpoon')
require("formatter").setup({
  logging = false,
  filetype = {
    css = {
      require("formatter.defaults.prettierd")
    },
    html = {
      require("formatter.defaults.prettierd")
    },
    javascript = {
      require("formatter.defaults.prettierd")
    },
  },
  ["*"] = {
    require("formatter.defaults.prettierd")
  }
})
require("lspconfig").biome.setup {}
