return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  opts = {
    preset = "classic",
    options = {
      show_code = true,
      set_arrow_to_diag_color = true,
      multilines = {
        enabled = true,           -- 启用多行诊断消息支持
      },
    }
  },
  config = function()
    require("tiny-inline-diagnostic").setup(opts)
    vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
  end,
}
