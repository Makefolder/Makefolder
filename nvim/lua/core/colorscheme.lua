-- Bamboo
require('bamboo').load()
-- vim.cmd('colorscheme bamboo')

-- Nightfox
-- vim.cmd('colorscheme carbonfox')
-- vim.cmd('colorscheme terafox')

-- Monokai
-- vim.cmd('colorscheme monokai')

-- Kanagawa
-- vim.cmd('colorscheme kanagawa')

-- Adwaita
-- vim.cmd('colorscheme adwaita')

-- Tinted (base16)
-- -- Access colors present in 256 colorspace
vim.g.tinted_colorspace = 256

-- Make vim background transparent to work alongside transparent terminal backgrounds
vim.g.tinted_background_transparent = 1

vim.cmd('colorscheme base16-papercolor-dark')
-- vim.cmd('colorscheme base16-tender')
-- vim.cmd('colorscheme base16-horizon-dark')
-- vim.cmd('colorscheme base16-oxocarbon-dark')

-- Onedark
require('onedark').setup {
    style = 'warmer'
}
-- vim.cmd('colorscheme onedark')

-- Nvimgelion
-- vim.cmd('colorscheme nvimgelion')

-- Gruvbox
-- vim.cmd('colorscheme gruvbox')

-- Luma
-- vim.cmd('colorscheme luma')

-- Enable syntax highlighting
vim.cmd('syntax on')
