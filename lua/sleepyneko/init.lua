-- 
--
-- ███████╗██╗     ███████╗███████╗██████╗ ██╗   ██╗███╗   ██╗███████╗██╗  ██╗ ██████╗ 
-- ██╔════╝██║     ██╔════╝██╔════╝██╔══██╗╚██╗ ██╔╝████╗  ██║██╔════╝██║ ██╔╝██╔═══██╗
-- ███████╗██║     █████╗  █████╗  ██████╔╝ ╚████╔╝ ██╔██╗ ██║█████╗  █████╔╝ ██║   ██║
-- ╚════██║██║     ██╔══╝  ██╔══╝  ██╔═══╝   ╚██╔╝  ██║╚██╗██║██╔══╝  ██╔═██╗ ██║   ██║
-- ███████║███████╗███████╗███████╗██║        ██║   ██║ ╚████║███████╗██║  ██╗╚██████╔╝
-- ╚══════╝╚══════╝╚══════╝╚══════╝╚═╝        ╚═╝   ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ 
-- init.lua --- The initialization file for the SleepyNeko Neovim configuration
--

-- Disable unneeded providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

-- Enable true color support
vim.opt.termguicolors = true

-- Automatically use the system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Enable line numbers
vim.wo.number = true

-- Use spaces instead of tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Set leader key
vim.g.mapleader=" "

-- Load other configuration files provided by SleepyNeko 
require("sleepyneko.lazy")
require("sleepyneko.remap") 
