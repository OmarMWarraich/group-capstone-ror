class Recipe < ApplicationRecord
  belongs_to :user

  has_many :recipe_foods
  has_many :foods, through: :recipe_foods
  validates :name, presence: true
  validates :name, uniqueness: { scope: :user }
  validates :description, presence: true
  validates :user, presence: true
end
