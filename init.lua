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
vim.pack.add {
  { src = 'https://github.com/vyfor/cord.nvim' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/mason-org/mason.nvim.git' },
  { src = 'https://github.com/hrsh7th/nvim-cmp.git' },
  { src = 'https://github.com/hrsh7th/cmp-nvim-lsp.git' },
  { src = 'https://github.com/hrsh7th/cmp-path.git' },
  { src = 'https://github.com/stevearc/conform.nvim.git' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter.git' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim.git' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim.git' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons.git' },
  { src = 'https://github.com/akinsho/bufferline.nvim.git' },
}

require("bufferline").setup()
require("gitsigns").setup()
require("nvim-web-devicons").setup()
require("lualine").setup({
  options = {
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "diagnostics" },
    lualine_c = { "filename" },
    lualine_x = { "lsp_status", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
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
require("cord").setup()
require("mason").setup()

-- setup lsp servers

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

vim.lsp.enable({ "lua_ls", "clangd", "qmlls" })
-- diagnostic config
vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
    source = true,
  },
})

-- set up completion
local cmp = require("cmp")

cmp.setup({
  -- REQUIRED: You must specify a snippet engine
  snippet = {
    expand = function(args)
      -- Use Neovim's native snippet engine (since you are on v0.10+)
      vim.snippet.expand(args.body)
    end,
  },

  -- Completion behavior
  completion = {
    completeopt = "menu,menuone,noinsert",
  },

  -- Preselect the first item (equivalent to your auto_select logic)
  preselect = cmp.PreselectMode.Item,

  -- Mappings
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),
  }),

  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "path" },
  }),
})

-- setup conform.nvim
require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    jsonc = { "prettierd", "prettier", stop_after_first = true },
    css = { "prettierd", "prettier", stop_after_first = true },
    c = { "clang-format" },
  },
  formatters = {
    ["clang-format"] = {
      prepend_args = {
        "--style={BasedOnStyle: LLVM, BreakBeforeBraces: Allman}"
      },
    },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})

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
