-- Cyberpunk Theme for Neovim
-- Neon yellow core with cyan, magenta, red, and green accents

return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                -- Dark color palette
                local colors = {
                    -- Core surfaces
                    hex_0a0a12 = '#0a0a12', -- Near-black background
                    hex_1a1a28 = '#1a1a28', -- Raised surface
                    hex_4a4a5a = '#4a4a5a', -- Muted foreground
                    hex_d0d0d8 = '#d0d0d8', -- Soft neutral foreground

                    -- Cyberpunk palette
                    hex_fcee0a = '#fcee0a', -- Neon yellow
                    hex_ff003c = '#ff003c', -- Neon red
                    hex_00ff9f = '#00ff9f', -- Neon green
                    hex_00b3ff = '#00b3ff', -- Bright blue
                    hex_ff00a0 = '#ff00a0', -- Neon magenta
                    hex_00f0ff = '#00f0ff', -- Neon cyan
                    hex_fff36b = '#fff36b', -- Light yellow
                    hex_5cffc0 = '#5cffc0', -- Mint green
                    hex_ff5c7a = '#ff5c7a', -- Bright red
                    hex_5cc8ff = '#5cc8ff', -- Light blue
                    hex_ff5cc8 = '#ff5cc8', -- Light magenta
                    hex_7cf7ff = '#7cf7ff', -- Light cyan
                    hex_ffffff = '#ffffff', -- White
                    hex_000000 = '#000000', -- Black
                }
                ---@diagnostic disable: undefined-global
                -- Reset highlighting
                vim.cmd('highlight clear')
                if vim.fn.exists('syntax_on') then
                    vim.cmd('syntax reset')
                end

                vim.o.termguicolors = true
                vim.o.background = 'dark'
                vim.g.colors_name = 'cyberpunk'

                local hl = vim.api.nvim_set_hl

                -- Editor highlights
                hl(0, 'Normal', { fg = colors.hex_fcee0a, bg = colors.hex_0a0a12 })
                hl(0, 'NormalFloat', { fg = colors.hex_fcee0a, bg = colors.hex_0a0a12 })
                hl(0, 'FloatBorder', { fg = colors.hex_ff00a0, bg = colors.hex_0a0a12 })
                hl(0, 'FloatTitle', { fg = colors.hex_00b3ff, bg = colors.hex_0a0a12, bold = true })
                hl(0, 'Cursor', { fg = colors.hex_0a0a12, bg = colors.hex_ff00a0 })
                hl(0, 'CursorLine', { bg = colors.hex_0a0a12 })
                hl(0, 'CursorLineNr', { fg = colors.hex_00b3ff, bold = true })
                hl(0, 'LineNr', { fg = colors.hex_fcee0a })
                hl(0, 'Visual', { bg = colors.hex_0a0a12 })
                hl(0, 'VisualNOS', { bg = colors.hex_0a0a12 })
                hl(0, 'Search', { fg = colors.hex_0a0a12, bg = colors.hex_00b3ff })
                hl(0, 'IncSearch', { fg = colors.hex_0a0a12, bg = colors.hex_ff00a0 })
                hl(0, 'MatchParen', { fg = colors.hex_ff00a0, bold = true })

                -- Syntax highlighting
                hl(0, 'Comment', { fg = colors.hex_4a4a5a, italic = true })
                hl(0, 'Constant', { fg = colors.hex_fff36b })
                hl(0, 'String', { fg = colors.hex_00f0ff })
                hl(0, 'Character', { fg = colors.hex_00f0ff })
                hl(0, 'Number', { fg = colors.hex_fff36b })
                hl(0, 'Boolean', { fg = colors.hex_fff36b })
                hl(0, 'Float', { fg = colors.hex_fff36b })
                hl(0, 'Identifier', { fg = colors.hex_00ff9f })
                hl(0, 'Function', { fg = colors.hex_5cffc0 })
                hl(0, 'Statement', { fg = colors.hex_ff00a0 })
                hl(0, 'Conditional', { fg = colors.hex_ff00a0 })
                hl(0, 'Repeat', { fg = colors.hex_ff00a0 })
                hl(0, 'Label', { fg = colors.hex_ff003c })
                hl(0, 'Operator', { fg = colors.hex_fcee0a })
                hl(0, 'Keyword', { fg = colors.hex_ff00a0 })
                hl(0, 'Exception', { fg = colors.hex_ff003c })
                hl(0, 'PreProc', { fg = colors.hex_ff00a0 })
                hl(0, 'Include', { fg = colors.hex_ff00a0 })
                hl(0, 'Define', { fg = colors.hex_ff00a0 })
                hl(0, 'Macro', { fg = colors.hex_ff00a0 })
                hl(0, 'PreCondit', { fg = colors.hex_ff00a0 })
                hl(0, 'Type', { fg = colors.hex_ff003c })
                hl(0, 'StorageClass', { fg = colors.hex_ff003c })
                hl(0, 'Structure', { fg = colors.hex_ff003c })
                hl(0, 'Typedef', { fg = colors.hex_ff003c })
                hl(0, 'Special', { fg = colors.hex_00b3ff })
                hl(0, 'SpecialChar', { fg = colors.hex_00b3ff })
                hl(0, 'Tag', { fg = colors.hex_ff00a0 })
                hl(0, 'Delimiter', { fg = colors.hex_fcee0a })
                hl(0, 'SpecialComment', { fg = colors.hex_4a4a5a, italic = true, bold = true })
                hl(0, 'Debug', { fg = colors.hex_ff003c })
                hl(0, 'Underlined', { underline = true })
                hl(0, 'Error', { fg = colors.hex_ff003c, bold = true })
                hl(0, 'Todo', { fg = colors.hex_00b3ff, bold = true })

                -- UI elements
                hl(0, 'StatusLine', { fg = colors.hex_fcee0a, bg = colors.hex_0a0a12 })
                hl(0, 'StatusLineNC', { fg = colors.hex_fcee0a, bg = colors.hex_0a0a12 })
                hl(0, 'TabLine', { fg = colors.hex_fcee0a, bg = colors.hex_0a0a12 })
                hl(0, 'TabLineFill', { bg = colors.hex_0a0a12 })
                hl(0, 'TabLineSel', { fg = colors.hex_ff00a0, bg = colors.hex_0a0a12, bold = true })
                hl(0, 'Pmenu', { fg = colors.hex_fcee0a, bg = colors.hex_0a0a12 })
                hl(0, 'PmenuSel', { fg = colors.hex_00b3ff, bg = colors.hex_1a1a28, bold = true })
                hl(0, 'PmenuSbar', { bg = colors.hex_0a0a12 })
                hl(0, 'PmenuThumb', { bg = colors.hex_ff003c })
                hl(0, 'WildMenu', { fg = colors.hex_0a0a12, bg = colors.hex_ff00a0 })
                hl(0, 'VertSplit', { fg = colors.hex_1a1a28 })
                hl(0, 'WinSeparator', { fg = colors.hex_1a1a28 })
                hl(0, 'Folded', { fg = colors.hex_fcee0a, bg = colors.hex_0a0a12 })
                hl(0, 'FoldColumn', { fg = colors.hex_ff00a0, bg = colors.hex_0a0a12 })
                hl(0, 'SignColumn', { fg = colors.hex_ff003c, bg = colors.hex_0a0a12 })
                hl(0, 'ColorColumn', { bg = colors.hex_0a0a12 })

                -- Diff highlighting
                hl(0, 'DiffAdd', { fg = colors.hex_00f0ff, bg = colors.hex_0a0a12 })
                hl(0, 'DiffChange', { fg = colors.hex_00b3ff, bg = colors.hex_0a0a12 })
                hl(0, 'DiffDelete', { fg = colors.hex_ff003c, bg = colors.hex_0a0a12 })
                hl(0, 'DiffText', { fg = colors.hex_fcee0a, bg = colors.hex_1a1a28, bold = true })

                -- Git signs
                hl(0, 'GitSignsAdd', { fg = colors.hex_00f0ff })
                hl(0, 'GitSignsChange', { fg = colors.hex_00b3ff })
                hl(0, 'GitSignsDelete', { fg = colors.hex_ff003c })

                -- Diagnostic highlights
                hl(0, 'DiagnosticError', { fg = colors.hex_ff003c })
                hl(0, 'DiagnosticWarn', { fg = colors.hex_00b3ff })
                hl(0, 'DiagnosticInfo', { fg = colors.hex_fff36b })
                hl(0, 'DiagnosticHint', { fg = colors.hex_ff00a0 })
                hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.hex_ff003c })
                hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.hex_00b3ff })
                hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.hex_fff36b })
                hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.hex_ff00a0 })

                -- LSP highlights
                hl(0, 'LspReferenceText', { bg = colors.hex_0a0a12 })
                hl(0, 'LspReferenceRead', { bg = colors.hex_0a0a12 })
                hl(0, 'LspReferenceWrite', { bg = colors.hex_0a0a12, underline = true })

                -- Treesitter highlights
                hl(0, '@variable', { fg = colors.hex_fcee0a })
                hl(0, '@variable.builtin', { fg = colors.hex_fff36b })
                hl(0, '@variable.parameter', { fg = colors.hex_fcee0a })
                hl(0, '@variable.member', { fg = colors.hex_5cffc0 })
                hl(0, '@constant', { fg = colors.hex_fff36b })
                hl(0, '@constant.builtin', { fg = colors.hex_fff36b })
                hl(0, '@constant.macro', { fg = colors.hex_00b3ff })
                hl(0, '@module', { fg = colors.hex_ff003c })
                hl(0, '@module.builtin', { fg = colors.hex_ff003c })
                hl(0, '@label', { fg = colors.hex_ff003c })
                hl(0, '@string', { fg = colors.hex_00ff9f })
                hl(0, '@string.escape', { fg = colors.hex_00b3ff })
                hl(0, '@string.special', { fg = colors.hex_00b3ff })
                hl(0, '@string.regexp', { fg = colors.hex_ff00a0 })
                hl(0, '@character', { fg = colors.hex_00f0ff })
                hl(0, '@character.special', { fg = colors.hex_00b3ff })
                hl(0, '@boolean', { fg = colors.hex_fff36b })
                hl(0, '@number', { fg = colors.hex_fff36b })
                hl(0, '@number.float', { fg = colors.hex_fff36b })
                hl(0, '@type', { fg = colors.hex_ff003c })
                hl(0, '@type.builtin', { fg = colors.hex_ff003c })
                hl(0, '@type.definition', { fg = colors.hex_ff003c })
                hl(0, '@attribute', { fg = colors.hex_ff00a0 })
                hl(0, '@property', { fg = colors.hex_5cffc0 })
                hl(0, '@function', { fg = colors.hex_5cffc0 })
                hl(0, '@function.builtin', { fg = colors.hex_5cffc0 })
                hl(0, '@function.call', { fg = colors.hex_5cffc0 })
                hl(0, '@function.macro', { fg = colors.hex_ff00a0 })
                hl(0, '@function.method', { fg = colors.hex_5cffc0 })
                hl(0, '@function.method.call', { fg = colors.hex_5cffc0 })
                hl(0, '@constructor', { fg = colors.hex_ff003c })
                hl(0, '@operator', { fg = colors.hex_fcee0a })
                hl(0, '@keyword', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.coroutine', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.function', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.operator', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.import', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.conditional', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.repeat', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.return', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.exception', { fg = colors.hex_ff003c })
                hl(0, '@comment', { fg = colors.hex_4a4a5a, italic = true })
                hl(0, '@comment.documentation', { fg = colors.hex_4a4a5a, italic = true })
                hl(0, '@punctuation', { fg = colors.hex_fcee0a })
                hl(0, '@punctuation.bracket', { fg = colors.hex_fcee0a })
                hl(0, '@punctuation.delimiter', { fg = colors.hex_fcee0a })
                hl(0, '@punctuation.special', { fg = colors.hex_00b3ff })
                -- XML/HTML: tag names, attributes, delimiters, and quoted values
                hl(0, '@tag', { fg = colors.hex_ff00a0 })
                hl(0, '@tag.builtin', { fg = colors.hex_00f0ff })
                hl(0, '@tag.attribute', { fg = colors.hex_ff003c })
                hl(0, '@tag.delimiter', { fg = colors.hex_fcee0a })

                -- Shared Tree-sitter captures used across Rust, Go, Kotlin, Java,
                -- YAML, Docker, and other languages
                hl(0, '@attribute.builtin', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.directive', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.modifier', { fg = colors.hex_ff00a0 })
                hl(0, '@keyword.type', { fg = colors.hex_ff00a0 })
                hl(0, '@markup.heading', { fg = colors.hex_fcee0a, bold = true })
                hl(0, '@markup.heading.1', { fg = colors.hex_00f0ff, bold = true })
                hl(0, '@markup.heading.2', { fg = colors.hex_ff00a0, bold = true })
                hl(0, '@markup.heading.3', { fg = colors.hex_00ff9f, bold = true })
                hl(0, '@markup.heading.4', { fg = colors.hex_00b3ff, bold = true })
                hl(0, '@markup.heading.5', { fg = colors.hex_fff36b, bold = true })
                hl(0, '@markup.heading.6', { fg = colors.hex_5cffc0, bold = true })
                hl(0, '@markup.italic', { italic = true })
                hl(0, '@markup.strong', { fg = colors.hex_fcee0a, bold = true })
                hl(0, '@markup.strikethrough', { fg = colors.hex_4a4a5a, strikethrough = true })
                hl(0, '@markup.raw', { fg = colors.hex_00ff9f })
                hl(0, '@markup.raw.block', { fg = colors.hex_00ff9f, bg = colors.hex_1a1a28 })
                hl(0, '@markup.link', { fg = colors.hex_00f0ff, underline = true })
                hl(0, '@markup.link.label', { fg = colors.hex_ff00a0 })
                hl(0, '@markup.link.url', { fg = colors.hex_00b3ff, underline = true })
                hl(0, '@markup.list', { fg = colors.hex_fcee0a })
                hl(0, '@markup.list.checked', { fg = colors.hex_00ff9f })
                hl(0, '@markup.list.unchecked', { fg = colors.hex_00b3ff })
                hl(0, '@markup.quote', { fg = colors.hex_5cc8ff, italic = true })
                hl(0, '@variable.parameter.builtin', { fg = colors.hex_fff36b, italic = true })

                -- LSP semantic tokens supplement Tree-sitter in Java and other
                -- language servers that provide semantic highlighting.
                hl(0, '@lsp.type.class', { fg = colors.hex_00f0ff, bold = true })
                hl(0, '@lsp.type.enum', { fg = colors.hex_00f0ff })
                hl(0, '@lsp.type.enumMember', { fg = colors.hex_fff36b })
                hl(0, '@lsp.type.interface', { fg = colors.hex_00b3ff, bold = true })
                hl(0, '@lsp.type.namespace', { fg = colors.hex_00b3ff })
                hl(0, '@lsp.type.parameter', { fg = colors.hex_fcee0a })
                hl(0, '@lsp.type.property', { fg = colors.hex_5cffc0 })
                hl(0, '@lsp.type.struct', { fg = colors.hex_00f0ff, bold = true })
                hl(0, '@lsp.type.type', { fg = colors.hex_00f0ff })
                hl(0, '@lsp.type.typeParameter', { fg = colors.hex_00b3ff, italic = true })
                hl(0, '@lsp.mod.deprecated', { fg = colors.hex_4a4a5a, strikethrough = true })

                -- Telescope
                hl(0, 'TelescopeBorder', { fg = colors.hex_ff00a0 })
                hl(0, 'TelescopePromptBorder', { fg = colors.hex_ff003c })
                hl(0, 'TelescopeResultsBorder', { fg = colors.hex_00f0ff })
                hl(0, 'TelescopePreviewBorder', { fg = colors.hex_fff36b })
                hl(0, 'TelescopeSelection', { fg = colors.hex_00b3ff, bg = colors.hex_0a0a12, bold = true })
                hl(0, 'TelescopeMatching', { fg = colors.hex_ff00a0, bold = true })

                -- Neo-tree
                hl(0, 'NeoTreeNormal', { fg = colors.hex_fcee0a, bg = colors.hex_0a0a12 })
                hl(0, 'NeoTreeDirectoryName', { fg = colors.hex_ff003c })
                hl(0, 'NeoTreeDirectoryIcon', { fg = colors.hex_00f0ff })
                hl(0, 'NeoTreeFileName', { fg = colors.hex_fcee0a })
                hl(0, 'NeoTreeFileIcon', { fg = colors.hex_fcee0a })
                hl(0, 'NeoTreeIndentMarker', { fg = colors.hex_1a1a28 })
                hl(0, 'NeoTreeRootName', { fg = colors.hex_ff00a0, bold = true })
                hl(0, 'NeoTreeGitModified', { fg = colors.hex_00b3ff })
                hl(0, 'NeoTreeGitAdded', { fg = colors.hex_00f0ff })
                hl(0, 'NeoTreeGitDeleted', { fg = colors.hex_ff003c })

                -- Terminal ANSI colors (aligned with colors.toml)
                vim.g.terminal_color_0 = '#000000' -- Black
                vim.g.terminal_color_1 = '#ff003c' -- Red
                vim.g.terminal_color_2 = '#00ff9f' -- Green
                vim.g.terminal_color_3 = '#fcee0a' -- Yellow
                vim.g.terminal_color_4 = '#00b3ff' -- Blue
                vim.g.terminal_color_5 = '#ff00a0' -- Magenta
                vim.g.terminal_color_6 = '#00f0ff' -- Cyan
                vim.g.terminal_color_7 = '#d0d0d8' -- Light gray
                vim.g.terminal_color_8 = '#4a4a5a' -- Bright black
                vim.g.terminal_color_9 = '#ff5c7a' -- Bright red
                vim.g.terminal_color_10 = '#5cffc0' -- Bright green
                vim.g.terminal_color_11 = '#fff36b' -- Bright yellow
                vim.g.terminal_color_12 = '#5cc8ff' -- Bright blue
                vim.g.terminal_color_13 = '#ff5cc8' -- Bright magenta
                vim.g.terminal_color_14 = '#7cf7ff' -- Bright cyan
                vim.g.terminal_color_15 = '#ffffff' -- White
            end,
        },
    },
}
