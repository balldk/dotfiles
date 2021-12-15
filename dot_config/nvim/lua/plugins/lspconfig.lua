local api = vim.api
local lspconfig = require('lspconfig')
local map = vim.api.nvim_set_keymap

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- local function buf_set_keymap(...) api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

-- mappings
local opts = { noremap=true, silent=true }
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-n>', ':lua vim.lsp.diagnostic.goto_next()<CR>', opts)
map('n', '<C-p>', ':lua vim.lsp.diagnostic.goto_prev()<CR>', opts)

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'rust_analyzer', 'tsserver', 'dartls', 'html', 'cssls', 'gopls' }

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities,
    }
end

