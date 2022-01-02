#!/bin/bash

# zplugコマンドがなければインストール
if ! (type brew > /dev/null 2>&1); then
  brew install zplug
fi

echo "usr/local/bin/zsh" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh || true

basename -a "$PWD"/dotfiles/.??* | xargs -I{} ln -sfv "$PWD"/dotfiles/{} ~/{}
echo "👍 dotfiles link is done!"
