return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
		},
		opts = function()
			require("mason").setup({})

			-- 1. Get those capabilities (so completion works!)
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- 2. Define a default config for ALL servers
			-- This effectively replaces the old lspconfig.util.default_config
			vim.lsp.config("*", {
				capabilities = capabilities,
				root_markers = { ".git", ".qmlls.ini" }, -- Helpful for finding root!
			})

			-- 3. Use Mason to loop over installed servers and "Enable" them natively
			require("mason-lspconfig").setup({
				ensure_install = {
					"clangd",
					"qmlls",
					"lua_ls",
				},
				handlers = {
					function(server_name)
						-- NATIVE POWER! ⚡
						-- If the server needs specific settings (like lua_ls), we config it first
						if server_name == "lua_ls" then
							vim.lsp.config("lua_ls", {
								settings = {
									Lua = { diagnostics = { globals = { "vim", "oxwm" } } },
								},
							})
						end

						-- Then we simply ENABLE it!
						-- This sets up the filetype autocmds internally.
						vim.lsp.enable(server_name)
					end,
				},
			})

			local cmp = require("cmp")
			local auto_select = true
			return {
				-- ... (Keep your existing completion/mapping config below) ...
				completion = {
					completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
				},
				preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
				mapping = cmp.mapping.preset.insert({
					["<Down>"] = cmp.mapping.select_next_item(),
					["<Up>"] = cmp.mapping.select_prev_item(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "path" },
				}),
			}
		end,
	},
}
