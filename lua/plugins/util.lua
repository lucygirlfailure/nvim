return {
	{ "tpope/vim-fugitive" },
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		config = function()
			require("colorizer").setup()
		end,
	},
}
