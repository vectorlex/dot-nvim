local explorer_opened = false
local terminal_opened = false
local aerial_opened = false

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    if vim.bo.buftype ~= "" then
      return
    end

    if not aerial_opened then
      vim.cmd("AerialOpen")
      aerial_opened = true
    end

    if not explorer_opened then
      vim.cmd("NvimTreeOpen" .. vim.fs.root(0, { ".git", vim.fn.expand('%:t') }))
      explorer_opened = true
    end

    if not terminal_opened then
      require("snacks").terminal.open()
      terminal_opened = true
    end
  end,
})
