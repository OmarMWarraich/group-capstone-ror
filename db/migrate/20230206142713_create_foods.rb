class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.bigint :price
      t.bigint :quantity
      t.string :measurement_unit
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
