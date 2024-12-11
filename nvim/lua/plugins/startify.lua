-- startup page
return {
  'mhinz/vim-startify',
  lazy = false,
  keys = { { '<Leader>S', '<cmd>Startify<CR>' } },
  config = function()
    vim.g['startify_lists'] = {{type = 'bookmarks', header = {'Bookmarks'}}}
    vim.g['startify_bookmarks'] = {
      { i = '~/.config/nvim/init.lua' },
      { p = '~/.config/nvim/lua/plugins' },
      { c = '~/.config/nvim/lua/config.lua' },
      { o = '~/.config/nvim/lua/options.lua' },
      { s = '~/.config/nvim/after/plugin' },
      { z = '~/.zshrc' },
      { g = '~/.gitconfig' },
      { t = '~/.tmux.conf'},
    }
  end,
}
