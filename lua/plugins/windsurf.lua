return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		{
			"Exafunction/windsurf.nvim",
			cmd = {
				"Codeium",
			},
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
			config = function()
				require("codeium").setup({})
			end,
		},
	},

	opts = function(_, opts)
		table.insert(opts.sources, 1, { name = "codeium" })
	end,
}
