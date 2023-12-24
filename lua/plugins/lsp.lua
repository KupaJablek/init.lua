return {
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = function()
            local lsp = require("lsp-zero")
            require("mason").setup({})
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "gopls",
                    "lua_ls"
                },
                handlers = {
                    lsp.default_setup,
                }
            })
            lsp.preset("recommended")

            local cfg = require("lspconfig")
            cfg.lua_ls.setup({})
            cfg.gopls.setup({})
        end
    },
}
