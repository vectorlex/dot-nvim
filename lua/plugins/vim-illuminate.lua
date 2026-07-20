return {
  "RRethy/vim-illuminate",
  lazy = true,
  opts = {
    providers = {
      'lsp',
      'treesitter',
      'regex',
    },
    delay = 20,
    filetypes_denylist = {},
    modes_denylist = { 't' },
    providers_regex_syntax_denylist = {},
    providers_regex_syntax_allowlist = {},
    under_cursor = false,
    min_count_to_highlight = 1,
    case_insensitive_regex = false,
  },
  config = function(_, opts)
    require('illuminate').configure(opts)
  end,
}
