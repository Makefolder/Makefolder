require('pckr').add {
    -- Packer manages itself
    'wbthomason/packer.nvim',

    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },

    -- Conform
    {
        'stevearc/conform.nvim',
        config = function()
            require("conform_config")
        end
    },
    -- Add Telescope plugin
    {
        'nvim-telescope/telescope.nvim',
        config = function()
            require "telescope".setup({
                pickers = {
                    colorscheme = {
                        enable_preview = true
                    }
                }
            })
        end,
        requires = { { 'nvim-lua/plenary.nvim' } }
    },

    -- Dashboard
    {
        'nvimdev/dashboard-nvim',
        config = function()
            require("dashboard").setup()
        end,
        requires = { { 'nvim-tree/nvim-web-devicons' } }
    },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter',          { run = ':TSUpdate' } },

    -- LSP
    { 'VonHeikemen/lsp-zero.nvim',                branch = 'v4.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },

    'm4xshen/autoclose.nvim',

    -- Git stuff
    { 'lewis6991/gitsigns.nvim' },

    -- Onedark
    { 'navarasu/onedark.nvim' },

    -- Rose-pine
    { "rose-pine/neovim",       as = "rose-pine" },

    -- Adwaita
    'Mofiqul/adwaita.nvim',

    -- Nvimgelion
    'nyngwang/nvimgelion',

    -- Gleam theme
    'bgwdotdev/gleam-theme-nvim',

    -- Kanagawa
    'rebelot/kanagawa.nvim',

    -- Gruber darker
    'blazkowolf/gruber-darker.nvim',
}
