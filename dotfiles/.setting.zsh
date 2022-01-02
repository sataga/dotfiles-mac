# match both capital, small leters
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# tab selecting
zstyle ':completion:*' menu select=2

# history setting
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# cdなしでディレクトリ移動
setopt auto_cd
