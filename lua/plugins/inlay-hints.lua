return {
	"MysticalDevil/inlay-hints.nvim",
	event = "LspAttach",
	dependencies = { "neovim/nvim-lspconfig" }, -- optional
	config = function()
		require("inlay-hints").setup({
			commands = { enable = true },
			autocmd = { enable = true },
		})
	end,
}
