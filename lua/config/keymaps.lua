local map = vim.keymap.set
-- lsp keybinds
map("n", "K", "<cmd> Lspsaga hover_doc<cr>")
map("n", "go", "<cmd> Lspsaga goto_definition<cr>")
map("n", "gr", "<cmd> Lspsaga finder<cr>")
map("n", "<leader>qf", "<cmd> Lspsaga code_action<cr>")
-- bufferline keybinds
map("n", "<a-1>", "<cmd>lua require('harpoon.ui').nav_file(1) <cr>")
map("n", "<A-2>", "<cmd>lua require('harpoon.ui').nav_file(2) <cr>")
map("n", "<A-3>", "<cmd>lua require('harpoon.ui').nav_file(3) <cr>")
map("n", "<A-4>", "<cmd>lua require('harpoon.ui').nav_file(4) <cr>")
map("n", "<A-5>", "<cmd>lua require('harpoon.ui').nav_file(5) <cr>")
map("n", "<A-6>", "<cmd>lua require('harpoon.ui').nav_file(6) <cr>")
map("n", "<A-7>", "<cmd>lua require('harpoon.ui').nav_file(7) <cr>")
map("n", "<A-8>", "<cmd>lua require('harpoon.ui').nav_file(8) <cr>")
map("n", "<A-9>", "<cmd>lua require('harpoon.ui').nav_file(9) <cr>")
-- util keybinds
map("n", "<leader>t", "<cmd> terminal <cr>")
map("t", "<esc>", "<c-\\><c-n>")
map("n", "<A-e>", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>")
map("n", "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
