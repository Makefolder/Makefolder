vim.cmd(
    [[set wildignore+=lunaperche.vim,wildcharm.vim,default.vim,habamax.vim,blue.vim,darkblue.vim,delek.vim,desert.vim,elflord.vim,evening.vim,industry.vim,koehler.vim,morning.vim,murphy.vim,pablo.vim,peachpuff.vim,quiet.vim,retrobox.vim,ron.vim,shine.vim,slate.vim,sorbet.vim,torte.vim,zellner.vim,zaibatsu.vim]]
)

require('pckr_bootstrap')
require('pckr_setup')

require('core.options')
require('core.keymaps')

require('core.colorscheme')
Set_theme('carbonfox')

-- My suggestions
-- Set_theme('doom-ayu-light')
-- Set_theme('doom-horizon')
-- Set_theme('gruvbox')
-- Set_theme('base16-monokai')
-- Set_theme('base16-helios')
-- Set_theme('base16-horizon-terminal-dark')
