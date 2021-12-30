# Dotfiles for Mac

====

thanks <https://github.com/zzzmisa/dotfiles-mac/>
thanks <https://github.com/takameron/dotfiles-mac>

## 事前準備

1. App Storeにサインイン
2. `xcode-select --install`コマンドを実行し、Command line tools for Xcodeをインストール
3. このリポジトリをclone

## 使い方

1. `dotfiles-mac`ディレクトリに移動

    ```sh
    cd dotfiles-mac
    ```

2. ディレクトリ直下の`install.sh`を実行すると、下層ディレクトリの`install.sh`が実行される

    ```sh
    sh install.sh
    ```

## 実行後

* 各アプリケーションにログイン
* SSH・GPGを使えるようにする
* Git
  * **ユーザー名・メールアドレスを変更**
  * GPGの設定
