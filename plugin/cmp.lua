return {
  "hrsh7th/nvim-cmp",

  event = "InsertEnter",

  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "neovim/nvim-lspconfig",
  },

  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = {
        ["<Up>"] = cmp.mapping.select_prev_item(),
        ["<Down>"] = cmp.mapping.select_next_item(),
        ["<CR>"] = cmp.mapping.confirm(),
      },
      sources = cmp.config.sources({
        { name = "buffer" },
        { name = "nvim_lsp" },
        { name = "path" },
      }),
    })
  end,
}

