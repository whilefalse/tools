alias ll='ls -al'
alias gs='git status'
alias b='bundle exec'
alias ack='ack-grep'
PS1="\\[\033[m\]\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
PS1='\[\033[m\]\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
export http_proxy=http://ubuntuuser:Ubuntu_57@ncl-bluecoat:80/
export PATH="$HOME/.rbenv/bin:$PATH"
export EDITOR=vim
eval "$(rbenv init -)"
