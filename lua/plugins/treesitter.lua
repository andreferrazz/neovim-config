return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "vim", "vimdoc", "html", "css", "javascript" },
			auto_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
