return {
        {
                "neovim/nvim-lspconfig",
                lazy = false,
                after = "mason-lspconfig.nvim",  -- Ensure mason-lspconfig is loaded first
                dependencies = {
                        {
                                "ms-jpq/coq-nvim",
                                branch = "coq",
                        },
                        {
                                "ms-jpq/coq.artifacts",
                                branch = "artifacts",
                        }
                },
                init = function()
                        vim.g.coq_settings = {
                                auto_start = "shut-up",
                        }
                end,
                config = function()
                        local lspconfig = require("lspconfig")
                        local coq = require("coq")

                        -- Configure LSP servers
                        lspconfig.pylsp.setup(coq.lsp_ensure_capabilities({}))
                        lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities({
                                settings = {
                                        Lua = {
                                                diagnostics = {
                                                        globals = { "vim" },  -- Recognize `vim` as a global variable in Lua
                                                },
                                        },
                                },
                        }))
                end
        },
}
