codeComplition = {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",

        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local cmp = require('cmp')
        local mp = cmp.mapping

        local luasnip = require('luasnip')

        require('luasnip.loaders.from_vscode').lazy_load()
        luasnip.config.setup({})

        cmp.setup({
                snippet = {
                        expand = function(args)
                            luasnip.lsp_expand(args.body)
                        end
                },
                mapping = mp.preset.insert({
                         ['<C-n>'] = mp.select_next_item(),
                         ['<C-p>'] = mp.select_prev_item(),
                         ['<C-d>'] = mp.scroll_docs(-4),
                         ['<C-f>'] = mp.scroll_docs(4),
                         ['<C-space'] = mp.complete({}),
                         ['<CR>'] = mp.confirm({
                                 behavior = cmp.ConfirmBehavior.Replace,
                                 select = true
                         }),
                         ['<Tab>'] = mp(function(fallback)
                                 if cmp.visible() then
                                       cmp.select_next_item()
                                 elseif luasnip.expand_or_locally_jumpable() then
                                       luasnip.expand_or_jump()
                                 else
                                       fallback()
                                 end
                         end, {'i', 's'}),
                         ['<S-Tab>'] = mp(function(fallback)
                                  if cmp.visible() then
                                       cmp.select_prev_item()
                                 elseif luasnip.locally_jumpable(-1) then
                                       luasnip.jump(-1)
                                 else
                                       fallback()
                                 end
                         end, {'i', 's'})
                }),
                sources = {
                      { name = 'nvim_lsp' },
                        { name = 'luasnip'  },
                }
            })
    end
}
