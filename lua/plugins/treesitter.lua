return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "vim", "vimdoc", "elixir", "javascript", "html", "css", "astro" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
