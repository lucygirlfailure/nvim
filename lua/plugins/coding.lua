return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		config = function()
			require("nvim-treesitter").setup({
				ensure_installed = { "c", "lua", "cpp", "qmldir", "qmljs" },
				sync_install = false,
				auto_install = false,
				highlight = {
					enable = true,
				},
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				jsonc = { "prettierd", "prettier", stop_after_first = true },
				c = { "clang-format" },
				cpp = { "clang-format" },
				sh = { "shfmt" },
				bash = { "shfmt" },
				["gentoo-make-conf"] = { "shfmt_gentoo" },
				["gentoo-ebuild"] = { "shfmt_gentoo" },
				["gentoo-eclass"] = { "shfmt_gentoo" },
			},
			formatters = {
				["clang-format"] = {
					prepend_args = {
						"--style={BasedOnStyle: LLVM, BreakBeforeBraces: Allman, ColumnLimit: 300}",
					},
				},
				shfmt_gentoo = {
					-- Point to the standard shfmt executable
					command = "shfmt",
					-- Override arguments for Gentoo compliance:
					-- -i 0      : Indent with tabs (Mandatory for Gentoo)
					-- -ln bash  : Treat as bash (ebuilds are bash)
					-- -ci       : Switch case indentation (Standard in many ebuilds)
					-- -sr       : Space after redirect operators (Optional, preference)
					args = { "-i", "0", "-ln", "bash", "-ci", "-sr", "-filename", "$FILENAME" },
				},
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},
	{
		"nvimdev/lspsaga.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- for syntax highlighting inside the popup
			"nvim-tree/nvim-web-devicons", -- for pretty icons
		},
		config = function()
			require("lspsaga").setup({
				ui = {
					border = "rounded",
				},
				lightbulb = { enable = false },
				symbol_in_winbar = { enable = false },
				hover = {
					max_width = 0.6,
					open_link = "gx",
					open_browser = "!google-chrome",
				},
			})
		end,
	},
}
