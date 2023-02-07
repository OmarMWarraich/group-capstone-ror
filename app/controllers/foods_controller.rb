class FoodsController < ApplicationController

  def index
    user_id = params[:user_id]
  
    @foods = Food.includes(:user_id).where(user_id:)
  end

  def new
    @food = Food.new
  end
end
