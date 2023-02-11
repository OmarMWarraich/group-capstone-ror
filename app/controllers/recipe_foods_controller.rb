class RecipeFoodsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.all
  end

  def new
    @recipe_food = RecipeFood.new
    @foods = Food.all
    @recipes = Recipe.all
  end

  def create
    @foods = Food.all
    @recipes = Recipe.all
    @recipe = Recipe.find_by(id: params[:recipe_food][:recipe_id])
    @food = Food.find_by(id: params[:recipe_food][:food_id])
    @recipe_food = RecipeFood.new(**recipe_food_params, recipe_id: @recipe.id, food_id: @food.id)
    if @recipe_food.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity)
  end
end
