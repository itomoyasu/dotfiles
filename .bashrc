# PATH for Homebrew
export PATH=/usr/local/bin:$PATH

# PATH for python2.7
export PATH=/usr/local/share/python:$PATH

# PATH for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source `which virtualenvwrapper.sh`


# PATH for Cordova(Phone Gap)
export PATH=$PATH:/usr/local/Cordova/bin

# PATH for jsx
export PATH=$PATH:/$HOME/work/DeNA/JSX/bin

# Display --------------

PS1='[\h]\w $ '

HISTSIZE=5000

IGNOREEOF=10

HISTCONTROL=ignoreboth
HISTFILE=$HOME/.bash_history

HISTFILESIZE=50000

# Aliases --------------
alias cp='cp -iv'
alias rm='rm -iv'
alias mv='mv -iv'

alias make='make -j2'

alias ls='gls -F --color'
alias la='ls -a'
alias ll='ls -lag'


alias firefox='open -a Firefox'
alias chrome='open -a Google\ Chrome'


