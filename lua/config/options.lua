-- set opt to make it easier
local opt = vim.opt

-- basic functionality
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.tabstop = 2
opt.shiftwidth = 4
vim.cmd.colorscheme("wallust")

vim.diagnostic.config({
	virtual_text = {
		spacing = 2,
		source = true
	},
})
