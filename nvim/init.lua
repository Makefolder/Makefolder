vim.cmd(
    [[set wildignore+=default.vim,habamax.vim,blue.vim,darkblue.vim,delek.vim,desert.vim,elflord.vim,evening.vim,industry.vim,koehler.vim,morning.vim,murphy.vim,pablo.vim,peachpuff.vim,quiet.vim,retrobox.vim,ron.vim,shine.vim,slate.vim,sorbet.vim,torte.vim,zellner.vim,zaibatsu.vim]])
-- -wildcharm.vim, -lunaperche.vim

require("pckr_bootstrap")
require("pckr_setup")

require("lsp_zero_config")
require("lsp_setup")
require("cmp_setup")
require("treesitter")
require('better-comment').Setup()
require("gitsigns").setup()
require("autoclose").setup()

require("core.options")
require("core.keymaps")
require("core.colorscheme")
