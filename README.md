# README

## 使用した技術要素
* Ruby 2.5.1
* Rails 5.2.0

## 設計・構成
* トップページ  
![スクリーンショット 2019-03-28 23 32 46](https://user-images.githubusercontent.com/22876329/55204894-0b110880-5214-11e9-974e-915da62c2cea.png)  
`http://0.0.0.0:3000/lists`へのアクセスで表示  
新規リスト名登録  
リスト名編集，リスト削除機能追加  
登録タスク中で直近の期限を表示  
* ToDo詳細ページ  
![スクリーンショット 2019-03-28 23 33 32](https://user-images.githubusercontent.com/22876329/55204904-15330700-5214-11e9-97df-96c962016b7c.png)  
トップページからリストの名称をクリックして詳細を表示  
新規ToDo登録，削除  
* 検索ページ  
![スクリーンショット 2019-03-28 23 33 49](https://user-images.githubusercontent.com/22876329/55204913-1a905180-5214-11e9-8fb2-f5f9eb0afbdf.png)  
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
