return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("lazy").setup({
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
			config = function()
				local configs = require("nvim-treesitter.configs")
				config.setup({
					ensure_installed = { "c", "lua", "vim", "vimdoc" },
					sync_install = false,
					highlight = { enable = true },
					indent = { enable = true },
				})
			end
		})
	end
}
