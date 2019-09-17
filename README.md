
##usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,unique: true|
|email|string|null: false,unique: true|
|image|string|

### Association
has_many :scenes
has_many :likes

##scenesテーブル
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

##comicsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false,unique: true|
|image|string|null: false|

### Association
has_many :scenes

##scenes_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|scene|references|null: false, foreign_key: true|

### Association
belongs_to :scene

##likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|scene|references|null: false, foreign_key: true|

### Association
belongs_to :user
belongs_to :scene
