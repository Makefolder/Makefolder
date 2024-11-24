require('bamboo').load()
vim.g.tinted_colorspace = 256
vim.g.tinted_background_transparent = 1

vim.cmd('colorscheme base16-helios')

-- Onedark
require('onedark').setup {
    style = 'warmer'
}

vim.cmd('syntax on')
