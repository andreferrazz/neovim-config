return {
	"renerocksai/telekasten.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
    -- TODO: Add optional dependencies
    config = function()
        require("telekasten").setup({
            home = vim.fn.expand("~/notes"),
        })
    end,
}
