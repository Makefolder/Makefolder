require('pckr').add {
    -- Packer manages itself
    'wbthomason/packer.nvim',

    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },

    {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup()
        end,
    },

    -- Add Telescope plugin
    {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
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

    -- Catppuccin
    { 'catppuccin/nvim',        as = 'catppuccin' },

    -- Onedark
    { 'navarasu/onedark.nvim' },

    -- Rose-pine
    { "rose-pine/neovim",       as = "rose-pine" },

    -- Nightfox
    'EdenEast/nightfox.nvim',

    -- Adwaita
    'Mofiqul/adwaita.nvim',

    -- Nvimgelion
    'nyngwang/nvimgelion',
}
