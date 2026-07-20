return {
  "folke/edgy.nvim",
  opts = {
    left = {
      -- 左侧放 Neotree（文件树）
      { ft = "neo-tree" },
    },
    bottom = {
      -- 底部放终端（例如 snacks.terminal 或 toggleterm）
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
