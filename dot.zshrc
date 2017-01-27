# Some good links for zsh customisation: 
# http://grml.org/zsh/zsh-lovers.html
# https://wiki.archlinux.org/index.php/zsh

autoload -U compinit promptinit 
compinit
promptinit

autoload colors
colors
# autocompletion of command line switches for aliases
setopt completealiases

# some aliases:
alias ll='ls -alFG'
alias ls='ls -FG'
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

# gpg agent:
#local GPG_ENV=$HOME/.gnupg/gpg-agent.env

#function start_agent {
  # TODO: Modify for Debian
 #/usr/bin/env gpg-agent --daemon --pinentry-program /usr/local/bin/pinentry-curses --enable-ssh-support --write-env-file ${GPG_ENV} > /dev/null
  #chmod 600 ${GPG_ENV}
  #. ${GPG_ENV} > /dev/null
#
# Source GPG agent settings, if applicable
#if [ -f "${GPG_ENV}" ]; then
#  . ${GPG_ENV} > /dev/null
#  ps -ef | grep ${SSH_AGENT_PID} | grep gpg-agent > /dev/null || {
#    start_agent;
#  }
#else
#  start_agent;
#fi

#export GPG_AGENT_INFO
#export SSH_AUTH_SOCK
#export SSH_AGENT_PID
# end gpg agent

#GPG_TTY=$(tty)
#export GPG_TTY
# 
export PATH=$PATH:~/bin:/usr/local/bin:/usr/local/share/dotnet


