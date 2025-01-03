-- all requires for autocompletes language server protocols 
--
require("luasnip.loaders.from_vscode").lazy_load()

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

local serverList = {'clangd', 'pyright', 'lua_ls'}

for _, lsp in ipairs(serverList) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
    }
end

local luasnip = require('luasnip')
local cmp = require 'cmp'

cmp.setup{
    snippet = {
        expand = function (args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-space'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm{
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, {'i', 's'}),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {'i', 's'}),
    }),
    sources = {
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
    },
}
