class RecipeFoodController < ApplicationController
  def index
    @user = User.all
    @recipe_food = RecipeFood.all
    @recipes = Recipe.all
  end
end
