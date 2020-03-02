class User < ApplicationRecord
  mount_uploader :user_image, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :profile, length: { maximum: 200 } 
  has_many :rooms
end
