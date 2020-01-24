class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 
  validates :profile, length: { maximum: 200 } 


  has_many :messages
end
