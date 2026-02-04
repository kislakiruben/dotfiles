return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  --@type snacks.Config
  opts = {
    input = { enabled = true },
    indent = { enabled = true },
    notify = { enabled = true, style = "fancy" },
    notifier = { enabled = true },
    scope = { enabled = true },
    words = { enabled = true },
    styles = {
      notification_history = {
        width = 0.9,
      },
    },
  },
  keys = {
    { "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification History" },
  },
}
