return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "cpp", "python", "lua", "html", "css", "javascript", "tsx", "go" },
				enable = {
					highlight = true,
					indent = true,
					incremental_selection = true,
				},
			})
		end,
	},
}
