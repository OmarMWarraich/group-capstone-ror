class Food < ApplicationRecord
  belongs_to :user

  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods
  has_many :inventory_foods
  has_many :inventories, through: :inventory_foods

  # broadcasts
  after_create_commit { broadcast_prepend_to 'foods' }
  after_update_commit { broadcast_replace_to 'foods' }
  after_destroy_commit { broadcast_remove_to 'foods' }
end
