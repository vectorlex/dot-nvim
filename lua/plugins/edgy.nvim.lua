return {
  "folke/edgy.nvim",
  opts = {
    left = {
      { ft = "NvimTree", size = { width = 30 } },
      { ft = "aerial",   size = { width = 30 } },
    },
    bottom = {
      { ft = "terminal", size = 13 },
    },
    options = {
      bottom = { size = 13 },
      globalstatus = true,
    },
    animate = {
      enabled = false,
    },
  }
}
