return {
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "sqlfmt" } },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = { ensure_installed = { "sql" } },
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        go = { "goimports", "gofumpt" },
        bash = { "shfmt" },
        terraform = { "terraform_fmt" },
        tf = { "terraform_fmt" },
        ["terraform-vars"] = { "terraform_fmt" },
        javascript = { "prettier" },
        sql = { "sqlfmt" },
      }
    end,
  },
}
