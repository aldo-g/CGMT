class InnovationGrant < ApplicationRecord
  validates :project_name, presence:true
  validates :organisation_name, presence:true
  validates :project_description, presence:true
  validates :year_awarded, presence:true
  validates :image, presence:true
  validates :link_url, presence:true
  belongs_to :user
end
