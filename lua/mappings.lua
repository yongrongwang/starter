require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local nomap = vim.keymap.del

nomap("n", "<tab>")
nomap("n", "<S-tab>")
nomap("n", "<C-n>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-n>", function() require("nvchad.tabufline").next() end, { desc = "buffer goto next" })
map("n", "<C-p>", function() require("nvchad.tabufline").prev() end, { desc = "buffer goto prev" })
map("n", "<A-o>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
