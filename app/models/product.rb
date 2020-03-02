class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :shop
  validates :name, :price,:image , presence: true
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Product.where(['name LIKE ?', "%#{search}%"])
    else
      Product.all #全て表示。
    end
  end
end
