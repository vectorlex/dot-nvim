local opt = vim.opt
local o = vim.o

-- 基础
--
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.undofile = true

opt.clipboard = "unnamedplus"

-- UI
--
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.wrap = false
opt.showmode = false
opt.fillchars = { eob = " " }
opt.laststatus = 3
opt.splitkeep = "screen"
o.winborder = "none"
