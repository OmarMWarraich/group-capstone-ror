class ChangeColumnsTypesFromRecipes < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :preparationTime, :string
    change_column :recipes, :cookingTime, :string
  end
end
