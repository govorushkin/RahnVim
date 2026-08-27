return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "basedpyright",
                "html",
                "ts_ls",
                "djls",
                "djlsp",
            },
            dependencies = {
                { "mason-org/mason.nvim", opts = {} },
            },
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            {
                "neovim/nvim-lspconfig",
                opts = {
                    servers = {
                        basedpyright = {
                            settings = {
                                basedpyright = {
                                    analysis = {
                                        typeCheckingMode = "standard",
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    },
}
