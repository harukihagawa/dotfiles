#!/bin/bash

# Install Homebrew
if ! type "brew" > /dev/null; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install App from Homebrew

brew install zsh
brew install zsh-completions
brew install nodebrew
brew install jq
brew install git
brew install macvim
brew install go
brew install kotlin
brew install wget
brew install heroku
brew install tree
brew install curl
brew install the_silver_searcher
# Mac App Storeのアプリをインストールとかするやつ
# brew install mas
# インタラクティブなjq的なやつ
brew tap simeji/jid
brew install jid
brew install bat
# PlantUMLのPreviewに必要
brew install graphviz
brew install plantuml
# gitignore生成 https://github.com/simonwhitaker/gibo
brew install gibo

# 設定ファイル
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc

# masでAppStoreのアプリをインストールする
# sh setup_mas.sh
