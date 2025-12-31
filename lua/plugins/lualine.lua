vim.pack.add {
  { src = 'https://github.com/nvim-lualine/lualine.nvim.git' },
}


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
