# README

簡単なECサイトを模したポートフォリオ用のシステムです。

##  Ruby version

* 2.5.1

##  System dependencies

* GoogleAppEngine
* GoogleCloudStorage
* GoogleCloudSQL
* ローカル開発の構成はdocker-compose.ymlを参照


##  Configuration
* ローカル環境は環境変数の保存先としてdotenvを使用
* GAEのデプロイ時にはapp.ymlを使用

## Database creation
* ローカル開発環境はmysql imageを使用
* productionはGoogleCloudSQLを使用

## Database initialization
* `bundle exec rake db:migrate`

## How to run the test suite
* `bundle exec rspec`

## Deployment instructions
* `gloud app deploy`

## Frontend
* Vue + Bootstrap + Webpacker

### Cloud SQLとの接続
* https://cloud.google.com/sql/docs/mysql/connect-kubernetes-engine?hl=ja

## TODO
* Kubenetes化
