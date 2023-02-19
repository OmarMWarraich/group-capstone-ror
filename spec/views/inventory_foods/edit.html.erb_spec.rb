require 'rails_helper'

RSpec.describe "inventory_foods/edit", type: :view do
  let(:inventory_food) {
    InventoryFood.create!(
      quantity: "",
      inventory: nil,
      food: nil
    )
  }

  before(:each) do
    assign(:inventory_food, inventory_food)
  end

  it "renders the edit inventory_food form" do
    render

    assert_select "form[action=?][method=?]", inventory_food_path(inventory_food), "post" do

      assert_select "input[name=?]", "inventory_food[quantity]"

      assert_select "input[name=?]", "inventory_food[inventory_id]"

      assert_select "input[name=?]", "inventory_food[food_id]"
    end
  end
end
