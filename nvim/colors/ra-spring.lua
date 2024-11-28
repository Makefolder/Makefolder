-- Ra Spring Neovim Theme
-- Converted from VSCode theme

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
end

vim.o.background = 'light'
vim.g.colors_name = 'ra-spring'

-- Color Palette
local colors = {
    -- UI Colors
    background = '#ffffff',
    foreground = '#303030',
    ui_background = '#f0f0f0',
    ui_border = '#00000018',
    selection = '#3399FF50',
    line_number = '#bbbbbb',
    line_number_active = '#777777',
    cursor = '#303030',

    -- Syntax Colors
    comment = '#AAAAAA',
    constant = '#0066CC',
    number = '#CC6600',
    keyword = '#0066CC',
    string = '#CC6600',
    function_name = '#883399',
    type = '#009999',
    variable = '#009900',
    operator = '#303030',
    error = '#FF6666',
    warning = '#FF6666',
}

-- Highlight function
local function hi(group, fg, bg, style)
    local gui = style and 'gui=' .. style or 'gui=NONE'
    local fg_color = fg and 'guifg=' .. fg or 'guifg=NONE'
    local bg_color = bg and 'guibg=' .. bg or 'guibg=NONE'

    vim.cmd(string.format('highlight %s %s %s %s', group, fg_color, bg_color, gui))
end

-- Basic Highlighting
hi('Normal', colors.foreground, colors.background)
hi('NormalFloat', colors.foreground, colors.ui_background)
hi('LineNr', colors.line_number)
hi('CursorLineNr', colors.line_number_active, nil, 'bold')
hi('Cursor', colors.cursor)
-- hi('Visual', nil, colors.selection)

-- Syntax Highlighting
hi('Comment', colors.comment, nil, 'italic')
hi('Constant', colors.constant)
hi('String', colors.string)
hi('Character', colors.string)
hi('Number', colors.number)
hi('Boolean', colors.constant)
hi('Float', colors.number)

hi('Identifier', colors.variable)
hi('Function', colors.function_name)

hi('Statement', colors.keyword, nil, 'bold')
hi('Conditional', colors.keyword)
hi('Repeat', colors.keyword)
hi('Label', colors.keyword)
hi('Operator', colors.operator)
hi('Keyword', colors.keyword)
hi('Exception', colors.keyword)

hi('PreProc', colors.keyword)
hi('Include', colors.keyword)
hi('Define', colors.keyword)
hi('Macro', colors.keyword)
hi('PreCondit', colors.keyword)

hi('Type', colors.type)
hi('StorageClass', colors.keyword)
hi('Structure', colors.keyword)
hi('Typedef', colors.keyword)

hi('Special', colors.constant)
hi('SpecialChar', colors.string)
hi('Tag', colors.constant)
hi('Delimiter', colors.foreground)
hi('SpecialComment', colors.comment, nil, 'bold')
hi('Debug', colors.error)

hi('Underlined', colors.constant, nil, 'underline')
hi('Ignore', colors.foreground)
hi('Error', colors.error, nil, 'bold')
hi('Todo', colors.constant, nil, 'bold')

-- Treesitter Highlighting
hi('@variable', colors.variable)
hi('@variable.builtin', colors.constant)
hi('@function', colors.function_name)
hi('@function.builtin', colors.keyword)
hi('@keyword', colors.keyword)
hi('@type', colors.type)
hi('@constant', colors.constant)
hi('@string', colors.string)
hi('@comment', colors.comment, nil, 'italic')
hi('@punctuation', colors.operator)

-- Diagnostic Highlights
hi('DiagnosticError', colors.error)
hi('DiagnosticWarn', colors.warning)
hi('DiagnosticInfo', colors.constant)
hi('DiagnosticHint', colors.comment)

-- Git Highlighting
hi('DiffAdd', '#009900')
hi('DiffChange', colors.constant)
hi('DiffDelete', colors.error)

-- Completion Menu
hi('Pmenu', colors.foreground, colors.ui_background)
hi('PmenuSel', colors.background, colors.variable)

-- Markdown
hi('@text.title', colors.keyword, nil, 'bold')
hi('@text.strong', colors.keyword, nil, 'bold')
hi('@text.emphasis', nil, nil, 'italic')
