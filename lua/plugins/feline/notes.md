## Notes

vim.fn.mode() - returns a character representing the current mode

`#vm.diagnostic.get(0, { severity = "Error" })) (0 refers to current buffer)`

<component>.icon = "X "

<component>.left_sep / right_sep { str: string, hl: string, always_visible: boolean }

Default highlight for separators is fg = bg which makes them invisible

vim.bo.filetype:upper()

provider = { name = "file_info", opts = { type = "relative" } } (long file)

vim.bo.fileformat (use icon table)

Consider getting nvim-lua/lsp-status.nvim for statusline components

gitsigns how?

local gps = require("nvim-gps").get_location() / is_available() (breadcrumbs)

provider = "lsp_client_names"

## Status line sketch
mode
branch / file_info (liking this as one tab)
diff

breadcrumbs
diagnostics (collapsing arrow format)
filetype
os / encoding
linenr / colnr
percent

## UNSORTED
filesize
environment / lsp info??j
["�"] = 'gray',
["�"] = 'SkyBlue2',
