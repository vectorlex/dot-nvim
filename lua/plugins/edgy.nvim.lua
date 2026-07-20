return {
  "folke/edgy.nvim",
  opts = {
    left = {
      { ft = "neo-tree" },
    },
    bottom = {
      { ft = "terminal", size = 13 },
    },
    right = {
      { ft = "aerial" },
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
