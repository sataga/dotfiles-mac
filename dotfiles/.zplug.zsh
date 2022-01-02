export ZPLUG_HOME=/usr/local/opt/zplug
source ${ZPLUG_HOME}/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

# substring search
zplug "zsh-users/zsh-history-substring-search"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"


# set 2 for load after compinit
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# 表示系
# zplug romkatv/powerlevel10k, as:theme, depth:1
zplug "modules/prompt", from:prezto

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
# load completion init
autoload -Uz compinit
compinit -u
