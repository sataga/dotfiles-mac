#!/bin/sh

set -- homebrew ssh_config macos dotfiles vscode
for dir in "$@";
do
  echo 📁 "$dir"
  sh "$dir"/install.sh
done

echo 📁 "alfred"
python3 ./alfred/add_shortcuts.py
