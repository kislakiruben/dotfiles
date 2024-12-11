require('options');
require('config');
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  -- automatically check for plugin updates
  checker = { enabled = true }
})

vim.cmd [[colorscheme duskfox]]
