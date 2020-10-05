echo "Running: .profile"

export GOPATH=$HOME/golib
export WORKON_HOME=$HOME/envs
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

# Aliases
alias ll='ls -la'

function findport() {
   local port=$1
   sudo lsof -n -i4TCP:$port | grep LISTEN
}
