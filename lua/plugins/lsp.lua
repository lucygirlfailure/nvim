vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/neovim/nvim-treesitter' },
})


vim.lsp.config('*', {
  capabilities = {
    require("cmp_nvim_lsp").default_capabilities(),
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      }
    }
  },
  root_markers = { '.git' },
})


vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "oxwm" },
      },
    },
  },
})

-- enable lsp servers

vim.lsp.enable({ "lua_ls", "clangd", "qmlls", "hyprls" })
-- diagnostic config
vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
    source = true,
  },
})

require("nvim-treesitter").setup({
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "query",
    "bash",
    "json",
    "yaml",
    "toml",
    "markdown",
    "markdown_inline",
    "c",
    "cpp",
    "nix"
  },

  highlight = {
    enable = true,
  },

  indent = {
    enable = true,
  },
})
