-- Key mappings
vim.g.mapleader = " "

-- Copy to the sys buffer
vim.api.nvim_set_keymap("n", "Y", '"+y<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "Y", '"+y<CR>', { noremap = true, silent = true })

-- Open file explorer (Netrw)
-- vim.api.nvim_set_keymap("n", "<leader>e", ":Explore<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>e", "", {
	noremap = true,
	callback = function()
		require("ranger-nvim").open(true)
	end,
})

require("ranger-nvim").setup({
	enable_cmds = false,
	replace_netrw = false,
	keybinds = {
		["<escape>"] = "quit",
	},
})

-- Vertical split
vim.api.nvim_set_keymap("n", "<C-s>", ":vs<CR>", { noremap = true, silent = true })

-- Horizontal split
vim.api.nvim_set_keymap("n", "<C-h>", ":split<CR>", { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>t", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>kt", ":Telescope colorscheme<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>kl", ":set background=light<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>kd", ":set background=dark<CR>", { noremap = true, silent = true })

-- Neovim tabs
vim.api.nvim_set_keymap("n", "tt", ":tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "tn", ":tabnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "tb", ":tabprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "tc", ":tabclose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "t.", ":tabmove +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "t,", ":tabmove -1<CR>", { noremap = true, silent = true })

-- Buffers (barbar tabs)
-- vim.api.nvim_set_keymap('n', 'tn', ':BufferNext<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'tb', ':BufferPrevious<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'tc', ':BufferClose<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'tC', ':BufferCloseAllButCurrent<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 't.', ':BufferMoveNext<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 't,', ':BufferMovePrevious<CR>', { noremap = true, silent = true })

-- Move selected lines
vim.api.nvim_set_keymap("n", "<C-[>", ":move +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-]>", ":move -2<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v", "<C-[>", ":move +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-]>", ":move -2<CR>", { noremap = true, silent = true })
