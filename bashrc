ansi='\e['
default=${ansi}0m
cyan=${ansi}36m
green=${ansi}32m
red=${ansi}31m
gold=${ansi}33m
smile="\$(if test \$? = 0; then echo -e ${green}ok; else echo -e ${red}fail; fi)"
export PS1="\n${smile} ${cyan}\A ${green}\u@\h ${gold}\w${default} \n\\$ "

alias ethx="ssh -A steve@ethx.net"

EDITOR=vim
VISUAL=$EDITOR
export EDITOR VISUAL
alias svim=sudoedit

alias grep="grep --color=auto"
alias ls="ls -lh --color=auto"
