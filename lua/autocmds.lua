require("nvchad.autocmds")

-- Auto Cmds
local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
	-- command = ":silent !kitty @ set-spacing padding-left=0 padding-top=0 padding-right=0 margin=0",
	command = ":silent !alacritty msg config 'window.padding={x=0,y=0}'",
})

autocmd("VimLeavePre", {
	-- command = ":silent !kitty @ set-spacing padding=10 margin=0",
	command = ":silent !alacritty msg config 'window.padding={x=10,y=5}'",
})

--autocmd({ "BufWritePost" }, {
--  callback = function()
--    -- try_lint without arguments runs the linters defined in `linters_by_ft`
--    -- for the current filetype
--    require("lint").try_lint()
--  end,
--})

autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client:supports_method("textDocument/inlayHint") then
			vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
		end
	end,
})

-- User Cmds

local usercmd = vim.api.nvim_create_user_command

usercmd("InlayHintsToggle", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }), { bufnr = 0 })
end, {})

usercmd("InlayHintsEnable", function()
	vim.lsp.inlay_hint.enable(true, { bufnr = 0 })
end, {})

usercmd("InlayHintsDisable", function()
	vim.lsp.inlay_hint.enable(false, { bufnr = 0 })
end, {})
