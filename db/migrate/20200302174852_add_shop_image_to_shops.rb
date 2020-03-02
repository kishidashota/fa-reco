class AddShopImageToShops < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :shop_image, :string
  end
end
