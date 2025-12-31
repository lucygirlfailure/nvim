vim.pack.add({
  { src = 'https://github.com/stevearc/oil.nvim.git' },
  { src = 'https://github.com/vyfor/cord.nvim' },
  { src = 'https://github.com/mason-org/mason.nvim.git' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons.git' },
  { src = 'https://github.com/nvim-mini/mini.pick.git' },
  { src = 'https://github.com/catgoose/nvim-colorizer.lua.git' },
  { src = 'https://github.com/akinsho/bufferline.nvim.git' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim.git' },
  { src = 'https://github.com/nvim-mini/mini.extra' },
})


require("oil").setup()
require("cord").setup()
require("mason").setup()
require('mini.extra').setup()
require("colorizer").setup()
require("mini.pick").setup()
require("bufferline").setup()
require("gitsigns").setup()
require("nvim-web-devicons").setup()
