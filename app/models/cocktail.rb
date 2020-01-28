class Cocktail < ApplicationRecord
  has_one_attached :photo
  has_many :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: true

  has_many :ingredients, through: :doses
end
