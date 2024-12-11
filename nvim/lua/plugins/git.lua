-- Git related plugins
return {
  'f-person/git-blame.nvim',
  cmd = 'GitBlameToggle',
  keys = { { '<Leader>gb', '<cmd>GitBlameToggle<CR>' } },
  config = function()
    vim.g['gitblame_date_format'] = '%r' -- relative date
    vim.g['gitblame_enabled'] = 0 -- default disabled
  end
}
