local cmp = require 'cmp'
local lspkind = require 'lspkind'
local api = vim.api
local fn = vim.fn

local function feed_termcodes(s)
    return api.nvim_feedkeys(api.nvim_replace_termcodes(s))
end

cmp.setup {
    snippet = {
        expand = function(args)
            fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        -- Move through completion
        ['Down'] = cmp.mapping.select_next_item(),
        ['Up'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),

        -- Toggle completion
        ['<C-Space>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.close()
            else
                cmp.complete()
            end
        end, { 'i', 'c' }),

        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },

        -- Move through snippet
        ["<Tab>"] = cmp.mapping(function(fallback)
            if fn.call("vsnip#available", {1}) == 1 then
                feed_termcodes('<Plug>(vsnip-expand-or-jump)')
            else
                fallback()
            end
        end, { 'i', 's' }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if fn.call("vsnip#available", {-1}) == 1 then
                feed_termcodes('<Plug>(vsnip-jump-prev)')
            else
                fallback()
            end
        end, { 'i', 's' }),
    },
    sources = {
        { name = 'vsnip' },
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = "path" },
        { name = "buffer", keyword_length = 3 }
    },
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                path = "   (Path)",
                buffer = "   (Buffer)",
                calc = "   (Calc)",
                vsnip = "   (Snippet)",
                nvim_lsp = "   (LSP)",
                nvim_lua = "[api]",
            },
        },
    },
}

