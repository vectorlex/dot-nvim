return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false,                    -- neo-tree will lazily load itself
    opts = {
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        filtered_items = {
          hide_dotfiles = false,
        },
      },
      auto_focus = false,
    },
    keys = {
      {
        "<leader>e", -- 快捷键：<leader> + e
        "<cmd>Neotree toggle<cr>", -- 执行的命令：切换Neo-tree
        desc = "切换neo-tree" -- 描述信息（可选）
      },
    },
  }
}
