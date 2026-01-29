-- set opt to make it easier
local opt = vim.opt
-- disable netrw for nvimtree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- basic functionality
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.tabstop = 2
opt.shiftwidth = 4
opt.swapfile = false
opt.termguicolors = true
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "oxwm" },
			},
		},
	},
})
vim.diagnostic.config({
	virtual_text = {
		spacing = 2,
		source = true,
	},
})
