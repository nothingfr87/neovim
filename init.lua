local o = vim.opt
local g = vim.g
local cmd = vim.cmd

-- Settings
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.softtabstop = 2

o.relativenumber = true
o.number = true

o.cursorline = true

o.mousemoveevent = true

o.termguicolors = true

o.swapfile = false
o.mouse = "a"
o.wrap = false
o.ignorecase = false

o.laststatus = 3
o.showmode = false

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

o.clipboard = "unnamedplus"

o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
o.foldcolumn = "1"
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true

vim.diagnostic.config({ virtual_text = true })
vim.api.nvim_set_hl(0, "CursorLineNr", { bold = true })

vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", {
	link = "NonText",
})

cmd("cnoreabbrev q q!")
cmd("cnoreabbrev qa qall!")
cmd("cnoreabbrev w w!")
cmd("cnoreabbrev wq wq!")
cmd("syntax on")
cmd("filetype plugin indent on")

-- Use Lazy.nvim
require("config.lazy")

-- Use my mappings
require("config.mappings")

-- Set Theme
cmd("colorscheme tokyodark")

-- Use nvim-notify
vim.notify = require("notify")
