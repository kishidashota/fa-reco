## README
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index: true|
|icon|string|null:false|
|address|string|null:false|
|email|string|null:false,unique: true|
|favorite brand|string|null: false|
|favorite clothes lineage|string|null: false|
|Photos of clothes in possession|string|null: false|
|items you want|string|null: false|
|price cap|integer|null: false|
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


