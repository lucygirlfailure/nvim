require("config.lazy")
require("core.options")
require("core.keymaps")
require("mason-lspconfig").setup()
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
require("neocord").setup({
	logo_tooltip = "ur gay OwO",
})
vim.cmd.colorscheme("gruvbox")
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
				globals = { "vim" },
			},
		},
	},
})
