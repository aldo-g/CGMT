class Event < ApplicationRecord
  validates :name, presence:true
  validates :organizer, presence:true
  validates :date, presence:true
  validates :desription, presence:true
  validates :image, presence:true
  validates :address, presence:true
  validates :latitude, presence:true
  validates :longitude, presence:true
end
