-- file explorer
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
  },
  lazy = false,
  keys = {
    { "<Leader>e", "<cmd>NvimTreeFindFileToggle<cr>" },
    -- { '<Leader>f', '<cmd>NvimTreeFindFileFocus<cr>' }
  },
  config = {
    respect_buf_cwd = true,
    sort_by = "case_sensitive",
    git = {},
    view = {
      adaptive_size = true,
      float = {
        enable = true,
      },
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  },
}
