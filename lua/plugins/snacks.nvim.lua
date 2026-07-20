return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    image = { enabled = true },
    terminal = {
      enabled = true,
      shell = "fish", -- 在这里指定使用 fish
      win = {
        position = "bottom",
        height = 0.2,
      },
    },
  },
  keys = {
    -- 常用选择器 & 文件浏览器
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "智能查找文件" },
    { "<leader>,", function() Snacks.picker.buffers() end, desc = "缓冲区列表" },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "文本搜索" },
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "命令历史" },
    { "<leader>n", function() Snacks.picker.notifications() end, desc = "通知历史" },
    -- 查找
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "缓冲区" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "查找配置文件" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "查找文件" },
    { "<leader>fg", function() Snacks.picker.git_files() end, desc = "查找 Git 文件" },
    { "<leader>fp", function() Snacks.picker.projects() end, desc = "项目列表" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "最近文件" },
    -- Git
    { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git 分支" },
    { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git 日志" },
    { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git 行日志" },
    { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git 状态" },
    { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git 储藏" },
    { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git 差异（块）" },
    { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git 文件日志" },
    -- 搜索
    { "<leader>sb", function() Snacks.picker.lines() end, desc = "当前缓冲区行" },
    { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "搜索所有打开缓冲区" },
    { "<leader>sg", function() Snacks.picker.grep() end, desc = "文本搜索" },
    { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "当前词或选中文本", mode = { "n", "x" } },
    -- 搜索功能
    { '<leader>s/', function() Snacks.picker.search_history() end, desc = "搜索历史" },
    { "<leader>sc", function() Snacks.picker.command_history() end, desc = "命令历史" },
    { "<leader>sC", function() Snacks.picker.commands() end, desc = "命令列表" },
    { "<leader>sp", function() Snacks.picker.lazy() end, desc = "插件列表" },
    { "<leader>sR", function() Snacks.picker.resume() end, desc = "恢复上次选择器" },
    { "<leader>su", function() Snacks.picker.undo() end, desc = "撤销历史" },
    { "<leader>uC", function() Snacks.picker.colorschemes() end, desc = "配色方案" },
    -- LSP
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "转到定义" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "转到声明" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "引用" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "转到实现" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "转到类型定义" },
    { "gai", function() Snacks.picker.lsp_incoming_calls() end, desc = "传入调用" },
    { "gao", function() Snacks.picker.lsp_outgoing_calls() end, desc = "传出调用" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP 符号" },
    { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "工作区符号" },
    -- 其他
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "]]", function() Snacks.words.jump(vim.v.count1) end, desc = "下一个引用", mode = { "n", "t" } },
    { "[[", function() Snacks.words.jump(-vim.v.count1) end, desc = "上一个引用", mode = { "n", "t" } },
    -- 终端
    { "<C-/>", function() Snacks.terminal.toggle() end, desc = "切换终端" },
    { "<leader>ft", function() Snacks.terminal(nil, { win = { position = "float" } }) end, desc = "浮动终端" },
    { "<leader>fT", function() Snacks.terminal(nil, { win = { position = "bottom", height = 0.25 } }) end, desc = "底部水平终端" },
    { "<leader>fB", function() Snacks.terminal(nil, { win = { position = "right", width = 0.3 } }) end, desc = "右侧垂直终端" },
  },
}
