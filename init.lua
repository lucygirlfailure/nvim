require("config.lazy")
require("core.options")
require("core.keymaps")
require("mason-lspconfig").setup()
require("neocord").setup({
	logo_tooltip = "ur gay OwO",
})
vim.cmd.colorscheme("wallust")
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
