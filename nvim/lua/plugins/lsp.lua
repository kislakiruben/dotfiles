return {
  {
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
          "sorbet", -- ruby
          "tailwindcss",
          "vtsls",  -- js, ts
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
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/vim-vsnip-integ",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-vsnip",
    },
    config = function()
      require("cmp").setup({
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
          { name = "cmdline" },
          { name = "vsnip" },
        },
      })
    end
  },
}
