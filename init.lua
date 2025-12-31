-- initial opts and setup
vim.cmd.colorscheme("wallust")
vim.o.termguicolors = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.clipboard = "unnamedplus"
vim.o.smartindent = true
vim.o.hlsearch = true
vim.g.mapleader = " "



-- plugins

-- setup plu(h)gins
require("plugins.alpha")
require("plugins.base")
require("plugins.cmp")
require("plugins.conform")
require("plugins.lsp")
require("plugins.lualine")






-- keymaps
local map = vim.keymap.set
map("n", "<A-1>", "<cmd> BufferLineGoToBuffer 1 <cr>")
map("n", "<A-2>", "<cmd> BufferLineGoToBuffer 2 <cr>")
map("n", "<A-3>", "<cmd> BufferLineGoToBuffer 3 <cr>")
map("n", "<A-4>", "<cmd> BufferLineGoToBuffer 4 <cr>")
map("n", "<A-5>", "<cmd> BufferLineGoToBuffer 5 <cr>")
map("n", "<A-6>", "<cmd> BufferLineGoToBuffer 6 <cr>")
map("n", "<A-7>", "<cmd> BufferLineGoToBuffer 7 <cr>")
map("n", "<A-8>", "<cmd> BufferLineGoToBuffer 8 <cr>")
map("n", "<A-9>", "<cmd> BufferLineGoToBuffer 9 <cr>")
map("n", "<A-0>", "<cmd> BufferLineGoToBuffer last <cr>")
map("n", "<leader>w", "<cmd> BufferLinePickClose <cr>")
map("n", "<leader>t", "<cmd> terminal <cr>")
map("t", "<esc>", "<c-\\><c-n>")
map("n", "<leader>ff", "<cmd>Oil <cr>")
map("n", "<leader>lg", "<cmd>Pick grep_live <cr>")
map("n", "<leader>tt", "<cmd>Pick colorschemes <cr>")
