## README

# fa-reco
現在、ポートフォリをとして作成中のSNSです。
(コンセプト)
用途としては、ファッション系の商品を取り扱う店側と商品を選ぶのが面倒な顧客が1対1でチャットを行えるアプリです。
販売側が購入者に対して商品をお勧めをします。
※トップページは店側とも顧客側で別の画面に飛びます。
(店側機能)   ログイン・新規登録 / チャット機能 / 個人情報編集機能 / 商品登録・編集機能
(顧客側機能) ログイン・新規登録 / チャット機能 / 個人情報編集機能 / (店側が登録した)商品検索機能 


# URL
## 接続先情報
URL    http://18.178.10.44//
ID/Pass
Basic認証
ID：
Pass：
テスト用アカウント等
店側用
メールアドレス：
パスワード：1111111

客側用
メールアドレス：a@gmail.com
パスワード：1111111 

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index: true|
|icon|string|null:false|
|address|string|null:false|
|email|string|null:false,unique: true|
|favorite_brand|string|null: false|
|favorite_clothes_lineage|string|null: false|
|Photos_of_clothes_in_possession|string|null: false|
|items_you_want|string|null: false|
|price_cap|integer|null: false|
### Association
- has_many :messages
- has_many :buyers
- has_many :orders

## buyersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|store name|string|null: false|
|icon|image|null: false|
|email|string|null:false,unique: true|

### Association
- has_many :messages
- has_many :users
- has_many :products

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|contents|text|null: false|
|image|string||
|user_id|integer|null: false, foreign_key: true|
|buyer_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :buyer



## ordersテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :user
- has_many :products_orders

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_id||||
|product_id|||
|image|string|null: false, foreign_key: true|
|name|integer|null: false, foreign_key: true|
|price|integer|null: false, foreign_key: true|
|description|string|null: false, foreign_key: true|


### Association
- has_many :orders
- has_many :products_tags
- has_many :tags, through : :products_tags
- belongs_to :buyer


## products_orderテーブル
|Column|Type|Options|
|------|----|-------|
|order_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|
|total price|integer|null: false, foreign_key: true|

### Association
- belongs_to :order
- belongs_to :product




## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|


### Association
- has_many :products_tags
- has_many  :products,  through:  :products_tags



## products_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :product
- belongs_to :tag                                                                                                                          


