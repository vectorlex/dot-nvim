return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'saghen/blink.cmp',
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mason-org/mason.nvim",
    },
    opts = {
      ensure_installed = { "lua_ls", "rust_analyzer" },
      automatic_installation = true,
    },
  },
}
