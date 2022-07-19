echo "Running: .profile"

export GOPATH=$HOME/golib

# virtualenv
export WORKON_HOME=$HOME/envs
source /usr/local/bin/virtualenvwrapper.sh

# Aliases
alias env='env |sort'
alias ll='ls -la'
alias kube-get-all='kubectl api-resources --verbs=list --namespaced -o name | xargs -n 1 kubectl get --show-kind --ignore-not-found'

function findport() {
   local port=$1
   sudo lsof -n -i4TCP:$port | grep LISTEN
}

# Secrets
source $HOME/.secrets
