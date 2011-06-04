alias emacs='emacs -nw'
alias ll='ls -al'
alias gs='git status'
PS1="\\[\033[m\]\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PYTHONPATH=$PYTHONPATH:/home/steven/work/git/billmonitor:/home/steven/work/git/billmonitor/backend

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
