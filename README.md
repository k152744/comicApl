# Famous Scenes of Comic
## 概要
漫画の名場面を投稿・閲覧できるWebサービスです。転職活動用のポートフォリオとして制作致しました。  
https://comic-apl.herokuapp.com/  
<img width="1140" alt="top" src="https://user-images.githubusercontent.com/49140166/66028107-5b588280-e537-11e9-809a-defbf3db897a.png">

## テストユーザーログイン
・email: test@scene.com  
・password: password    

## 使用している技術一覧
・Ruby 2.5.1  
・Ruby on Rails 5.2.3  
・haml  
・sass  
・Heroku  
・PostgreSQL(データベース)  
・Rspec(テスト)  
・S3  
・Carrierwave(画像アップロード)  
・kaminari(ページネーション)  
・devise(ログイン機能)  
・Github

## クラウドアーキテクチャ
![arch](https://user-images.githubusercontent.com/49140166/66031373-3b788d00-e53e-11e9-970a-f74abfd6d872.png)

## 機能一覧
・ログイン機能(devise)  
・ユーザー編集機能  
・漫画一覧ページ  
・名場面投稿・編集・削除機能  
・ページネーション機能  
・テスト実装(Rspec)  
・いいね機能

## 使用方法
・トップ画面からユーザー新規登録を行いログインする。  
・ヘッダーの「NEW POST」もしくは「PROFILE」から「名場面を投稿する」をクリック。  
・漫画一覧が表示されるので好きな漫画を選び「タイトル・画像・内容」の入力し投稿する。  
・投稿した名場面はヘッダーの「COMICS」から閲覧することができる。  
・気に入った名場面があれば「いいねをする」をクリックする。プロフィールの「いいねした名場面一覧」から閲覧することができる。  

## テーブル設計図

![er](https://user-images.githubusercontent.com/49140166/66028961-37963c00-e539-11e9-8958-db4718067534.png)

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
|likes_count|string|null: false, default: 0|

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
