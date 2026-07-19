return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  config = function()
    local highlight = {
      "RainbowRed",
      "RainbowYellow",
      "RainbowBlue",
      "RainbowOrange",
      "RainbowGreen",
      "RainbowViolet",
      "RainbowCyan",
    }
    local hooks = require "ibl.hooks"
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#FF757F" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#FFC777" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#82AAFF" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#FF966C" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#C3E88D" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C099FF" })
      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#86E1FC" })
    end)

    local rdtemp = vim.g.rainbow_delimiters or {}
    rdtemp.highlight = highlight
    vim.g.rainbow_delimiters = rdtemp

    require("ibl").setup { scope = { highlight = highlight } }

    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  end,
}
