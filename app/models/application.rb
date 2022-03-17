class Application < ApplicationRecord
  validates :type, presence:true
  validates :email, presence:true
  validates :name, presence:true
  validates :organisation, presence:true
  validates :text, presence:true
end
