require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "gopls",
  "bashls",
  "ansiblels",
  "dockerls",
  "docker_compose_language_service",
  "eslint",
  "jsonls",
  "lua_ls",
  "pyright",
  "ruff",
  "stylua",
  "tailwindcss",
  "taplo",
  "terraformls",
  "tflint",
  "vtsls",
  "vue_ls",
  "yamlls",
}

vim.lsp.enable(servers)

-- to configure lsps further read :h vim.lsp.config
local vue_language_server_path = vim.fn.stdpath "data"
  .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"
local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = vue_language_server_path,
  languages = { "vue" },
  configNamespace = "typescript",
}
vim.lsp.config("vtsls", {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          vue_plugin,
        },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})
