return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				html = { "prettierd" },
				css = { "prettierd" },
				scss = { "prettierd" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				svelte = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				json = { "prettierd" },
				yaml = { "yamlfix" },
				toml = { "taplo" },
				markdown = { "prettierd" },
				graphql = { "prettierd" },
				proto = { "buf" },
				erb = { "htmlbeautifier" },
				java = { "google-java-format" },
				kotlin = { "ktlint" },
				bash = { "beautysh" },
				rust = { "rustfmt" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>gf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
