class FoodsController < ApplicationController
  def index
    user_id = created_by
    @user = User.includes(:foods).find_by(id: user_id)
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to foods_index_path, notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_index_path
  end

  private

  def created_by
    params[:user_id]
  end

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
