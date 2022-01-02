#!/bin/sh

# --- Finder ---
# 隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true
# すべての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

killall Finder

# --- I/O Interface ---
# タップしたときに、クリックとする
defaults write -g com.apple.mouse.tapBehavior -int 1
# Trackpadの速度を速める (0~3の間)
defaults write -g com.apple.trackpad.scaling 3
# Fuキーを標準のファンクションキーとして使用
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true
# tabなどでMacのボタンのフォーカスを変えられるフルコントロールを設定
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# --- Dock ---
# “自動的に非表示”をオン
defaults write com.apple.dock autohide -bool true
# 通常サイズ
defaults write com.apple.dock tilesize -int 32

killall Dock

# --- Menu bar ---
# 日付と時刻のフォーマット（24時間表示、秒表示あり、日付・曜日を表示）
# defaults write com.apple.menuextra.clock DateFormat -string "M\u6708d\u65e5(EEE)  H:mm:ss"
defaults write com.apple.menuextra.clock DateFormat -string 'EEE MMM d HH:mm:ss'

killall SystemUIServer

# --- Safari ---
# アドレスバーに完全な URL を表示
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# ファイルのダウンロード後に自動でファイルを開くのを無効化
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# メニューバーに「開発」を表示
defaults write com.apple.Safari IncludeDevelopMenu -bool true
# デバッグメニューをオン
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# ステータスバーを表示
defaults write com.apple.Safari ShowStatusBar -bool true

# # ---　TextEdit　---
# # リッチテキストから標準テキストに変更
defaults write com.apple.TextEdit RichText -int 0

echo "👍 MacOS setting is done!"
