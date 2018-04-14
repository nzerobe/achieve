class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, length: { maximum: 255 },
                format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
                #attr_accessor :password, :password_confirmation 
                 before_save { email.downcase! }
                
 validates :password, length: { minimum: 6 }
 #has_secure_password
  
  has_secure_password
  #belongs_to :company
  has_many :robs
  has_many :favorites, dependent: :destroy
  has_many :favorite_robs, through: :favorites, source: :rob
  #mount_uploader :image, ImageUploader
end
