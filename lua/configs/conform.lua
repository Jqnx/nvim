local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    fish = { "fish_indent" },
    go = { "goimports", "gofumpt" },
    bash = { "shfmt" },
    terraform = { "terraform_fmt" },
    tf = { "terraform_fmt" },
    ["terraform-vars"] = { "terraform_fmt" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    sql = { "sqlfmt" },
    vue = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "black" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    lsp_format = "fallback",
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
