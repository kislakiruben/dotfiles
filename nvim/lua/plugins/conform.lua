return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      json = { "prettierd" },
      yaml = { "prettierd" },
      markdown = { "prettierd" },
      html = { "prettierd" },
      css = { "prettierd" },
    },
    format_on_save = {
      timeout_ms = 1000,
      lsp_format = "fallback",
    },
  },
}
