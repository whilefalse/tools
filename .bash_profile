#Needed for git PS1 thingy
source /usr/local/etc/bash_completion.d/git-completion.bash

# Aliases
alias ls='ls -G'
alias ll='ls -al'
alias gs='git status'
alias b='bundle exec'
alias be='b'
alias tmux='tmux -2'
alias ls="ls -G"

# Awesome git PS1 with custom colors
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
PS1='\[\033[m\]\[\033[33m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)'$'\n\[\033[1;31m\]☭ \[\033[00m\]'

export PATH="$HOME/.rbenv/bin:$HOME/scripts:/usr/local/bin:$HOME/.cabal/bin:$PATH"
export CDPATH=$CDPATH:$HOME/Dev
export EDITOR=vim

# Vi mode in bash command editing
set -o vi
