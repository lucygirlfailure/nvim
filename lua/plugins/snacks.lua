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
				sources = {
					files = {
						prompt = " ",
						cmd = "fd",
						hidden = true,
					},
					grep = {
						prompt = " ",
						cmd = "rg",
						hidden = true,
					},
				},
			},
		},
	},
}
