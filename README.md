<p align="center">
<img src="https://github.com/Nekosis/sleepyneko/blob/main/images/sleepyneko-logo.png?raw=true">
</p>

<h1 align="center">SleepyNeko</h1>

<p align="center">My personal configuration for Neovim, featuring the lazy.nvim package manager.</p>

<p align="center">
<a href="https://www.gnu.org/licenses/gpl-3.0.en.html"><img alt="GPLv3 License" src="https://img.shields.io/badge/License-GPLv3-red.svg"></a>
<a href="https://neovim.io/"><img alt="Neovim Editor" src="https://img.shields.io/badge/Editor-Neovim-green.svg"></a>
<a href="https://github.com/folke/lazy.nvim"><img alt="lazy.nvim Package Manager" src="https://img.shields.io/badge/Package%20Manager-lazy.nvim-blue.svg"></a>
</p>

## About SleepyNeko

SleepyNeko is my personal configuration for Neovim, featuring the [lazy.nvim package manager](https://github.com/folke/lazy.nvim). In case you are unfamiliar with Neovim, it is an amazing fork of the already great [Vim](https://www.vim.org/) text editor that adds a multitude of modern features, the most notable of which being the ability to write your configuration in the extensible scripting language [Lua](https://www.lua.org/about.html) instead of Vim's limited Vimscript. Vim, and by extension, Neovim, are characterized by their sheer efficiency and speed. If you want to read more about Neovim itself, feel free to check out the [Neovim website](https://neovim.io/). 

This is my first ever configuration for any form of Vim, following the (relative) completion of my Emacs configuration, [Nyamacs](https://github.com/Nekosis/nyamacs). I learned Emacs first because I already had an alright TUI text editor going for me in the form of [Micro](https://micro-editor.github.io/) (which I would definitely recommend to new Linux users, by the way), but needed a GUI text editor that:

- DE-agnostic, as I run a standalone window manager
- Not explicitly a code editor or IDE
- Extensible via plugins/packages

[Lite XL](https://lite-xl.com/) was the closest I ever got to meeting these requirements before Emacs, but it was just plain finnicky, and it's written *entirely* in Lua, which isn't really meant for big programs like this. So I found myself stuck—that is, until I found DistroTube's series [Configuring Emacs](https://www.youtube.com/watch?v=d1fgypEiQkE&list=PL5--8gKSku15e8lXf7aLICFmAHQVo0KXX). With the help of that series, and a little creativity on my side, I managed a full Emacs config, that being Nyamacs. But, in the very first episode of DT's series, you might notice this line:

> Another thing we, of course, want to load up right away is—we want to make sure that we get Evil mode started. ... That way, I get my Vim keybindings—that way, I don't struggle here like I am right now trying to remember how Emacs works as far as the standard GNU Emacs keybindings.

I wanted to make sure that I wasn't going to come up with any conflicts with his method of configuration and mine, at least for the first few episodes, so I added Evil mode right along with him. I ended up growing to like Vim keybindings during the setup. Once I was done with that series, I found myself with an amazing text editor on the GUI side, but on the TUI side, Micro suddenly seemed a lot more... insufficient. Plus, I didn't want to have to juggle two sets of keybindings between Emacs and Micro. So, seeing as I had already familiarized myself with Vim keybindings, why not take Vim itself for a spin?

And so I did. I already knew about Neovim from a few months back, when I tried (and failed) to complete the Neovim tutor. But, after completing my Emacs configuration, I didn't really need it, because psst, here's what they don't want you to know: **Vim is actually super easy!** I can give you a sufficient tutorial on how to use Vim in a few bullet points whereas the tutor takes 800 lines. In fact, I think I will:

- After opening Vim, by default, you will be in normal mode, so you can't type anything. You can press the `i` key to enter into insert mode. From there, start typing like normal. When you're done, hit `Esc`.
- Type `:w` to write, `:q` to quit your current file, `:wq` to do both, `:qa` to close Vim entirely, `:q!` to force quit your current file, and `:qa!` to force quit Vim.
- *The important part:* If you ever find yourself doing something slowly, stop and think: "Is there a more efficent way to do this in Vim?" Chances are, yes. Look it up, and learn it, on a case-by-case basis, because you don't need to learn what you won't use.

Of course, if you actually want to *configure* Vim, it will take a bit more time. But I was up for the challenge, so I did. And, to my surprise, what took 2 weeks to do for Emacs took 3 hours (give-or-take) for Neovim. That being said, what I have is fairly minimal. It's meant to do one thing and do it well: Edit text in the terminal. It's not an IDE-like environment, and it's not big and flashy like SpaceVim or NvChad—It just works, and it looks nice.

So, if you don't want to configure Vim, but you don't want to do absolutely everything in Vim either, this config is for you.

## Installation

SleepyNeko is still a bit opinionated, but it is much less so than Nyamacs. Therefore, it's not absolutely *required* to go through and edit each file (especially since, unlike Nyamacs, the config is segmented into many different files), it is still highly recommended if you plan on using this long-term. 

> [!IMPORTANT]
> Like Nyamacs, this configuration is intended for GNU/Linux systems, and was written on an Arch Linux-based OS. Thus, Windows or macOS use is not supported. 

Here are some general installation steps:

1. Remove any existing Neovim-related directories from your home directory, including `~/.local/share/nvim`, `~/.local/state/nvim/`, `~/.cache/nvim/`, and, of course, `~/.config/nvim/`.
2. Install the following dependencies:
     - `nvim`
     - `git` (for lazy.nvim and nvim-treesitter)
     - `tree-sitter` and `tree-sitter-cli` (for nvim-treesitter)
     - `node` (for nvim-treesitter)
     - `cc`, `gcc`, `clang`, `cl`, or `zig` (for nvim-treesitter, you probably have at least one of these installed)
     - `xclip` or `wl-clipboard` for X11 and Wayland, respectively (for proper clipboard support)
     - `rg` (for telescope.nvim)
     - `fd` (for telescope.nvim)
4. Clone this repository to ~/.config/nvim/.
5. Run `nvim` from the terminal.
6. Wait for lazy.nvim to finish installing all the plugins (this should take about 5 seconds), then press q.
7. Type `:qa` to quit Neovim.
8. Run `nvim` once again, and you are done! The leader key is `Space`, and which-key.nvim is enabled, so you can explore any keybindings set from the popup.

## License

This repository is licensed under the [GPLv3 License](https://www.gnu.org/licenses/gpl-3.0.en.html). If you have found that SleepyNeko has violated any licenses or copyrights, please don't hesitate to open an issue on this repository and I will do my best to respond in a timely manner.
