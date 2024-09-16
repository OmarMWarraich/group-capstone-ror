class FoodsController < ApplicationController
  before_action :set_food, only: %i[ show edit update destroy ]

  # GET /foods or /foods.json
  def index
    @foods = Food.all.reverse
  end

  # GET /foods/1 or /foods/1.json
  def show
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods or /foods.json
  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        flash[:notice] = "Food created."
        format.html { redirect_to foods_url }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1 or /foods/1.json
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to food_url, notice: "Food was successfully updated." }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1 or /foods/1.json
    def destroy
    @food = Food.find(params[:id])
    respond_to do |format|
      if @food.destroy
        flash.now[:notice] = "Food was successfully destroyed."
        format.html { redirect_to foods_url, notice: "Food was successfully destroyed." }
        format.json { head :no_content }
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.remove(@food),
            turbo_stream.append("flash-messages", partial: "shared/flash", locals: { notice: flash.now[:notice] })
          ]
        end
      else
        format.html { redirect_to foods_url, alert: "Food could not be destroyed." }
        format.json { render json: @food.errors, status: :unprocessable_entity }
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.append("flash-messages", partial: "shared/flash", locals: { alert: "Food could not be destroyed." })
          ]
        end
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_params
      params.require(:food).permit(:name, :measurement_unit, :price, :user_id)
    end
end
