require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/recipe_foods", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # RecipeFood. As you add validations to RecipeFood, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      RecipeFood.create! valid_attributes
      get recipe_foods_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      recipe_food = RecipeFood.create! valid_attributes
      get recipe_food_url(recipe_food)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_recipe_food_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      recipe_food = RecipeFood.create! valid_attributes
      get edit_recipe_food_url(recipe_food)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new RecipeFood" do
        expect {
          post recipe_foods_url, params: { recipe_food: valid_attributes }
        }.to change(RecipeFood, :count).by(1)
      end

      it "redirects to the created recipe_food" do
        post recipe_foods_url, params: { recipe_food: valid_attributes }
        expect(response).to redirect_to(recipe_food_url(RecipeFood.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new RecipeFood" do
        expect {
          post recipe_foods_url, params: { recipe_food: invalid_attributes }
        }.to change(RecipeFood, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post recipe_foods_url, params: { recipe_food: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested recipe_food" do
        recipe_food = RecipeFood.create! valid_attributes
        patch recipe_food_url(recipe_food), params: { recipe_food: new_attributes }
        recipe_food.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the recipe_food" do
        recipe_food = RecipeFood.create! valid_attributes
        patch recipe_food_url(recipe_food), params: { recipe_food: new_attributes }
        recipe_food.reload
        expect(response).to redirect_to(recipe_food_url(recipe_food))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        recipe_food = RecipeFood.create! valid_attributes
        patch recipe_food_url(recipe_food), params: { recipe_food: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested recipe_food" do
      recipe_food = RecipeFood.create! valid_attributes
      expect {
        delete recipe_food_url(recipe_food)
      }.to change(RecipeFood, :count).by(-1)
    end

    it "redirects to the recipe_foods list" do
      recipe_food = RecipeFood.create! valid_attributes
      delete recipe_food_url(recipe_food)
      expect(response).to redirect_to(recipe_foods_url)
    end
  end
end
