# Some good links for zsh customisation: 
# http://grml.org/zsh/zsh-lovers.html
# https://wiki.archlinux.org/index.php/zsh

autoload -U compinit promptinit 
compinit
promptinit
# use arrows for command completion
zstyle ':completion:*' menu select

autoload colors
colors
# autocompletion of command line switches for aliases
setopt COMPLETE_ALIASES

# autocompletion for sudo scripts
zstyle ':completion::complete:*' gain-privileges 1

# some aliases:
alias ll='ls -alFG'
alias ls='ls -FG'
alias j='jobs -lpd'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../../'
alias less='less -r'

# environment:
export EDITOR=vim
export PAGER='less -r'

# This will set the default prompt to the walters theme
#prompt walters
prompt walters

export PATH=$PATH:~/bin:/usr/local/bin:/usr/local/share/dotnet
