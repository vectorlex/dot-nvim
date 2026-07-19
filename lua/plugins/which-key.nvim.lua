return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      -- ===== 窗口操作 <C-w> =====
  { "<C-w>", group = "窗口操作" },
  { "<C-w>v", desc = "垂直分割窗口" },
  { "<C-w>s", desc = "水平分割窗口" },
  { "<C-w>c", desc = "关闭当前窗口" },
  { "<C-w>o", desc = "只保留当前窗口" },
  { "<C-w>h", desc = "移到左边窗口" },
  { "<C-w>j", desc = "移到下边窗口" },
  { "<C-w>k", desc = "移到上边窗口" },
  { "<C-w>l", desc = "移到右边窗口" },
  { "<C-w>H", desc = "将窗口移到左边" },
  { "<C-w>J", desc = "将窗口移到下边" },
  { "<C-w>K", desc = "将窗口移到上边" },
  { "<C-w>L", desc = "将窗口移到右边" },
  { "<C-w>=", desc = "均分窗口大小" },
  { "<C-w>_", desc = "最大化当前窗口高度" },
  { "<C-w>|", desc = "最大化当前窗口宽度" },

  -- ===== z 折叠 / 拼写 =====
  { "z", group = "折叠 / 拼写" },
  { "zf", desc = "创建折叠 (选中区域)" },
  { "zo", desc = "打开折叠" },
  { "zc", desc = "关闭折叠" },
  { "za", desc = "切换折叠状态" },
  { "zd", desc = "删除折叠" },
  { "z=", desc = "拼写建议" },

  -- ===== g 命令 =====
  { "g", group = "跳转 / 杂项" },
  { "gd", desc = "跳转到定义" },
  { "gD", desc = "跳转到全局定义" },
  { "gy", desc = "跳转到类型定义" },
  { "gr", desc = "跳转到引用" },
  { "gi", desc = "回到上次插入的位置" },
  { "gv", desc = "重新选择上次选中的区域" },
  { "g;", desc = "移动到上次修改位置" },
  { "g,", desc = "移动到下次修改位置" },

  -- ===== 标记 (marks) =====
  { "`",  desc = "跳转到精确标记 (显示标记列表)" },
  { "'",  desc = "跳转到行标记 (显示标记列表)" },

  -- ===== 寄存器 (registers) =====
  { '"',  desc = "打开寄存器 (普通模式)", mode = "n" },
  { "<C-r>", desc = "粘贴寄存器内容 (插入模式)", mode = "i" },

  -- ===== 一些常用动作分组（仅描述，不改功能） =====
  { "y",  group = "复制 (yank)", mode = { "n", "v", "x" } },
  { "d",  group = "删除 (delete)", mode = { "n", "v", "x" } },
  { "c",  group = "修改 (change)", mode = { "n", "v", "x" } },
  { ">",  group = "增加缩进", mode = { "v", "x" } },
  { "<",  group = "减少缩进", mode = { "v", "x" } },
    }
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
