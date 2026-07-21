return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      options = {
        style_preset = require("bufferline").style_preset.no_italic,
        close_command = function(n) Snacks.bufdelete(n) end,
        right_mouse_command = function(n) Snacks.bufdelete(n) end,
        indicator = {
          style = 'underline',
        },
        offsets = {
          {
            filetype = "NvimTree",
            text = " Neovim",
            highlight = "Directory",
            text_align = "left",
          },
          {
            filetype = "snacks_layout_box",
          },
        },
      },
    }
  end,
}
