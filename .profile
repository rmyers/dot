# ls colors
export CLICOLOR=1
export LSCOLORS=fxGxBxDxcxegedabagacdx

# custom prompt
export PS1='\[\e[32;40m\]\u\e[32;40m\] in \[\e[36;40m\]\w\[\033[0m\] $ '

export WORKON_HOME=$HOME/envs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
source /usr/local/bin/virtualenvwrapper_lazy.sh

export PATH=$PATH:/usr/local/sbin:$HOME/mysql/bin

# Aliases
alias ll='ls -la'

export INOVA=vagrant@10.14.213.160
