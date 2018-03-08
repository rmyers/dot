echo "profile"
# ls colors
#export CLICOLOR=1
#export LSCOLORS=fxGxBxDxcxegedabagacdx

# custom prompt
#export PS1='\[\e[32;40m\]\u\e[32;40m\] in \[\e[36;40m\]\w\[\033[0m\] $ '

export GOPATH=$HOME/golib
export TROVECLIENT_INSECURE='true'
export WORKON_HOME=$HOME/envs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
#export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
export TILLER_NAMESPACE=tesla-staging
source /usr/local/bin/virtualenvwrapper_lazy.sh

# Local mysql install
export PATH=$PATH:/usr/local/sbin:$HOME/mysql/bin
export DYLD_FALLBACK_LIBRARY_PATH=/usr/lib:$HOME/mysql/lib

# Aliases
alias ll='ls -la'
alias ldap='ldapsearch -xLLL -H ldap://auth.edir.rackspace.com/o=rackspace "(cn=robe5515)"'
alias mimic='docker run --restart=no --rm=true -p 8900:8900 amitgandhinz/mimic'

export INOVA=vagrant@10.14.213.160

export PATH="$PATH:$HOME/.rvm/bin:$GOPATH/bin:$HOME/google-cloud-sdk/bin"

# Reach VM
export REACH_VM_MEMORY=4096

function findport() {
   local port=$1
   sudo lsof -n -i4TCP:$port | grep LISTEN
}
