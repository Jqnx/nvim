-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "doomchad",
	transparency = true,

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.ui = {
	cmp = {
		style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
	},

	telescope = { style = "borderless" }, -- borderless / bordered

	statusline = {
		enabled = true,
		theme = "minimal", -- default/vscode/vscode_colored/minimal
		-- default/round/block/arrow separators work only for default statusline theme
		-- round and block will work for minimal theme only
		separator_style = "default",
		order = nil,
		modules = nil,
	},

	tabufline = {
		enabled = true,
	},
}

M.nvdash = {
	load_on_startup = true,
	buttons = {
		{ txt = "  Find File", keys = "f", cmd = "Telescope find_files" },
		{ txt = "  Recent Files", keys = "r", cmd = "Telescope oldfiles" },
		--{ txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
		{ txt = "󰒲  Lazy", keys = "l", cmd = "Lazy" },
		{ txt = " Sessions", keys = "s", cmd = "AutoSession search" },
		{ txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
		{ txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },

		{ txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },

		{
			txt = function()
				local stats = require("lazy").stats()
				local ms = math.floor(stats.startuptime) .. " ms"
				return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
			end,
			hl = "NvDashFooter",
			no_gap = true,
			content = "fit",
		},

		{ txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
	},
}

return M
