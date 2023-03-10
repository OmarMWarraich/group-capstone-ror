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

RSpec.describe "/inventory_foods", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # InventoryFood. As you add validations to InventoryFood, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      InventoryFood.create! valid_attributes
      get inventory_foods_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      inventory_food = InventoryFood.create! valid_attributes
      get inventory_food_url(inventory_food)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_inventory_food_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      inventory_food = InventoryFood.create! valid_attributes
      get edit_inventory_food_url(inventory_food)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new InventoryFood" do
        expect {
          post inventory_foods_url, params: { inventory_food: valid_attributes }
        }.to change(InventoryFood, :count).by(1)
      end

      it "redirects to the created inventory_food" do
        post inventory_foods_url, params: { inventory_food: valid_attributes }
        expect(response).to redirect_to(inventory_food_url(InventoryFood.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new InventoryFood" do
        expect {
          post inventory_foods_url, params: { inventory_food: invalid_attributes }
        }.to change(InventoryFood, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post inventory_foods_url, params: { inventory_food: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested inventory_food" do
        inventory_food = InventoryFood.create! valid_attributes
        patch inventory_food_url(inventory_food), params: { inventory_food: new_attributes }
        inventory_food.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the inventory_food" do
        inventory_food = InventoryFood.create! valid_attributes
        patch inventory_food_url(inventory_food), params: { inventory_food: new_attributes }
        inventory_food.reload
        expect(response).to redirect_to(inventory_food_url(inventory_food))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        inventory_food = InventoryFood.create! valid_attributes
        patch inventory_food_url(inventory_food), params: { inventory_food: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested inventory_food" do
      inventory_food = InventoryFood.create! valid_attributes
      expect {
        delete inventory_food_url(inventory_food)
      }.to change(InventoryFood, :count).by(-1)
    end

    it "redirects to the inventory_foods list" do
      inventory_food = InventoryFood.create! valid_attributes
      delete inventory_food_url(inventory_food)
      expect(response).to redirect_to(inventory_foods_url)
    end
  end
end
