return {   
    "catppuccin/nvim", 
    lazy = false,
    name = "cattpuccin",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "catppuccin"
    end
}
