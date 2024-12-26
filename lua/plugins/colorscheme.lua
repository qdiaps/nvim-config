return {
    "andersevenrud/nordic.nvim",
    config = function()
        require("nordic").colorscheme({
            underline_option = 'none',
            italic = true,
            italic_comments = false,
            alternate_backgrounds = true,
        })
    end
}
