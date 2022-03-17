class NewsPiece < ApplicationRecord
  validates :title, presence:true
  validates :description, presence:true
  validates :text, presence:true
  validates :image, presence:true
  validates :date, presence:true
  validates :pinned, presence:true
end
