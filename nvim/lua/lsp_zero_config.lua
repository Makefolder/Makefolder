local function gd_new_tab()
    vim.cmd('tab split')
    vim.lsp.buf.definition()
end

local lsp_attach = function(_, bufnr)
    local opts = { buffer = bufnr }

    vim.keymap.set('n', 'gd', gd_new_tab, opts)
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)

    -- vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    -- vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    -- vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    -- vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    -- vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    -- vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    -- vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    -- vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)

    -- vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end

require('lsp-zero').extend_lspconfig({
    sign_text = true,
    lsp_attach = lsp_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
