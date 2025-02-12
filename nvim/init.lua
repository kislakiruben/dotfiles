require("config.lazy")

-- require('ui.tabby')
require('ui.feline')
require("formatter").setup({
  logging = false,
  filetype = {
    css = {
      require("formatter.defaults.prettierd")
    },
    html = {
      require("formatter.defaults.prettierd")
    },
    javascript = {
      require("formatter.defaults.prettierd")
    },
  },
  ["*"] = {
    require("formatter.defaults.prettierd")
  }
})
