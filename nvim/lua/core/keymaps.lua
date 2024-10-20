-- Key mappings
vim.g.mapleader = " "

-- Open file explorer (Netrw)
vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', { noremap = true, silent = true })

-- Vertical split
vim.api.nvim_set_keymap('n', '<C-s>', ':vs<CR>', { noremap = true, silent = true })

-- Horizontal split
vim.api.nvim_set_keymap('n', '<C-h>', ':split<CR>', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>t', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>kt', ':Telescope colorscheme<CR>', { noremap = true, silent = true })

-- Neovim tabs
vim.api.nvim_set_keymap('n', 'tt', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tn', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tb', ':tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tc', ':tabclose<CR>', { noremap = true, silent = true })

-- Move selected lines
vim.api.nvim_set_keymap('n', '<C-[>', ':move +1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-]>', ':move -2<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '<C-[>', ':move +1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-]>', ':move -2<CR>', { noremap = true, silent = true })
