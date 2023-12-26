return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("neo-tree").setup()
        vim.keymap.set('n', '<c-n>', ':Neotree filesystem toggle left<CR>')
        vim.keymap.set('n', '<c-b>', ':Neotree git_status toggle right<CR>')
    end
}
