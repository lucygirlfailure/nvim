vim.cmd.colorscheme("wallust")
require("config.lazy")
require("mason").setup()
require("core.options")
require("core.keymaps")
vim.opt.termguicolors = true
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp" },
	callback = function()
		vim.bo.keywordprg = "cppman"
	end,
})
