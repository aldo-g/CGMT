class Application < ApplicationRecord
  validates :type, presence:true
  validates :email, presence:true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, message: "must be a valid email address"
  validates :name, presence:true
  validates :organisation, presence:true
  validates :text, presence:true
end
