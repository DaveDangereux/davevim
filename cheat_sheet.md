# Basic Vim Commands

### Surround
cs{original bracket}{new bracket}
                Replace bracket

### Quickfix
:copen          Open the quickfix window
:ccl            Close it
:cw             Open iti f there are "errors", close it otherwise
:cn             Go to the next error in the window
:cp             Go to the previous error in the window
:cnf            Go to the first error in the next file
:.cc            Go to error under cursor (if cursor is in quickfix window)

### Telescope
Leader ff       find files
Leader fg       live grep
Leader fb       buffers
Leader fh       help tags
Leader fr       oldfiles
Leader fe       file browser
Leader fn       notify
Leader fp       projects
Leader fc       current buffer fuzzy find

### Unsorted
Leader c        close window
Leader C        quit all
Leader w        write 
Leader W        write all
Leader x        close buffer
Leader X        close all buffers
]d              next diagnostic
[d               previous diagnostic
C               nvim-tree: change directory
gl              open diagnostic float 
v               nvim-tree: open in vertical split 
zz              center line in window
z.              center line and go to first non-whitespace character 
zt              center line at top of window
zb              center line at bottom of window

