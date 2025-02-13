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
      buffers = {
        layout_config = {
          height = 0.2
        }
      },
      current_buffer_fuzzy_find = {
        theme = "dropdown",
      },
      find_files = {
        hidden = false,
        theme = "ivy",
      },
      live_grep = {
        theme = "ivy",
      },
    },
    defaults = {
      file_ignore_patterns = {
        "node_modules/*",
      },
      layout_config = {
        bottom_pane = {
          preview_cutoff = 60,
        },
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
    { "<Leader>g", '<cmd>Telescope buffers<CR>' },
    { "<Leader>b", '<cmd>Telescope current_buffer_fuzzy_find<CR>' },
    { "<Leader>f", '<cmd>Telescope find_files<CR>' },
    { "<Leader>t", '<cmd>Telescope live_grep<CR>' },
  },
}
