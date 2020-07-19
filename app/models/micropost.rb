class Micropost < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorite
  #has_many :favoriteusers, through: :reverses_of_favorite, source: :user
end
