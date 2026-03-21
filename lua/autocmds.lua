require("nvchad.autocmds")

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
