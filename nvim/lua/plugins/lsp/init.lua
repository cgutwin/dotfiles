return {
        {
                "neovim/nvim-lspconfig",
                after = "mason-lspconfig.nvim",  -- Ensure mason-lspconfig is loaded first
                config = function()
                        local lspconfig = require("lspconfig")

                        -- Configure LSP servers
                        lspconfig.pylsp.setup{}
                        lspconfig.lua_ls.setup {
                                settings = {
                                        Lua = {
                                                diagnostics = {
                                                        globals = { "vim" },  -- Recognize `vim` as a global variable in Lua
                                                },
                                        },
                                },
                        }
                end
        },
}
