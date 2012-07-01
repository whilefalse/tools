#Needed for git PS1 thingy
source /usr/local/etc/bash_completion.d/git-completion.bash

alias ls='ls -G'
alias ll='ls -al'
alias gs='git status'
alias b='bundle exec'
PS1="\\[\033[m\]\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
PS1='\[\033[m\]\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
export PATH="$HOME/.rbenv/bin:$PATH"
export EDITOR=vim
eval "$(rbenv init -)"
