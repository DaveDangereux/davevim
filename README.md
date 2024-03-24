# Dave's Lovely Neovim Config
![Main Menu](https://github.com/D4n93r3ux/davevim/assets/61416292/7f3e14fc-8b66-472e-a97c-382e689a4347)

## Building My Own Lightsaber
That's what configuring Neovim feels like to me.

This config has been growing since circa 2017. Very circa. I honestly can't
remember when I started and I certainly didn't start using version control
until I decided to switch operating systems ([Manjaro](https://manjaro.org/),
equally an adventure). Now I'm on a Mac and I haven't looked back.

It behaves _almost_ flawlessly. There is one persistent error (see [Known
Issues](#known-issues)) that fills the screen with a comical amount of red
text. I will fix it one day, mark my words.

My keyboard layout is
[Dvorak](https://en.wikipedia.org/wiki/Dvorak_keyboard_layout), just to add an
extra layer of nerd. I don't know if my keybindings would necessarily translate
well to Qwerty. I think if I had to use Qwerty with Neovim right now I might
have a stroke. Which is not at all recommended.

If you happened across this repo by chance or whilst hunting for examples of
Neovim configurations, I hope mining my janky (or at the very least a little
sus and _definitely_ unpolished) Lua code for nuggets will brighten your day in
some capacity.

Happy Vimming :]

## Screenshots
![Telescope](https://github.com/D4n93r3ux/davevim/assets/61416292/9e21ec6c-6fae-4721-8f14-4170306d70ca)
![Lspsaga](https://github.com/D4n93r3ux/davevim/assets/61416292/bb9020b0-1ed6-4b13-a10f-61c1e35414fd)

## Known Issues
<a name="known-issues"></a>
There is an error when closing some buffers (possibly from outside the current
directory) that produces a rather obnoxious full-screen error message.
Otherwise everything's lovely.

## Recommendations
These are just the things I use or have used. 

I like them. I think they're [good](https://youtu.be/MRePWTVNnPo?si=7JLYgppubmAHFln3&t=405).

### Terminal
- Mac / Linux: [Warp](https://www.warp.dev/linux-terminal)
- Windows: [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701?rtc=1&hl=en-gb&gl=GB) (until Warp is released for Windows)

### Font
- [FantasqueSansMono Nerd Font Mono](https://www.programmingfonts.org/#fantasque-sans)

## Dependencies
This list is woefully incomplete and a more thorough update is due (probably
the next time I need to transfer to a new computer).

### Mason:
- unzip
- node / npm
- go
- cargo (via rustup: `curl https://sh.rustup.rs -sSf | sh`)

### Telescope:
- ripgrep
- fd

### Emoji on Linux:
- ttf-joypixels

### Ruff:
- rust (install with `curl https://sh.rustup.rs -sSf | sh`)

### Optional:
- pnpm

## Shout-outs and Links
- [Neovim from Scratch (chris@machine)](https://www.youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ) - without these tutorials, I would never have gotten hooked
- [LunarVim](https://www.lunarvim.org/) - a config I referenced in the early stages, and a wonderful source of ideas and cool plugins
- [NerdFonts](https://www.nerdfonts.com/) - find your favourite font and never leave the terminal again
