# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=200000
SAVEHIST=200000

## setting of options for command histroty
## ignore duplication command history list
setopt hist_ignore_dups

## share command history data among multiple terminals
setopt share_history

# key bind for vim
bindkey -e

# autocomplete 
autoload -U compinit 
compinit

# set locale
export LANG=ja_JP.UTF-8

## the following lines are colored settings !
case ${UID} in
0)
#    PROMPT="%{[31m%}X %{[33m%}/ _ / %{[31m%}X %{[36m%}< "
    PROMPT="%{[33m%}%n@%m > "
    RPROMPT="%B%a{[31m%}%/#%{[m%}%b "
    RPROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
*)
#    PROMPT="%{[31m%}X %{[33m%}/ _ / %{[31m%}X %{[36m%}< "
    PROMPT="%{[33m%}%n@%m > "
    RPROMPT="%{[31m%}%/%%%{[m%} "
    RPROMPT2="%{[31m%}%_%%%{[m%} "
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
esac 

## correct uncorrect command
setopt correct

## no beep
setopt nolistbeep

## aliases
alias ls="ls -G"
alias la="ls -a"
alias ll="ls -lag"

alias cp='cp -iv'
alias rm='rm -iv'
alias mv='mv -iv'

alias firefox='open -a Firefox'
alias chrome='open -a Google\ Chrome'


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

# PATH for nodebrew
export PATH=$PATH:$HOME/.nodebrew/current/bin

