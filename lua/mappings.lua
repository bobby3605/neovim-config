require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local dap = require("dap")

map("n", "<leader>db", function() dap.toggle_breakpoint() end, { desc = "Add breakpoint at line"})
map("n", "<leader>dr", function() dap.continue() end, { desc = "Start of continue the debugger"})

