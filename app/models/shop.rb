class Shop < ApplicationRecord
  mount_uploader :shop_image,ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rooms
  has_many :products, dependent: :destroy
  validates :name, presence: true
  validates :genre, presence: true
  validates :shop_image, presence: true
end
