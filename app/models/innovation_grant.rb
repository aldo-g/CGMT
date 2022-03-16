class InnovationGrant < ApplicationRecord
  validates :project_name, presence:true
  validates :organisation_name, presence:true
  validates :project_description, presence:true
end
