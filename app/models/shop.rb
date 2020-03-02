class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :shop_image,ImageUploader
  has_many :rooms
  has_many :products, dependent: :destroy
  validates :name, presence: true
end
