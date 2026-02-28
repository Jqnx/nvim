return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "User FilePost",
  keys = {
    { "<leader>dt", "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
  },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
