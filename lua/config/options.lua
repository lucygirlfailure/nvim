-- set opt to make it easier
local opt = vim.opt
-- disable netrw for nvimtree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- basic functionality
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.tabstop = 8
opt.shiftwidth = 8
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
vim.lsp.config("clangd", {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		-- This is the magic flag often used in other editors to
		-- force detailed hover info if it's being shy!
		"--header-insertion=iwyu",
		"--completion-style=detailed",
	},
})
vim.diagnostic.config({
	virtual_text = {
		spacing = 2,
		source = true,
	},
})
require("ibl").setup({
	scope = {
		enabled = true, -- Turn off if you don't want the active scope highlighted
	},
	indent = {
		char = "·", -- This sets the character for the indentation line
	},
})
