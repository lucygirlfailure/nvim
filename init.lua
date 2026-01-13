require("config.lazy")
require("core.options")
require("core.keymaps")
require("mason-lspconfig").setup()
vim.cmd.colorscheme("wallust")
vim.opt.termguicolors = true
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp" },
	callback = function()
		vim.bo.keywordprg = "cppman"
	end,
})
