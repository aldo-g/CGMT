class Coaster < ApplicationRecord
  validates :quantity, presence:true
  validates :address, presence:true
  validates :latitude, presence:true
  validates :longitude, presence:true
  belongs_to :user
end
