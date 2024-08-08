Mason = {
    "williamboman/mason.nvim",
        config = function ()
        local cap = vim.lsp.protocol.make_client_capabilities()
        cap = require("cmp_nvim_lsp").default_capabilities(cap)
    
    
        require("lspconfig").lua_ls.setup({
            on_attach = on_attach,
            capabilities = cap,
            Lua = {
                workspace = { checkThirdParty = false },
                telemetry = { enable = false },
            }
        })
    
        require("mason").setup()
        require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({
                            on_attach = on_attach,
                            capabilities = cap
                    })
                end,
    
                ["lua_ls"] = function()
                    require('neodev').setup()
                    require("lspconfig").lua_ls.setup({
                            on_attach = on_attach,
                            capabilities = cap,
                            Lua = {
                                    workspace = { checkThirdParty = false },
                                    telemetry = { enable = false },
                            }})
                end
         })
    end
}