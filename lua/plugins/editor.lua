return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        window = {
          width = 25,
        },
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><space>",
        LazyVim.pick("files", { root = false }),
        desc = "Find Files (cwd)",
      },
    },
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    -- branch = "develop", -- if you want develop branch
    -- keep in mind, it might break everything
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "mfussenegger/nvim-dap", -- (optional) only if you use `gopher.dap`
    },
    -- (optional) will update plugin's deps on every update
    build = ":GoInstallDeps",
    keys = {
      { "<leader>cg", desc = "Go" },
      { "<leader>cge", "<cmd>GoIfErr<cr>", desc = "if err != nil" },
      { "<leader>cgs", desc = "Go Structs" },
      { "<leader>cgsj", "<cmd>GoTagAdd json<cr>", desc = "Go Add Json Tags" },
    },
  },
}
