return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = require("configs.conform"),
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				-- Vim
				"vim",
				"vimdoc",
				-- Lua
				"lua",
				"luadoc",
				"printf",
				-- HTML & CSS
				"html",
				"css",
				-- GO
				"go",
				"gomod",
				"gowork",
				"gosum",
				-- Vue
				"vue",
				-- Sql
				"sql",
				-- Python
				"python",
				-- Docker
				"dockerfile",
				-- Svelte
				"svelte",
			},
		},
	},
}
