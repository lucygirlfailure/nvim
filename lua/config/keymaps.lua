local map = vim.keymap.set
vim.g.mapleader = " "
-- lsp keybinds
map("n", "K", vim.lsp.buf.hover)
map("n", "gd", vim.lsp.buf.definition)
map("n", "gD", vim.lsp.buf.declaration)
map("n", "gi", vim.lsp.buf.implementation)
map("n", "go", vim.lsp.buf.type_definition)
map("n", "gr", vim.lsp.buf.references)
map("n", "gs", vim.lsp.buf.signature_help)
map("n", "gl", vim.diagnostic.open_float)
map("n", "<leader>qf", vim.lsp.buf.code_action)
-- bufferline keybinds
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
map("n", "<leader>w", "<cmd> bdelete! <cr>")
-- util keybinds
map("n", "<leader>t", "<cmd> terminal <cr>")
map("t", "<esc>", "<c-\\><c-n>")
