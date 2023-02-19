class InventoryFood < ApplicationRecord
  belongs_to :inventory
  belongs_to :food

  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
  validates :inventory, presence: true
  validates :food, presence: true
  validates :food, uniqueness: { scope: :inventory }
end
