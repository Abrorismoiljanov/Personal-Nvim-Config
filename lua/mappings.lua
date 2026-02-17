require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

vim.o.tabstop = 4       -- width of a tab character
vim.o.softtabstop = 4   -- spaces when pressing <Tab>
vim.o.shiftwidth = 4    -- indentation width
vim.o.expandtab = true  -- convert tabs to spaces

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
