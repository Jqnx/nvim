return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		automatic_enable = false,
		ensure_installed = {
			-- GO
			"goimports",
			"gofumpt",
			"gomodifytags",
			"impl",
			"golangci-lint",
			"delve",
			-- Typescript
			"vtsls",
			-- TailwindCSS
			"tailwindcss",
			-- Linting
			"eslint",
			-- Vue
			"vue-ls",
			-- Lua
			"stylua",
			"lua_ls",
			-- Python
			"pyright",
			"ruff",
			"black",
			-- SQL
			"sqlfmt",
			-- Docker
			"hadolint",
			-- Markdown
			"vale",
			-- Svelte
			"svelte-language-server",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
