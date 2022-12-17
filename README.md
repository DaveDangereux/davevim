# Dave's Neovim IDE Config

## Todo
- sort out tab highlights
- reload rainbow on colorscheme reload
- fix highlighting glitch with statusline carets
- fix markdown indent new line after list item glitch
- add autocommand to save on quit with config toggle
- format directory solution
- global config, cut down on unnecessary imports
- move favourite options into config file, maybe add some colours for modifiable theme
- centralise palettes
- default config for fallback
- more concise clearing of loaded packages prior to autocommand sourcing
- refresh packag(s) util
- figure out how to split and squash commits with LazyGit for premium commit history
- figure out what sourcing with vim and requiring with lua is actually doing
- add debugger
- update absolute directory paths with platform-independent variables
- add undotree

## External Dependencies

Mason:
- unzip
- node / npm
- go (pacman -S go or other package manager)
- cargo (via rustup: `curl https://sh.rustup.rs -sSf | sh`)

null-ls:
- stylelint (yarn global add stylelint - until Mason includes it)

Telescope:
- ripgrep
- fd

Emoji on Linux:
- ttf-joypixels

Optional:
- yarn
