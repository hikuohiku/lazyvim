return {
  {
    -- auto-save.nvim
    "pocco81/auto-save.nvim",
    enabled = true,
    opts = {
      trigger_events = { "InsertLeave", "BufLeave", "FocusLost" },
    },
  }
}
