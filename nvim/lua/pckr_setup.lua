local pckr = require('pckr')
pckr.setup {
    autoremove  = false, -- Remove unused plugins
    autoinstall = true,  -- Auto install plugins
}

pckr.add {
    -- Packer manages itself
    'wbthomason/packer.nvim',

    -- Telescope fzf
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
                defaults = {
                    mappings = {
                        i = { -- Insert mode
                            ["<Tab>"] = require('telescope.actions').move_selection_next,
                            ["<S-Tab>"] = require('telescope.actions').move_selection_previous,
                        },
                        n = { -- Normal mode
                            ["<Tab>"] = require('telescope.actions').move_selection_next,
                            ["<S-Tab>"] = require('telescope.actions').move_selection_previous,
                        },
                    },
                },
                pickers = {
                    colorscheme = {
                        enable_preview = true
                    }
                }
            })
        end,
        requires = { 'nvim-lua/plenary.nvim' }
    },

    -- Java LS
    -- 'mfussenegger/nvim-jdtls',

    -- Dashboard
    {
        'nvimdev/dashboard-nvim',
        config = function()
            require('dashboard').setup()
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('treesitter')
        end
    },

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
        requires = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/nvim-cmp',
        },
        config = function()
            require('lsp_zero_config')
            require('lsp_setup')
            require('cmp_setup')
        end
    },

    -- Git stuff
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    },

    -- Autoclose
    {
        'm4xshen/autoclose.nvim',
        config = function()
            require('autoclose').setup()
        end
    },

    -- Themes
    -- Tinted-Vim (base16 & base24)
    'tinted-theming/tinted-vim',
    'GustavoPrietoP/doom-themes.nvim',
    'Mofiqul/adwaita.nvim',
    'ellisonleao/gruvbox.nvim',
    {
        'navarasu/onedark.nvim',
        config = function()
            require('onedark').setup {
                style = 'warmer'
            }
        end
    },
    'nyngwang/nvimgelion',
    'EdenEast/nightfox.nvim',
    'tanvirtin/monokai.nvim',
    'rebelot/kanagawa.nvim',
    'bartekjaszczak/luma-nvim',
    {
        'ribru17/bamboo.nvim',
        config = function()
            require('bamboo').load()
        end
    },
}
