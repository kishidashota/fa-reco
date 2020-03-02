class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :user_image, ImageUploader
  validates :profile, length: { maximum: 200 } 
  has_many :rooms
end
