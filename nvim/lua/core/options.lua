-- True colors
vim.opt.termguicolors = true

-- Enable number line
vim.opt.number = true

-- Turn off line wrap
vim.opt.wrap = false

-- Rel. line numbers
vim.opt.relativenumber = true
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
	pattern = "*",
	callback = function()
		vim.opt.relativenumber = false
	end,
})
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
	pattern = "*",
	callback = function()
		vim.opt.relativenumber = true
	end,
})

-- Always show the status line
vim.opt.laststatus = 2

-- Set the number of spaces a tab counts for
vim.opt.tabstop = 4

-- Set the number of spaces for auto-indent
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Search config
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Scroll config
vim.opt.scrolloff = 8

vim.opt.updatetime = 50

-- That line almost in the centre
-- of ye screen
vim.opt.colorcolumn = "90"
