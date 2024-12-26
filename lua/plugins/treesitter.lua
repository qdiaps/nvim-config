return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "bufWinEnter",
    config = function()
        require("nvim-treesitter.configs").setup({
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            autotag = {
                enable = true,
            },
            autopairs = {
                enable = true,
            },
            rainbow = {
                enable = true,
            },
        })
    end,
}
