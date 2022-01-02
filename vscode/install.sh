#!/usr/bin/env bash

# codeコマンドがなければVSCodeをインストール
if ! (type code > /dev/null 2>&1); then
  if ! (type brew > /dev/null 2>&1); then
    sh homebrew/install.sh
  fi
  brew install --cask visual-studio-code
fi

# jsonファイルの設置
cp -i "$PWD"/vscode/settings.json ~/Library/Application\ Support/Code/User/
                    setting.json
cp -i "$PWD"/vscode/keybindings.json ~/Library/Application\ Support/Code/User/

# プラグインのインストール
pkglist=(
  ms-ceintl.vscode-language-pack-ja
  chrmarti.regex
  CoenraadS.bracket-pair-colorizer
  DavidAnson.vscode-markdownlint
  donjayamanne.githistory
  golang.go
  hashicorp.terraform
  hediet.vscode-drawio
  ionutvmi.path-autocomplete
  jebbs.markdown-extended
  natqe.reload
  taichi.vscode-textlint
  timonwong.shellcheck
  wayou.vscode-icons-mac
  yzhang.markdown-all-in-one
  ZainChen.json
)

for i in "${pkglist[@]}"; do
  code --install-extension "$i"
done

echo "👍 VSCode setting is done!"
