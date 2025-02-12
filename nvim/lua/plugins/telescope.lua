return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
    "isak102/telescope-git-file-history.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  lazy = false,
  opts = {
    pickers = {
      find_files = {
        hidden = true,
      },
      git_files = {
        hidden = true,
      },
    },
    defaults = {
      file_ignore_patterns = {
        "node_modules/*",
      },
    },
    extensions = {
      fzf = {},
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("undo")
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("git_file_history")
  end,
  keys = {
    { '<Leader>g',  '<cmd>Telescope current_buffer_fuzzy_find theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>t',  '<cmd>Telescope find_files theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fg', '<cmd>Telescope live_grep theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>b',  '<cmd>Telescope buffers theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fh', '<cmd>Telescope help_tags theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>gt', '<cmd>Telescope git_files theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fk', '<cmd>Telescope keymaps theme=get_ivy layout_config={height=0.5}<CR>' },
    { '<Leader>fc', '<cmd>Telescope builtin theme=get_ivy layout_config={height=0.5}<CR>' },
  },
}
