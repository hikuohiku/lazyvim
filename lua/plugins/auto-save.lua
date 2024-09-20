return {
  {
    -- auto-save.nvim
    "0x00-ketsu/autosave.nvim",
    enabled = true,
    opts = {
      events = { "InsertLeave", "TextChanged" },
    },
  }
}
