-- 
--
-- ███████╗██╗     ███████╗███████╗██████╗ ██╗   ██╗███╗   ██╗███████╗██╗  ██╗ ██████╗ 
-- ██╔════╝██║     ██╔════╝██╔════╝██╔══██╗╚██╗ ██╔╝████╗  ██║██╔════╝██║ ██╔╝██╔═══██╗
-- ███████╗██║     █████╗  █████╗  ██████╔╝ ╚████╔╝ ██╔██╗ ██║█████╗  █████╔╝ ██║   ██║
-- ╚════██║██║     ██╔══╝  ██╔══╝  ██╔═══╝   ╚██╔╝  ██║╚██╗██║██╔══╝  ██╔═██╗ ██║   ██║
-- ███████║███████╗███████╗███████╗██║        ██║   ██║ ╚████║███████╗██║  ██╗╚██████╔╝
-- ╚══════╝╚══════╝╚══════╝╚══════╝╚═╝        ╚═╝   ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ 
-- remap.lua --- Keybindings and remappings configuration
--

local wk = require("which-key")

-- Toggle
wk.register({
  t = {
    name = "Toggle",
    t = { "<cmd>NvimTreeToggle<cr>", "Toggle nvim-tree" }
    },
}, { prefix = "<leader>" })

-- File
wk.register({
  f = {
    name = "File",
    c = { "<cmd>e ~/.config/nvim/lua/sleepyneko/init.lua<cr>", "Open configuration" },
    f = { "<cmd>Telescope find_files<cr>", "Find file" },
    r = { "<cmd>Telescope oldfiles<cr>", "Find recent files" }
  }
}, { prefix = "<leader>" })

-- lazy.nvim
wk.register({
  l = {
    name = "lazy.nvim",
    h = { "<cmd>Lazy home<cr>", "Open lazy.nvim" },
    s = { "<cmd>Lazy sync<cr>", "Sync plugins" }
  }
}, { prefix = "<leader>" }) 
