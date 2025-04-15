return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        -- "ast_grep", -- js, ts, jsx, json, html
        "cssls",
        "gopls",
        "html",
        "jsonls",
        "lua_ls",
        "sorbet",   -- ruby
        "tailwindcss",
        "vtsls",    -- js, ts
      }
    })
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({})
      end,
      ["vtsls"] = function()
        require("lspconfig").vtsls.setup({
          root_dir = require("lspconfig").util.root_pattern(
            ".git",
            "yarn.lock",
            "package-lock.json",
            "pnpm-lock.yaml"
          ),
        })
      end,
    })
  end
}
