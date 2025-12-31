vim.pack.add({
  { src = 'https://github.com/hrsh7th/nvim-cmp.git' },
  { src = 'https://github.com/hrsh7th/cmp-nvim-lsp.git' },
  { src = 'https://github.com/hrsh7th/cmp-path.git' },
})


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
