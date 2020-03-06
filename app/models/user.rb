class User < ApplicationRecord
  mount_uploader :user_image, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :rooms
  validates :profile,length: { maximum: 200 } 
  validates :username, presence: true
  validates :user_image, presence: true



end
