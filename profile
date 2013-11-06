# Check for an interactive session
[ -z "$PS1" ] && return

# Make ls pretty
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

# Homebrew
export PATH=/usr/local/bin:$PATH

# OpenCV
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages


[[ -s /Users/oli/.nvm/nvm.sh ]] && . /Users/oli/.nvm/nvm.sh # This loads NVM

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
