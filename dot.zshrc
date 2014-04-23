# Some good links for zsh customisation: 
# http://grml.org/zsh/zsh-lovers.html
# https://wiki.archlinux.org/index.php/zsh

autoload -U compinit promptinit 
compinit
promptinit

colors
# autocompletion of command line switches for aliases
setopt completealiases

# some aliases:
alias ll='ls -al'
alias ls='ls -CFb'
alias j='jobs -lpd'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../../'

# environment:
export EDITOR=vim
export PAGER=less

# This will set the default prompt to the walters theme
prompt walters
#prompt fade blue 

export PATH=$PATH:~/bin
