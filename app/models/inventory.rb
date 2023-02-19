class Inventory < ApplicationRecord
  belongs_to :user

  has_many :inventory_foods
  has_many :foods, through: :inventory_foods
  validates :name, presence: true
  validates :name, uniqueness: { scope: :user }
  validates :description, presence: true
  validates :user, presence: true

end
