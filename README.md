# Dave's Neovim IDE Config

## Todo
- collate autocommands into a single file
- add autocommand to save on quit with config toggle
- fix markdown indent new line after list item glitch
- improve colorscheme source-on-save autocommand
- add debugger
- update absolute directory paths with platform-independent variables

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
