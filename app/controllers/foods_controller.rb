class FoodsController < ApplicationController
  def index
    user_id = created_by
    @user = User.includes(:foods).find_by(id: user_id)
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_index_path
  end

  def created_by
    params[:user_id]
  end
end
