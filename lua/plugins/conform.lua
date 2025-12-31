vim.pack.add({ { src = 'https://github.com/stevearc/conform.nvim.git' } })

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
