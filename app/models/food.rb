class Food < ApplicationRecord
  belongs_to :user

  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods
  has_many :inventory_foods
  has_many :inventories, through: :inventory_foods
  
end
