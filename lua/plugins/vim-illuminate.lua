return {
  "RRethy/vim-illuminate",
  lazy = true,
  config = function()
    require('illuminate').configure({
      -- 提供者：用于在缓冲区中获取引用的提供者，按优先级排序
      providers = {
        'lsp',
        'treesitter',
        'regex',
      },
      -- 延迟：延迟毫秒数
      delay = 100,
      -- filetype_overrides：特定文件类型的覆盖配置。
      -- 键为表示文件类型的字符串，值为表，支持与 .configure 相同的键，但排除 filetypes_denylist 和 filetypes_allowlist
      filetype_overrides = {},
      -- filetypes_denylist：不进行高亮的文件类型，会覆盖 filetypes_allowlist
      filetypes_denylist = {
        'dirbuf',
        'dirvish',
        'fugitive',
      },
      -- filetypes_allowlist：进行高亮的文件类型，会被 filetypes_denylist 覆盖
      -- 必须设置 filetypes_denylist = {} 以覆盖默认值，使 filetypes_allowlist 生效
      filetypes_allowlist = {},
      -- modes_denylist：不进行高亮的模式，会覆盖 modes_allowlist
      -- 参见 `:help mode()` 获取可能的值
      modes_denylist = {},
      -- modes_allowlist：进行高亮的模式，会被 modes_denylist 覆盖
      -- 参见 `:help mode()` 获取可能的值
      modes_allowlist = {},
      -- providers_regex_syntax_denylist：不进行高亮的语法，会覆盖 providers_regex_syntax_allowlist
      -- 仅适用于 'regex' 提供者
      -- 使用 :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name') 获取语法名称
      providers_regex_syntax_denylist = {},
      -- providers_regex_syntax_allowlist：进行高亮的语法，会被 providers_regex_syntax_denylist 覆盖
      -- 仅适用于 'regex' 提供者
      -- 使用 :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name') 获取语法名称
      providers_regex_syntax_allowlist = {},
      -- under_cursor：是否高亮光标下的单词
      under_cursor = true,
      -- large_file_cutoff：达到此行数时使用 large_file_config
      -- 达到此阈值时禁用 under_cursor 选项
      large_file_cutoff = 10000,
      -- large_file_config：大文件使用的配置（基于 large_file_cutoff）。
      -- 支持与 .configure 相同的键
      -- 如果为 nil，则大文件将禁用 vim-illuminate
      large_file_overrides = nil,
      -- min_count_to_highlight：执行高亮所需的最小匹配数
      min_count_to_highlight = 1,
      -- should_enable：一个回调函数，覆盖所有其他设置以启用/禁用高亮。
      -- 该函数会被频繁调用，因此不要在内部执行开销大的操作。
      should_enable = function(bufnr) return true end,
      -- case_insensitive_regex：设置正则表达式是否大小写不敏感
      case_insensitive_regex = false,
      -- disable_keymaps：禁用默认键映射
      disable_keymaps = false,
    })
  end,
}
