echo "Running: .profile"

export GOPATH=$HOME/golib
export TROVECLIENT_INSECURE='true'
export WORKON_HOME=$HOME/envs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
export TILLER_NAMESPACE=tesla-staging
source /usr/local/bin/virtualenvwrapper_lazy.sh

# Aliases
alias ll='ls -la'
alias ldap='ldapsearch -xLLL -H ldap://auth.edir.rackspace.com/o=rackspace "(cn=robe5515)"'

export PATH="$HOME/bin:$PATH:$HOME/.rvm/bin:$GOPATH/bin:$HOME/google-cloud-sdk/bin"

function findport() {
   local port=$1
   sudo lsof -n -i4TCP:$port | grep LISTEN
}
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

source $HOME/qe.sh
