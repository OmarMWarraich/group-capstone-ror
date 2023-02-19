class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
  validates :recipe, presence: true
  validates :food, presence: true
  validates :food, uniqueness: { scope: :recipe }
  
end
