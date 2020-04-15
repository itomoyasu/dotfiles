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

# auto directory pushd that you can get dirs list by cd -[tab]
setopt auto_pushd

# historical backward/forward search with linehead string binded to ^P/^N
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# set locale
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8

# colored settings
setopt prompt_subst
autoload colors
colors

case ${UID} in
0)
    PROMPT="%B%{${fg[red]}%}%/#%{${reset_color}%}%b "
    PROMPT2="%B%{${fg[red]}%}%_#%{${reset_color}%}%b "
    SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
        PROMPT="%{${fg[red]}%}${HOST%%.*} ${PROMPT}"
    ;;
*)
    # Color
    DEFAULT="$%{\e[1;0m%}"
    RESET="%{${reset_color}%}"
    CYAN="%{${fg[cyan]}%}"
    WHITE="%{${fg[white]}%}"

    # Prompt
    PROMPT="%{$fg_bold[blue]%}${USER}@%m ${RESET}${WHITE}$ ${RESET}"
    RPROMPT="${RESET}${WHITE}[${CYAN}%(5~,%-2~/.../%2~,%~)% ${WHITE}]${RESET}"
    SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
        PROMPT="${HOST%%.*} %{$fg[yellow]%}${USER}@%m ${RESET}${WHITE}$ ${RESET}"
    ;;
esac

## correct uncorrect command
setopt correct

# compacked complete list display
setopt list_packed

## no beep
setopt nolistbeep

## aliases
alias ls="exa --icons"
alias la="exa -a --icons"
alias ll="exa -la --icons"

alias cp="cp -iv"
alias rm="rm -iv"
alias mv="mv -iv"

# PATH for Homebrew
export PATH=/usr/local/bin:$PATH

# GoEnv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# PATH for nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# settings for direnv
eval "$(direnv hook zsh)"

# Path for adb tools
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# anyenv
if [ -d ${HOME}/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    for D in `ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
    done
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tomoyasu.ishikawa/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tomoyasu.ishikawa/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tomoyasu.ishikawa/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tomoyasu.ishikawa/google-cloud-sdk/completion.zsh.inc'; fi

# Path for goapp
export PATH=$PATH:~/google-cloud-sdk/platform/google_appengine
