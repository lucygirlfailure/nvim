
return {
  "nvim-treesitter/nvim-treesitter",

  build = ":TSUpdate",

  config = function()
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
  end,
}
