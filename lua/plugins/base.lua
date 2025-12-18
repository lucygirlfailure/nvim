return {
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "ellisonleao/gruvbox.nvim" },
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "rebelot/kanagawa.nvim" },
	{ "folke/tokyonight.nvim" },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
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
		"raddari/last-color.nvim",
		event = "VimEnter",
		config = function()
			require("last-color").setup({
				-- Optional configuration
				-- auto_save = true, -- Save colorscheme on :colorscheme command (default true)
				-- auto_load = true, -- Load colorscheme on startup (default true)
			})
		end,
	},
}
