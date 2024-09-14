class Recipe < ApplicationRecord
  belongs_to :user

  has_many :recipe_foods
  has_many :foods, through: :recipe_foods
  validates :name, presence: true
  validates :name, uniqueness: { scope: :user }
  validates :description, presence: true
  validates :user, presence: true

  after_create_commit { broadcast_prepend_to "recipes" }
  after_update_commit { broadcast_replace_to "recipes" }
  after_destroy_commit { broadcast_remove_to "recipes" }
end
