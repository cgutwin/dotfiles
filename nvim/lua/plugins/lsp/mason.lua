return {
        {
                "williamboman/mason.nvim",
                cmd = "Mason",
                config = function()
                        require("mason").setup({
                                ui = {
                                        icons = {
                                                package_installed = "✓",
                                                package_pending = "➜",
                                                package_uninstalled = "✗"
                                        }
                                }
                        })
                end,
        },
        {
                "williamboman/mason-lspconfig.nvim",
                after = "mason.nvim",  -- Ensure Mason is loaded first
                config = function()
                        require("mason-lspconfig").setup({
                                ensure_installed = { "pylsp", "lua_ls" }, -- List of LSP servers to auto-install
                                automatic_installation = true,  -- Automatically install servers set up with lspconfig
                        })
                end
        },
}
