ansi='\e['
default=${ansi}0m
cyan=${ansi}36m
green=${ansi}32m
red=${ansi}31m
gold=${ansi}33m
smile="\$(if test \$? = 0; then echo -e ${green}ok; else echo -e ${red}fail; fi)"
export PS1="\n${smile} ${cyan}\A ${green}\u@\h ${gold}\w${default} \n\\$ "

# Vim setup
EDITOR=vim
VISUAL=$EDITOR
export EDITOR VISUAL
alias svim=sudoedit

# Useful aliases
alias grep="grep --color=auto"
alias ls="ls -lh --color=auto"
alias tmux="TERM=screen-256color-bce tmux"

# SSH hosts
alias ethx="ssh -A ethx.net"
alias luna="ssh -A luna.ethx.net"
alias nostalgia="ssh -A nostalgia.local"

# Delete file names, piecemeal
stty werase undef
bind '"\C-w": backward-kill-word'
bind '"\C-f": undo'

