return {
    "akinsho/bufferline.nvim",
    priority = 40,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("bufferline").setup({
            options = {
                diagnostics = "nvim_lsp",
                show_close_icon = false,
                show_buffer_close_icons = false,
            },
        })
    end,
}
