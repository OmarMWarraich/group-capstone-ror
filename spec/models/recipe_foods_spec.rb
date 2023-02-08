require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  user = User.create(name: 'John')
  food = Food.create(name: 'Apple', price: 1, quantity: 1, measurement_unit: 'kg', user_id: user.id)
  recipe = Recipe.create(name: 'Apple Pie', user_id: user.id)
  recipe_food = RecipeFood.create(food_id: food.id, recipe_id: recipe.id)

  it 'should have a food' do
    expect(recipe_food.food_id).to eq(food.id)
  end

  it 'should have a recipe' do
    expect(recipe_food.recipe_id).to eq(recipe.id)
  end
end
