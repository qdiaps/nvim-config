return {
    "qdiaps/nvim-template",
    config = function()
        require("nvim-template").setup({
            templates_path = vim.fn.stdpath("config") .. "/lua/templates/"
        })
    end,
}
