--
--
-- ███████╗██╗     ███████╗███████╗██████╗ ██╗   ██╗███╗   ██╗███████╗██╗  ██╗ ██████╗
-- ██╔════╝██║     ██╔════╝██╔════╝██╔══██╗╚██╗ ██╔╝████╗  ██║██╔════╝██║ ██╔╝██╔═══██╗
-- ███████╗██║     █████╗  █████╗  ██████╔╝ ╚████╔╝ ██╔██╗ ██║█████╗  █████╔╝ ██║   ██║
-- ╚════██║██║     ██╔══╝  ██╔══╝  ██╔═══╝   ╚██╔╝  ██║╚██╗██║██╔══╝  ██╔═██╗ ██║   ██║
-- ███████║███████╗███████╗███████╗██║        ██║   ██║ ╚████║███████╗██║  ██╗╚██████╔╝
-- ╚══════╝╚══════╝╚══════╝╚══════╝╚═╝        ╚═╝   ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝
-- dashboard-nvim.lua --- Start screen
--

return {
  "glepnir/dashboard-nvim",
  event = "VimEnter",
  config = function()
  lazy = false
    local sleepyneko_ascii={
      "",
      "",
      "███████╗██╗     ███████╗███████╗██████╗ ██╗   ██╗███╗   ██╗███████╗██╗  ██╗ ██████╗ ",
      "██╔════╝██║     ██╔════╝██╔════╝██╔══██╗╚██╗ ██╔╝████╗  ██║██╔════╝██║ ██╔╝██╔═══██╗",
      "███████╗██║     █████╗  █████╗  ██████╔╝ ╚████╔╝ ██╔██╗ ██║█████╗  █████╔╝ ██║   ██║",
      "╚════██║██║     ██╔══╝  ██╔══╝  ██╔═══╝   ╚██╔╝  ██║╚██╗██║██╔══╝  ██╔═██╗ ██║   ██║",
      "███████║███████╗███████╗███████╗██║        ██║   ██║ ╚████║███████╗██║  ██╗╚██████╔╝",
      "╚══════╝╚══════╝╚══════╝╚══════╝╚═╝        ╚═╝   ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ",
      "",
      "",
    }
    local dashboard_footers = { 
      "And then he opened his cat-themed Neovim configuration. Funniest crap I've ever seen",
      "One Neovim please, with extra syntax highlighting",
      "Also try SpaceVim!",
      "Also try LunarVim!",
      "Also try NvChad!",
      "When in doubt, :wq",
      "I'd just like to interject for a moment...",
      "The power of free software compels you",
      "Did you finish your homework?",
      "Probably not yandere-proof",
      "You like configuring Neovim, don't you?",
      "L + ratio + sudo rm -rf --no-preserve-root /",
      "This is Nekosis, and I pronounce SleepyNeko as /sliːpiˈniːkoʊ/",
      "You know what they say: All Neovims neovim neovim!",
      "Notoriously Efficient, Outstandingly Vigilant, Inexplicable Magic",
      "Oh my god this is so sad, :PlayDespacito",
    }
    math.randomseed(os.time())
    require("dashboard").setup { 
      config = {
	shortcut = {
          { desc = "lazy.nvim", icon = "󰒲 ", action = "Lazy", key = "z" },
	  { desc = "Find file", icon = "󰈞 ", action = "Telescope find_files", key = "f" },
          { desc = "Find recent files", icon = "󰋚 ", action = "Telescope oldfiles", key = "r" },
	  { desc = "Quit", icon = " ", action = "qa!", key = "q" },
        },
	theme = "hyper",
	header = sleepyneko_ascii,
	project = { enable = false },
        footer = { "", string.format("🐱 %s", dashboard_footers[math.random(#dashboard_footers)]) }
      }
    }
  end,
  dependencies = { {"nvim-tree/nvim-web-devicons"} }
}
