local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

M.snippets = {
  plugin = false,
  n = {
    ["<S-Up>"] = {
      "0v$x2ko<Esc>pjdd",
      "Move line up",
    },
    ["<S-Down>"] = {
      "0v$xjp",
      "Move line down",
    },
  },
}

M.harpoon = {
  plugin = true,
  n = {
    ["<leader>ha"] = {
      function()
        require("harpoon"):list():add()
      end,
      "Harpoon file",
    },
    ["<leader>hv"] = {
      function()
        local harpoon = require "harpoon"
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      "Harpoon quick menu",
    },
    ["<leader>hc"] = {
      function()
        require("harpoon"):list():clear()
      end,
      "Clear harpoon list",
    },
    ["<leader>1"] = {
      function()
        require("harpoon"):list():select(1)
      end,
      "Harpoon to file 1",
    },
    ["<leader>2"] = {
      function()
        require("harpoon"):list():select(2)
      end,
      "Harpoon to file 2",
    },
    ["<leader>3"] = {
      function()
        require("harpoon"):list():select(3)
      end,
      "Harpoon to file 3",
    },
    ["<leader>4"] = {
      function()
        require("harpoon"):list():select(4)
      end,
      "Harpoon to file 4",
    },
    ["<leader>5"] = {
      function()
        require("harpoon"):list():select(5)
      end,
      "Harpoon to file 5",
    },
  },
}

return M
