return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "c", "cpp", "rust", "python" },
      auto_install = true,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    init = function()
      vim.g.no_plugin_maps = true
    end,
    opts = {
      select = {
        lookahead = true,
        selection_modes = {
          ['@parameter.outer'] = 'v', -- charwise
          ['@function.outer'] = 'V',  -- linewise
          -- ['@class.outer'] = '<c-v>', -- blockwise
        },
        include_surrounding_whitespace = false,
      },
      move = {
        -- whether to set jumps in the jumplist
        set_jumps = true,
      },
    },
    keys = {
      { "am", function() require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects") end, mode = { "x", "o" }, desc = "选择函数外部" },
      { "im", function() require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects") end, mode = { "x", "o" }, desc = "选择函数内部" },
      { "ac", function() require("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects") end, mode = { "x", "o" }, desc = "选择类外部" },
      { "ic", function() require("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects") end, mode = { "x", "o" }, desc = "选择类内部" },
      { "as", function() require("nvim-treesitter-textobjects.select").select_textobject("@local.scope", "locals") end, mode = { "x", "o" }, desc = "选择作用域" },
      { "]m", function() require("nvim-treesitter-textobjects.move").goto_next_start("@function.outer", "textobjects") end, mode = { "n", "x", "o" }, desc = "下一个函数开始" },
      {
        "]o",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_start({ "@loop.inner", "@loop.outer" },
            "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "下一个循环"
      },
      { "]s", function() require("nvim-treesitter-textobjects.move").goto_next_start("@local.scope", "locals") end, mode = { "n", "x", "o" }, desc = "下一个作用域" },
      { "]z", function() require("nvim-treesitter-textobjects.move").goto_next_start("@fold", "folds") end, mode = { "n", "x", "o" }, desc = "下一个折叠" },
      { "]M", function() require("nvim-treesitter-textobjects.move").goto_next_end("@function.outer", "textobjects") end, mode = { "n", "x", "o" }, desc = "下一个函数结束" },
      { "][", function() require("nvim-treesitter-textobjects.move").goto_next_end("@class.outer", "textobjects") end, mode = { "n", "x", "o" }, desc = "下一个类结束" },
      { "[m", function() require("nvim-treesitter-textobjects.move").goto_previous_start("@function.outer", "textobjects") end, mode = { "n", "x", "o" }, desc = "上一个函数开始" },
      { "[M", function() require("nvim-treesitter-textobjects.move").goto_previous_end("@function.outer", "textobjects") end, mode = { "n", "x", "o" }, desc = "上一个函数结束" },
      { "[]", function() require("nvim-treesitter-textobjects.move").goto_previous_end("@class.outer", "textobjects") end, mode = { "n", "x", "o" }, desc = "上一个类结束" },
      { "]d", function() require("nvim-treesitter-textobjects.move").goto_next("@conditional.outer", "textobjects") end, mode = { "n", "x", "o" }, desc = "下一个条件" },
      { "[d", function() require("nvim-treesitter-textobjects.move").goto_previous("@conditional.outer", "textobjects") end, mode = { "n", "x", "o" }, desc = "上一个条件" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      mode = "topline",
      max_lines = 13,
    },
    config = function(_, opts)
      require("treesitter-context").setup(opts)
      vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = "NONE" })
    end,
  },
}
