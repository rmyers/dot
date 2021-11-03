echo "Running: .profile"

export GOPATH=$HOME/golib

# virtualenv
export WORKON_HOME=$HOME/envs
source /usr/local/bin/virtualenvwrapper.sh

# Aliases
alias env='env |sort'
alias ll='ls -la'
alias ecr-login-cloud='aws ecr get-login-password --profile stardog-cloud --region us-west-2 | docker login --username AWS --password-stdin 371870107528.dkr.ecr.us-west-2.amazonaws.com'
alias ecr-login-prod='aws ecr get-login-password --profile stardog-prod --region us-west-2 | docker login --username AWS --password-stdin 195188011627.dkr.ecr.us-west-2.amazonaws.com'
alias stardog-cloud='export AWS_PROFILE=stardog-cloud'
alias stardog-jenkins='export AWS_PROFILE=stardog-jenkins'
alias stardog-prod='export AWS_PROFILE=stardog-prod'
alias stardog-union='export AWS_PROFILE=stardog-union'
alias kube-get-all='kubectl api-resources --verbs=list --namespaced -o name | xargs -n 1 kubectl get --show-kind --ignore-not-found'

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
