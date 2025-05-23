require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or 'all' (the listed parsers MUST always be installed)
    ensure_installed = { 'c', 'lua', 'rust', 'java', 'javascript', 'json', 'jsonc',
        'typescript', 'go', 'gleam', 'markdown', 'markdown_inline', 'zig' },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
    }
}
