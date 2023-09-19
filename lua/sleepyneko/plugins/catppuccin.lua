-- 
--
-- ███████╗██╗     ███████╗███████╗██████╗ ██╗   ██╗███╗   ██╗███████╗██╗  ██╗ ██████╗ 
-- ██╔════╝██║     ██╔════╝██╔════╝██╔══██╗╚██╗ ██╔╝████╗  ██║██╔════╝██║ ██╔╝██╔═══██╗
-- ███████╗██║     █████╗  █████╗  ██████╔╝ ╚████╔╝ ██╔██╗ ██║█████╗  █████╔╝ ██║   ██║
-- ╚════██║██║     ██╔══╝  ██╔══╝  ██╔═══╝   ╚██╔╝  ██║╚██╗██║██╔══╝  ██╔═██╗ ██║   ██║
-- ███████║███████╗███████╗███████╗██║        ██║   ██║ ╚████║███████╗██║  ██╗╚██████╔╝
-- ╚══════╝╚══════╝╚══════╝╚══════╝╚═╝        ╚═╝   ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ 
-- catppuccin.lua --- Catppuccin Mocha theme
--

return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
  require("catppuccin").setup({
    show_end_of_buffer = true,
    integrations = {
      dashboard = true,
      nvimtree = true,
      telescope = { enabled = true },
      treesitter = true,
      which_key = true,
    },
  })
  vim.cmd.colorscheme "catppuccin"
  end,
}
