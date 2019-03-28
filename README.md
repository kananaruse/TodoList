# README

## 使用した技術要素
* Ruby 2.5.1
* Rails 5.2.0

## 設計・構成
* トップページ  
`http://0.0.0.0:3000/lists`へのアクセスで表示  
新規リスト名登録，編集，削除  
登録タスク中で直近の期限を表示  
* ToDo詳細ページ  
トップページからリストの名称をクリックして詳細を表示  
新規ToDo登録，編集，削除  
* 検索ページ  
全ToDoリスト，Todoの中から入力した文字列を名称に含むものを表示

## 開発環境のセットアップ手順
開発環境: macOS 10.14
* rbenvインストール  
`$ brew install rbenv`  
`$ brew install ruby-build`  
  
* ~/.bash_profile編集  
`$ echo 'export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"' >> ~/.bash_profile`  
`$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile`  
`$ source ~/.bash_profile`  
  
* Rubyインストール  
`$ rbenv install 2.5.1`  
`$ rbenv global 2.5.1`  
`$ rbenv rehash`  
  
* Bundlerインストール  
`gem install bundler` 
  
* 作業ディレクトリ作成  
`$ mkdir ~/workspace`  
`$ cd ~/workspace` 
  
* Gemfile作成  
`$ bundle init`  
  
* Gemfile編集  
`# gem "rails"`のコメント解除  
  
* Railsインストール  
`$ bundle install --path=vendor/bundle`  
  
* アプリ作成  
`$ bundle exec rails new todolist`  
  
* サーバ起動  
`$ bundle exec rails s`  
