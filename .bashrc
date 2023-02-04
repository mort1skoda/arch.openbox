echo "~/.bashrc"

unalias -a
stty -ixon
set -o vi

# green prompt for regular user
PS1="\[\033[01;32m\]\w\[\033[00m\]\n"

# red prompt for root
if [ "$EUID" -eq 0 ]
    then PS1="\[\033[01;31m\]\w\[\033[00m\]\n"
fi

source ~/.bash_aliases

export TERM='xterm-256color'



