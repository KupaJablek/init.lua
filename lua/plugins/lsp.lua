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
            lsp.extend_lspconfig()

            lsp.on_attach(function(client, bufnr)
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp.default_keymaps({buffer = bufnr})
            end)

            require("mason").setup({})
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "gopls",
                    "lua_ls",
                    "pyright",
                    "rust_analyzer",
                    "clangd"
                },
                handlers = {
                    lsp.default_setup,
                    lua_ls = function()
                        local lua_opts = lsp.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
                        require('lspconfig').gopls.setup({})
                        require('lspconfig').pyright.setup({})
                        require('lspconfig').rust_analyzer.setup({})
                        require('lspconfig').clangd.setup({})
                    end,
                },
            })

            local cmp = require('cmp')
            -- local cmp_action = require('lsp-zero').cmp_action()

            local cmp_select = {behavior = cmp.SelectBehavior.Select}
            cmp.setup({
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                sources = {
                    { name = 'nvim_lsp' }
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                })
            })
        end
    },
}
