class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @public_recipes = @recipes.where(public: true)
  end
end
