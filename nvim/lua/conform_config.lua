require("conform").setup({
    formatters_by_ft = {
        gleam = { "gleam" },
        rust = { "rustfmt", lsp_format = "fallback" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettier" },
        lua = { "stylua" },
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
