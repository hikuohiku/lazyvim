return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,
          style = "#FFAA33",
        }
      })
    end
  },
  { "sophacles/vim-processing" }
}
