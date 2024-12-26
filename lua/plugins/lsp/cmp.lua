return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
    },
    config = function()
        local cmp = require("cmp")
        local kind_icons = {
            Text = " ",
            Method = "󰆧",
            Function = "ƒ ",
            Constructor = " ",
            Field = "󰜢 ",
            Variable = " ",
            Constant = " ",
            Class = " ",
            Interface = "󰜰 ",
            Struct = " ",
            Enum = "了 ",
            EnumMember = " ",
            Module = "",
            Property = " ",
            Unit = " ",
            Value = "󰎠 ",
            Keyword = "󰌆 ",
            Snippet = " ",
            File = " ",
            Folder = " ",
            Color = " ",
        }

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    else
                        fallback()
                    end
                end, { "i", "s" })
            }),

            completion = {
                completeopt = "menu,menuone,noselect",
            },

            sources = {
                { name = 'nvim_lsp' },
                { name = 'buffer' },
                { name = 'path' },
            },

            confirm_opts = {
                behavior = cmp.ConfirmBehavior.Replace,
                select = false,
            },

            formatting = {
                format = function(entry, vim_item)
                    vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
                    vim_item.menu = ({
                        buffer = "[Buffer]",
                        nvim_lsp = "[LSP]",
                        path = "[Path]",
                    })[entry.source.name]
                    return vim_item
                end,
            },
        })

        cmp.setup.cmdline({ '/', '?' }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = { { name = 'buffer' } }
        })

        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({ { name = 'path' } }, { { name = 'cmdline' } }),
            matching = { disallow_symbol_nonprefix_matching = false },
        })
    end,
}
