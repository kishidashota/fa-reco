## README

# fa-reco
現在、ポートフォリをとして作成中のSNSです。
https://i.gyazo.com/03214ff126ec6d689347852e49c53982.png
(コンセプト)
ファッション系の商品を取り扱う店側と商品を選ぶのが面倒な顧客が1対1でチャットを行えるアプリ。
販売側が購入者に対して商品をお勧めをします。
※トップページは店側とも顧客側で別の画面に飛びます。
(店側機能)   ログイン・新規登録 / チャット機能 / 個人情報編集機能 / 商品登録・編集機能
(顧客側機能) ログイン・新規登録 / チャット機能 / 個人情報編集機能 / (店側が登録した)商品検索機能(商品を選択すると出品者とのチャットルームに飛ぶ) 


# URL
## 接続先情報
URL    http://18.178.10.44//

テスト用アカウント等
店側用
メールアドレス：buyer1@gail.com
パスワード：1111111

客側用
メールアドレス：marni@gmail.com
パスワード：1111111 

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false, add_index: true|
|profile|string|null:false|
|address|string|null:false|
|email|string|null:false,unique: true|
|user_image|string|null: false|
### Association
- has_many :messages
- has_many :buyers
- has_many :orders

## shopsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|genre|image|null: false|
|email|string|null:false,unique: true|
|shop_image|string|null: false|


### Association
- has_many :messages
- has_many :users
- has_many :products

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|is_user|integer|null: false, foreign_key: true|
|room_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :buyer



## productsテーブル
|Column|Type|Options|
|------|----|-------|
|shop_id||||
|image|string|null: false, foreign_key: true|
|name|integer|null: false, foreign_key: true|
|price|integer|null: false, foreign_key: true|


### Association
- belongs_to :buyer


## roomsテーブル 
|Column|Type|Options|
|------|----|-------|
|user_id|||
|buyer_id|||


