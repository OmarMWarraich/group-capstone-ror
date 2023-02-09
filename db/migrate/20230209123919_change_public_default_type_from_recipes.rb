class ChangePublicDefaultTypeFromRecipes < ActiveRecord::Migration[7.0]
  def change
    change_column_default :recipes, :public, from: false, to: true
  end
end
