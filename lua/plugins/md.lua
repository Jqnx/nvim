return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	cmd = {
		"RenderMarkdown",
	},
	keys = {
		{ "<leader>E", "<cmd>RenderMarkdown enable<cr>", desc = "Render markdown" },
	},
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
}
