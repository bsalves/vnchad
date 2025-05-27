local lspconfig = require("lspconfig")

-- Configuração para o sourcekit-lsp
lspconfig.sourcekit.setup {
    cmd = { "xcrun", "sourcekit-lsp" }, -- Usa o xcrun para garantir o path correto
    filetypes = { "swift", "objective-c", "objective-cpp" },
    root_dir = lspconfig.util.root_pattern("Package.swift", ".git", "xcodeproj"),
    on_attach = function(client, bufnr)
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    end,
    capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
}
