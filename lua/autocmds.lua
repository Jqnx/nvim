require("nvchad.autocmds")

local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
	command = ":silent !kitty @ set-spacing padding=0 margin=0",
})

autocmd("VimLeavePre", {
	command = ":silent !kitty @ set-spacing padding=10 margin=0",
})

--autocmd({ "BufWritePost" }, {
--  callback = function()
--    -- try_lint without arguments runs the linters defined in `linters_by_ft`
--    -- for the current filetype
--    require("lint").try_lint()
--  end,
--})
