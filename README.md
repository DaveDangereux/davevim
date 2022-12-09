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
- disable completion for markdown

## High priority
- shada file / change persistence after crash
- lazy-loading
- caching (impatient)

## Low priority
- add reordering buffer shortcut
- glow markdown preview
- add notifications to autocommands (to say that they've been applied)
- possibly collect autocommands into single module
