class User < ApplicationRecord
  has_secure_password
  validates :name, presence:true
  validates :email, presence:true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :password_digest, presence:true
end
