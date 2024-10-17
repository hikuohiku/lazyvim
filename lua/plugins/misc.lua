return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,
          style = "#FFAA33",
        },
      })
    end,
  },
  { "sophacles/vim-processing" },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.completion.completeopt = "menu,menuone,noinsert,noselect"
      opts.preselect = cmp.PreselectMode.None
      opts.mapping["<CR>"] = cmp.mapping.confirm({ select = false })
    end,
  },
}
