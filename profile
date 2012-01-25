# Check for an interactive session
[ -z "$PS1" ] && return

# Make ls pretty
alias ls='ls --color=auto'
alias sl='ls'

# Differentiate root users
PS1='[\u@\h \W]\$ '

# shortcuts to oliland
alias oliland='ssh oliland@oliland.net -p 8069'

tunnel() {
  PORT=$1
  echo "Forwrading port $1 on oliland.net here..."
  command ssh -nNTR :$1:localhost:$1 oliland.net -p 8069 "$@" ;
}

# For when the virtual machine forgets where it is
alias rejiggle='sudo ifconfig eth0 down && sudo ifconfig eth0 up'

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Fuck you!
alias please='sudo'
