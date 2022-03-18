class User < ApplicationRecord
  has_secure_password
  validates :name, presence:true
  validates :email, presence:true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, message: "must be a valid email address"
  validates :password_digest, presence:true
  has_many :partners
  has_many :news_pieces
  has_many :innovation_grants
  has_many :events
  has_many :coasters
  
end
