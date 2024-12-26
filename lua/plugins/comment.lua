return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup({
            padding = true,
            sticky = true,
            ignore = nil,
            toggler = {
                line = "gcc",
            },
            opleader = {
                line = "gc",
                block = "gb",
            },
            pre_hook = nil,
            post_hook = nil,
        })
    end,
}
