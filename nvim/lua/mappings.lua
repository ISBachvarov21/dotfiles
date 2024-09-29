require "nvchad.mappings"

local nomap = vim.keymap.del
nomap("i", "<C-l>")
nomap("n", "<C-l>")
-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "<C-l>", function()
  require("copilot.suggestion").accept()
end, { desc = "Copilot accept" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
