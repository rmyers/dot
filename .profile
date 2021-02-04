echo "Running: .profile lkj"

export GOPATH=$HOME/golib

# virtualenv
export WORKON_HOME=$HOME/envs
source /usr/local/bin/virtualenvwrapper.sh

# Aliases
alias ll='ls -la'

function findport() {
   local port=$1
   sudo lsof -n -i4TCP:$port | grep LISTEN
}

# For bazel
export PATH="$PATH:$HOME/bin"

# For Stardog
export STARDOG_HOME=$HOME/stardog
export PATH="$PATH:$HOME/workspace/stardog/bin"
# SWITCH TO JAVA VERSION 8
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Secrets
source $HOME/.secrets
