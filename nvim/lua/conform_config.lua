require("conform").setup({
	formatters_by_ft = {
		gleam = { "gleam" },
		rust = { "rustfmt", lsp_format = "fallback" },
		zig = { "zig fmt" },
		typescript = { "prettier", "prettierd", stop_after_first = true },
		typescriptreact = { "prettier", "prettierd", stop_after_first = true },
		lua = { "stylua" },

		json = { "fixjson" },
		jsonc = { "fixjson" },
		yaml = { "yq" },
		-- xml = { 'yq' },
		-- csv = { 'yq' },
	},
	format_on_save = {
		lsp_fallback = true,
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
