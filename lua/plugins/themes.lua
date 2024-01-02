return {
    {
        "doums/darcula",
        name = "darcula",
        priority = 1000,
        -- config = function()
        --     vim.cmd "colorscheme darcula"
        -- end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd "colorscheme catppuccin-mocha"
        end
    }
};

