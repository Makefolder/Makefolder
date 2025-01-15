require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"node%_modules/.*",
		},
		mappings = {
			i = { -- Insert mode
				["<Tab>"] = require("telescope.actions").move_selection_next,
				["<S-Tab>"] = require("telescope.actions").move_selection_previous,
			},
			n = { -- Normal mode
				["<Tab>"] = require("telescope.actions").move_selection_next,
				["<S-Tab>"] = require("telescope.actions").move_selection_previous,
			},
		},
	},
	pickers = {
		colorscheme = {
			enable_preview = true,
		},
	},
})
