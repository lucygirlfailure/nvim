local map = vim.keymap.set
vim.g.mapleader = " "
map('n', 'K', vim.lsp.buf.hover)
map('n', 'gd', vim.lsp.buf.definition)
map('n', 'gD', vim.lsp.buf.declaration)
map('n', 'gi', vim.lsp.buf.implementation)
map('n', 'go', vim.lsp.buf.type_definition)
map('n', 'gr', vim.lsp.buf.references)
map('n', 'gs', vim.lsp.buf.signature_help)
map('n', 'gl', vim.diagnostic.open_float)
map('n', '<leader>qf', vim.lsp.buf.code_action)
