-- startup page
return {
  'mhinz/vim-startify',
  lazy = false,
  keys = { { '<Leader>S', '<cmd>Startify<CR>' } },
  config = function()
    vim.g['startify_lists'] = {
      { type = 'dir',       header = { 'Current Directory' } },
      { type = 'files',     header = { 'Recent Files' } },
      { type = 'bookmarks', header = { 'Bookmarks' } },
    }
    vim.g['startify_bookmarks'] = {
      { i = '~/.config/nvim/init.lua' },
      { p = '~/.config/nvim/lua/plugins' },
      { u = '~/.config/nvim/lua/ui' },
      { c = '~/.config/nvim/lua/config' },
      { z = '~/.zshrc' },
      { g = '~/.gitconfig' },
      { t = '~/.tmux.conf' },
      { a = '~/.oh-my-zsh/custom' },
    }
  end,
}
