class Partner < ApplicationRecord
  validates :organisation_name, presence:true
  validates :organisation_description, presence:true
  validates :link_url, presence:true
  validates :image, presence:true
end
