return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = function()
    return {
      options = {
        indicator = {
          style = 'underline',
        },
        style_preset = require("bufferline").style_preset.no_italic,
        always_show_bufferline = false,
      },
    }
  end,
}
