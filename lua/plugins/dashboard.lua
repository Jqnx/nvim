return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local splash = require("milli").load({ splash = "vibecat" })
		local header = splash.frames[1]

		if header then
			table.insert(header, "")
			table.insert(header, "")
		end

		local shortcuts = {
			{ icon = "   ", desc = "New File", group = "DiagnosticError", key = "n", action = "enew" },
			{ icon = "   ", desc = "Find File", group = "DiagnosticWarn", key = "f", action = "Telescope find_files" },
			{ icon = "   ", desc = "Recent Files", group = "DiagnosticInfo", key = "o", action = "Telescope oldfiles" },
			{ icon = "   ", desc = "Sessions", group = "DiagnosticHint", key = "s", action = "AutoSession search" },
			{ icon = "   ", desc = "Themes", group = "DiagnosticOk", key = "t", action = "Telescope themes" },
			{ icon = "   ", desc = "Keybinds", group = "Include", key = "m", action = "NvCheatsheet" },
			{ icon = "   ", desc = "Quit", group = "NonText", key = "q", action = "qa" },
		}

		require("dashboard").setup({
			theme = "hyper",
			config = {
				header = header,
				shortcut = shortcuts,
				packages = { enable = true },
				project = {
					enable = false,
				},
				mru = {
					enable = false,
				},
				footer = {},
			},
			hide = {
				statusline = true,
				tabline = true,
				winbar = true,
			},
		})

		require("milli").dashboard({ splash = "vibecat", loop = true })
	end,
}
