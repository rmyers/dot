echo "Running: .profile"

export GOPATH=$HOME/golib
export WORKON_HOME=$HOME/envs

# Aliases
alias ll='ls -la'

function findport() {
   local port=$1
   sudo lsof -n -i4TCP:$port | grep LISTEN
}

# For bazel
export PATH="$PATH:$HOME/bin"

# For stardog
export STARDOG_HOME=$HOME/stardog
export PATH="$PATH:$HOME/workspace/stardog/bin"

# Secrets
source .secrets
