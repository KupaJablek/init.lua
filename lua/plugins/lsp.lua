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
                    "lua_ls",
                    "pyright",
                    "rust_analyzer"
                },
                handlers = {
                    lsp.default_setup,
                }
            })
            lsp.preset("recommended")

            local cfg = require("lspconfig")
            cfg.lua_ls.setup({})
            cfg.gopls.setup({})
            cfg.pyright.setup({})
            cfg.rust_analyzer.setup({})

            local cmp = require('cmp')
            local cmp_select = {behavior = cmp.SelectBehavior.Select}
            lsp.defaults.cmp_mappings({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            })
        end
    },
}
