return {
	-- Tokoynight colorscheme
	{
		"tiagovla/tokyodark.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night",
		},
	},
	-- Indentation Guide Lines
	{
		"nvim-mini/mini.indentscope",
		version = "*",
		opts = {
			symbol = "┃",
			options = {
				try_as_border = true,
			},
		},
	},
	-- Pywal colorscheme
	{
		"AlphaTechnolog/pywal.nvim",
		opts = {},
	},
	-- Better Comments (Make comments better)
	{
		"Djancyp/better-comments.nvim",
		config = function()
			require("better-comment").Setup()
		end,
	},
	-- Render markdown directly in neovim
	{
		"MeanderingProgrammer/render-markdown.nvim",
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	-- Icons for neovim
	{ "nvim-tree/nvim-web-devicons" },
	-- Which key helps for keybinds in neovim
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "helix",
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	-- LuaLine (Better Status Line)
	{
		"nvim-lualine/lualine.nvim",
		opts = {},
	},
	-- Colorizer render colors in neovim
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	-- nvim-notify for better notifications
	{
		"rcarriga/nvim-notify",
		opts = {
			background_colour = "#000000",
		},
	},
	-- nvim-tree to explore files
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
	-- nvim-ufo helps for folding code
	{
		"kevinhwang91/nvim-ufo",
		dependencies = "kevinhwang91/promise-async",
		config = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.foldingRange = {
				dynamicRegistration = false,
				lineFoldingOnly = true,
			}
			local language_servers = vim.lsp.get_clients() -- or list servers manually like {'gopls', 'clangd'}
			for _, ls in ipairs(language_servers) do
				require("lspconfig")[ls].setup({
					capabilities = capabilities,
					-- you can add other fields for setting up lsp server in this table
				})
			end
			require("ufo").setup()
		end,
	},
}
