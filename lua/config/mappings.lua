local set = vim.keymap.set

-- NvimTree Mappings
set("n", "<C-b>", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree" })

-- Telescope
set("n", "<C-f>", ":Telescope find_files<CR>", { desc = "Open telescope" })
set("n", "<C-g>", ":Telescope live_grep<CR>", { desc = "Search Words in Telescope" })

-- Bufferline
set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Cycle Through Tabs" })
set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Cycle Through Previuos Tabs" })
set("n", "<leader>w", ":BufferLinePickClose<CR>", { desc = "Pick a Tab to close" })
set("n", "<leader>p", ":BufferLinePick<CR>", { desc = "Pick a Tab to open" })

-- UFO
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

-- Global Mappings
set("n", "<C-t>", ":term<CR>", { desc = "Open Terminal Window" })
set("n", "<leader>ts", ":split<CR>", { desc = "Split Neovim Window Horizantly" })
set("n", "<leader>tv", ":vsplit<CR>", { desc = "Split Neovim Window Vertically" })
set("n", "<C-q>", ":q!<CR>", { desc = "Close Window" })
