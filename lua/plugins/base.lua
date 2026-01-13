return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {

			defaults = {
				borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
				defaults = {
					border = {
						find_files = { 0, 0, 0, 0 },
					},
				},
				preview = {
					treesitter = false,
				},
			},
		},
	},
	{
		"SmiteshP/nvim-navic",
		opts = {
			lsp = {
				auto_attach = true,
			},
			depth_limit = 0,
		},
	},
	{ "folke/tokyonight.nvim" },
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
			{
				"https://github.com/gentoo/gentoo-syntax",
			},
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	{
		"NvChad/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				mode = "background",
				names = false,
			},
		},
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		opts = {

			-- Nya! Enable the plugin globally
			enabled = true,

			-- This helps if the plugin feels "laggy"
			debounce = 100,

			-- "Anti-Conceal" is super important!
			-- It un-hides the markdown syntax on the line you are currently editing.
			anti_conceal = {
				enabled = true,
				ignore = {
					code_background = true,
					sign = true,
				},
			},

			heading = {
				-- Turn on the pretty icons and backgrounds
				enabled = true,
				-- 'block' width makes the background color only cover the text,
				-- instead of the 'full' window width (which looks like stripes!)
				width = "full",
				position = "overlay",
				atx = true,
				border = true,
				border_virtual = true,
				above = "▄",
				-- Used below heading for border.
				below = "▀",

				-- Let's give the headings a little breathing room on the left
				left_margin = 0,
				left_pad = 2,

				-- Cute icons for the sidebar signs!
				signs = { "󰫎 " },

				-- Use these fancy icons instead of the standard #
				icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
			},

			code = {
				enabled = true,
				-- 'language' makes it look like a real IDE block
				style = "full",
				width = "block",
				-- A little padding makes the code feel less claustrophobic
				left_pad = 2,
				right_pad = 2,
				-- Put the language name on the right side, it looks cleaner
				position = "right",
				-- This draws a nice border around the code block
				border = "thick",
			},

			bullet = {
				enabled = true,
				-- Let's replace those boring dots with these fun shapes!
				icons = { "●", "○", "◆", "◇" },
				left_pad = 3,
			},

			checkbox = {
				enabled = true,
				-- Let's make the checked boxes look satisfying!
				unchecked = { icon = "󰄱 " },
				checked = { icon = "󰱒 " },
				-- Custom "Todo" state for when you're feeling ambitious
				custom = {
					todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo" },
				},
			},

			-- This makes blockquotes (like > text) look like a solid bar
			quote = {
				enabled = true,
				icon = "▋",
			},

			-- Tables can look broken in raw markdown, this aligns them beautifully!
			pipe_table = {
				enabled = true,
				style = "full",
				cell = "padded",
				alignment_indicator = "━",
			},
		},
	},
}
