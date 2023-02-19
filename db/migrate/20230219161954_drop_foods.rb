class DropFoods < ActiveRecord::Migration[7.0]
  def change
    drop_table :foods
  end
end
