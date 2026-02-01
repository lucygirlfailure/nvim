vim.cmd.colorscheme("wallust")
require("config.options")
require("config.keymaps")
require("config.lazy")
require("harpoon").setup({
	tabline = true,
})
