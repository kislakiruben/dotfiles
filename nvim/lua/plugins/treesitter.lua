return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      pcall(require("nvim-treesitter.install").update { with_sync = true })
    end,
    config = function()
      require("nvim-treesitter.configs").setup({
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
        autotag = {
          enable = true,
        },
        ensure_installed = {
          "css",
          "go",
          "html",
          "javascript",
          "json",
          "lua",
          "ruby",
          "typescript",
        },
      })

      -- folding with treesitter
      vim.opt.foldmethod = "expr"
      vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      max_lines = 2,
    },
  },
}
