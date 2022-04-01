# Dave's Neovim IDE Config

## Overview
There comes a point in any Jedi's training where one must put down the borrowed lightsaber and build one for oneself.

## Prerequisites
- unzip (for language server installation)
- node / npm (for language server installation)
- ripgrep (for Telescope)
- ttf-joypixels (for emoji on Linux)
- rust (to cargo install stylua)
- yarn (optional)
- ls_emmet (globally installed via yarn or npm)
- composer (for twigcs)
- twigcs (globally installed via composer - don't forget to update $PATH)
- eslint_d (optional eslint daemon to improve formatting speed)

## Hacks
Due to an issue compiling dsznajder/vscode-react-javascript-snippets outside of VS Code, I'm currently manually copying the generated snippets json from my VS Code extensions directory. I'm also using WSL, so the copy command looks like this:

`cp /mnt/c/Users/Dave/.vscode/extensions/dsznajder.es7-react-js-snippets-4.3.2/lib/snippets/generated.json ~/.local/share/nvim/site/pack/packer/start/vscode-react-javascript-snippets/lib/snippets/generated.json`

Obviously replace 'Dave' with your Windows username or otherwise adjust the paths to your system as appropriate.

## Rough Goals
I want my IDE to:

- have parity with VS Code as a baseline (and preferably exceed it)
- be able to deploy on a remote server with very little effort
- be lightning quick on meagre hardware
- be easy to modify
- be beautiful

## Inspiration / Targets for Code Cannibalism
- [Christian Chiarulli's Neovim Config](https://github.com/ChristianChiarulli/nvim)
- [Lunarvim by Christian Chiarulli](https://github.com/LunarVim/LunarVim)
- [NvChad](https://github.com/NvChad/NvChad)

## Reference Material
- [Neovim Documentation](https://neovim.io/doc/user/)
- [Christian Chiarulli's 'Neovim from Scratch' series on YouTube](https://youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)
- [Programming in Lua by Roberto Ierusalimschy](https://www.lua.org/pil/contents.html)

# To Do

## Completed (in no particular order)
- 'jk' shortcut for Escape
- nice table and function format for keymaps and options
- auto-install Packer and plugins on fresh installation
- word wrap toggle shortcut (Leader-W)
- auto bracket pairs
- add keymaps for managing windows and buffers
- file explorer (nvim-tree)
- improve word wrap settings
- Zen Mode
- auto commenting (Comment)
- add tab line plugin (bufferline)
- treesitter (honestly just for Twilight right now)
- colour-matched brackets
- treesitter playground / highlight group identifying solution (ongoing)
- Twilight for Zen Mode (including hack to fix transparency issue)
- telescope with fzf
- find text in project
- setup LSP (Language Server Protocol)
- improve window pane management
- fix closing buffers
- add status line plugin (lualine or feline)
- F2 VS Code style symbol renaming
- code completion (cmp)
- learn shortcut for or otherwise improve line blanking (ccjk)
- cursor blink setting to communicating active terminal window 
- add some themes and sort colorscheme loading
- fix issue with indentation (clash between treesitter experimental indent and autopairs)
- fix popup menu height
- project for dropping me in the right home folder
- F2 rename symbol
- notifications
- remap telescope close to match window close
- improve bufferline appearance and functionality
- resolve telescope vsplit / Ctrl-V paste clash
- fix navigating completion popup menus
- TypeScript React snippets ala [dsznajder](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)
- add Calc completion source
- fix Illuminate highlighting in markdown
- fix Illuminate blacklist
- alpha dashboard
- auto-rename tags
- trouble / diagnostics menu
- code formatting
- linting
- improve alpha dashboard
- begin work on colour scheme
- port [The Best Theme](https://github.com/jankohlbach/the-best-theme) from VS Code
- style gitsigns
- change cursor highlight to invert / show text when solid
- get telescope to respect project root cd
- shortcut to see highlight group under cursor
- git diff tools
- nvim-gps for breadcrumbs
- style feline
- toggle transparent background (to enjoy nice tmux background images)
- customise feline to show document title on inactive windows

## Upcoming
- disable completion for markdown

## High priority
- shada file / change persistence after crash
- lazy-loading
- caching (impatient)
- add which-key and unify keymap config

## Low priority
- learn code folding / make shortcuts
- logging
- add reordering buffer shortcut
- terminal
- see if we can get telescope bookmarks working
- glow markdown preview
- toggle diagnostic virtual text shortcut
- zoom plugin
- add notifications to autocommands (to say that they've been applied)
- possibly collect autocommands into single module
- neoclip for better clipboard

## Unsorted

## Abandoned
- telescope media files plugin (not possible on WSL yet?)
