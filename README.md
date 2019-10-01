# Famous Scenes of Comic
## 概要
漫画の名場面を投稿・閲覧できるWebサービスです。転職活動用のポートフォリオとして制作致しました。

## 機能一覧
・ログイン機能(devise)
・ユーザー編集機能
・漫画一覧ページ
・名場面投稿・編集・削除機能
・ページネーション機能
・テスト実装(Rspec)
・いいね機能

## 使用している技術一覧
・Ruby 2.5.1
・Ruby on Rails 5.2.3
・haml
・sass
・Heroku
・MySQL(データベース)
・Rspec(テスト)
・Carrierwave(画像アップロード)
・kaminari(ページネーション)
・devise(ログイン機能)
・Github

## テーブル設計図

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,unique: true|
|email|string|null: false,unique: true|
|image|string|

### Association
has_many :scenes
has_many :likes

## scenesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|text|null: false|
|user|references|null: false, foreign_key: true|
|comic|references|null: false, foreign_key: true|

### Association
belongs_to :user
belongs_to :comic
has_many :likes
has_many :scenes_images

## comicsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false,unique: true|
|image|string|null: false|

### Association
has_many :scenes

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|scene|references|null: false, foreign_key: true|

### Association
belongs_to :user
belongs_to :scene
