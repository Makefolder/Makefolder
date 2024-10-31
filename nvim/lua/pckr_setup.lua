local pckr = require('pckr')

pckr.add {
    -- Packer manages itself
    'wbthomason/packer.nvim',

    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },

    -- Conform
    {
        'stevearc/conform.nvim',
        config = function()
            require('conform_config')
        end
    },

    -- Add Telescope plugin
    {
        'nvim-telescope/telescope.nvim',
        config = function()
            require 'telescope'.setup({
                pickers = {
                    colorscheme = {
                        enable_preview = true
                    }
                }
            })
        end,
        requires = { { 'nvim-lua/plenary.nvim' } }
    },

    -- Java LS
    'mfussenegger/nvim-jdtls',

    -- Dashboard
    {
        'nvimdev/dashboard-nvim',
        config = function()
            require('dashboard').setup()
        end,
        requires = { { 'nvim-tree/nvim-web-devicons' } }
    },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter',          { run = ':TSUpdate' } },

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
    },
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',

    -- Autoclose
    'm4xshen/autoclose.nvim',

    -- Git stuff
    'lewis6991/gitsigns.nvim',

    -- Onedark
    'navarasu/onedark.nvim',

    -- Adwaita
    'Mofiqul/adwaita.nvim',

    -- Nvimgelion
    'nyngwang/nvimgelion',

    -- Kanagawa
    'rebelot/kanagawa.nvim',

    -- Gruvbox
    'ellisonleao/gruvbox.nvim',

    -- Nightfox
    'EdenEast/nightfox.nvim',

    -- Bamboo
    'ribru17/bamboo.nvim',

    -- Monokai
    'tanvirtin/monokai.nvim',

    -- Luma
    'bartekjaszczak/luma-nvim',
}
