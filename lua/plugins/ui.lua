return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",
		},
	},
	{
		"Djancyp/better-comments.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("better-comment").Setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	{ "nvim-tree/nvim-web-devicons" },
	{
		"nvim-lualine/lualine.nvim",
		opts = {},
	},
	{
		"norcalli/nvim-colorizer.lua",
		lazy = false,
		priority = 1000,
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"rcarriga/nvim-notify",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			filters = {
				dotfiles = true,
			},
			view = {
				width = 25,
				side = "left",
				number = false,
			},
		},
	},
}
