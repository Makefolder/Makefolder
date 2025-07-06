local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = false,
			},
		},
	},
})

lspconfig.gopls.setup({})
lspconfig.gleam.setup({})
lspconfig.clangd.setup({})
lspconfig.ts_ls.setup({})
lspconfig.eslint.setup({})
lspconfig.astro.setup({})

lspconfig.zls.setup({
	cmd = { "/Users/killer-whale/Documents/zls-aarch64-macos/zls" },
	settings = {
		zls = {
			-- omit the following line if `zig` is in your PATH
			-- zig_exe_path = { "/Users/killer-whale/Documents/zls-aarch64-macos/zls" },
		},
	},
})

lspconfig.lua_ls.setup({
	on_init = function(client)
		if client.workspace_folders then
			local path = client.workspace_folders[1].name
			if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
				return
			end
		end

		client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
			runtime = {
				-- Tell the language server which version of Lua you're using
				-- (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			-- Make the server aware of Neovim runtime files
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		})
	end,
	settings = {
		Lua = {},
	},
})
