require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Harpoon
map("n", "<leader>ha", function()
  require("harpoon"):list():add()
end, { desc = "Harpoon file" })

map("n", "<leader>hv", function()
  local harpoon = require "harpoon"
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon quick menu" })

map("n", "<leader>hc", function()
  require("harpoon"):list():clear()
end, { desc = "Harpoon clear list" })

map("n", "<leader>1", function()
  require("harpoon"):list():select(1)
end, { desc = "Harpoon to file 1" })

map("n", "<leader>2", function()
  require("harpoon"):list():select(2)
end, { desc = "Harpoon to file 2" })

map("n", "<leader>3", function()
  require("harpoon"):list():select(3)
end, { desc = "Harpoon to file 3" })

map("n", "<leader>4", function()
  require("harpoon"):list():select(4)
end, { desc = "Harpoon to file 4" })

map("n", "<leader>5", function()
  require("harpoon"):list():select(5)
end, { desc = "Harpoon to file 5" })

-- Snippets
map("n", "<S-Up>", "0v$x2ko<Esc>pjdd", { desc = "Snippet Move line up" })

map("n", "<S-Down>", "0v$xjp", { desc = "Snippet Move line down" })

map("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true, noremap = true })

map("i", "<C-Up>", function()
  require("cmp"):select_prev_item()
end, { desc = "Snippet Move caret up", silent = true })

map("i", "<C-Down>", function()
  require("cmp"):select_next_item()
end, { desc = "Snippet Move caret down", silent = true })

-- Debugging
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "DAP Open debug tray" })

map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "DAP Toggle breakpoint" })
