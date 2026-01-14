local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.clipboard = "unnamedplus"
opt.smartindent = true
opt.hlsearch = true
vim.diagnostic.config({
	virtual_text = {
		spacing = 2,
		source = true,
	},
})
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "oxwm" },
			},
		},
	},
})
vim.lsp.config("qmlls", {
	root_dir = vim.fs.root(0, ".qmlls.ini"),
	cmd = { "qmlls6" },
	flags = {
		debounce_text_changes = 500,
	},
})
vim.lsp.enable({ "qmlls" })
vim.lsp.config("termux-language-server", {
	cmd = { "termux-language-server" }, -- Ensure this is in your PATH
	filetypes = {
		"sh",
		"bash",
		"gentoo-package-keywords",
		"gentoo-package-mask",
		"gentoo-package-use",
		"gentoo-make-conf",
		"gentoo-ebuild",
		"gentoo-eclass",
	},
})
