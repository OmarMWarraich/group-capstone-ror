class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy]
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(**recipe_params, user_id: current_user.id)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def show; end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
