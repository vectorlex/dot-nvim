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
        enabled = true,
      },
    }
  },
  init = function()
    vim.diagnostic.config({ virtual_text = false })
  end,
}
