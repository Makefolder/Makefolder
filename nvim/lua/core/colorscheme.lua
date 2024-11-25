vim.g.tinted_colorspace = 256
vim.g.tinted_background_transparent = 1

vim.cmd('syntax on')

function Set_theme(theme)
    local ok, _ = pcall(vim.cmd, "colorscheme " .. theme)
    if not ok then
        vim.cmd("colorscheme default") -- Set a default or fallback theme
    end
end
