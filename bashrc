# ls sanity mode
alias sl='ls'

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

# For homebrew
export PATH=$PATH:/usr/local/sbin/

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
