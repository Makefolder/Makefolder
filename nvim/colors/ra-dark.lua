-- Ra Dark Neovim Theme
-- Converted from VSCode theme

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'ra-dark'

-- Color Palette
local colors = {
    -- UI Colors
    background = "#202020",
    foreground = "#E0E0E0",

    -- Syntax colors
    comment = "#606060",
    constant = "#FF9999",
    number = "#99CCFF",
    string = "#99CCFF",
    keyword = "#FF9999",
    func = "#CC99CC",
    type = "#66CCCC",
    variable = "#FFCC99",

    -- UI colors
    line_number = "#606060",
    active_line_number = "#909090",
    selection = "#FFFFFF20",
    cursor_line = "#FFFFFF08",
}

-- Set Neovim highlight groups
vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
end

-- Define highlight groups
local function hi(group, fg, bg, style)
    local gui = style and 'gui=' .. style or 'gui=NONE'
    local fg_color = fg and 'guifg=' .. fg or 'guifg=NONE'
    local bg_color = bg and 'guibg=' .. bg or 'guibg=NONE'

    vim.cmd(string.format('highlight %s %s %s %s', group, fg_color, bg_color, gui))
end

-- Editor highlights
hi('Normal', colors.foreground, colors.background)
hi('CursorLine', nil, colors.cursor_line)
hi('LineNr', colors.line_number)
hi('CursorLineNr', colors.active_line_number)
hi('Search', colors.background, colors.constant)
hi('MatchParen', colors.constant, nil, 'bold')

-- Syntax highlights
hi('Comment', colors.comment, nil, 'italic')
hi('Constant', colors.constant)
hi('String', colors.string)
hi('Number', colors.number)
hi('Boolean', colors.constant)
hi('Function', colors.func)
hi('Keyword', colors.keyword)
hi('Conditional', colors.keyword)
hi('Repeat', colors.keyword)
hi('Type', colors.type)
hi('StorageClass', colors.keyword)
hi('Identifier', colors.variable)
hi('Variable', colors.variable)

-- Language-specific highlights
hi('pythonBuiltin', colors.type)
hi('pythonFunction', colors.func)
hi('pythonDecoratorName', colors.constant)

-- LSP and Diagnostic highlights
hi('DiagnosticError', '#FF6666')
hi('DiagnosticWarn', '#FF9999')
hi('DiagnosticInfo', '#66CC99')
hi('DiagnosticHint', '#99CCFF')

-- Treesitter highlights
hi('@type', colors.type)
hi('@function', colors.func)
hi('@keyword', colors.keyword)
hi('@string', colors.string)
hi('@comment', colors.comment, nil, 'italic')
hi('@variable', colors.variable)
hi('@constant', colors.constant)
hi('@number', colors.number)

-- Telescope
hi('TelescopeBorder', colors.line_number)
hi('TelescopePromptBorder', colors.line_number)
hi('TelescopeResultsBorder', colors.line_number)
hi('TelescopePreviewBorder', colors.line_number)
hi('TelescopeSelection', nil, colors.selection)

-- Completion menu
hi('Pmenu', colors.foreground, colors.background)
hi('PmenuSel', colors.background, colors.constant)
