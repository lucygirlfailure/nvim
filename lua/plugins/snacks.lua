return {
	-- lazy.nvim
	{
		"folke/snacks.nvim",
		opts = {
			indent = {
				enabled = true,
			},
			words = {
				enabled = true,
			},
			picker = {
				enabled = true,
				prompt = " ",
				cmd = "fd",
			},
		},
	},
}
