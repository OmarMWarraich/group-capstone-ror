require 'rails_helper'

RSpec.describe "inventory_foods/show", type: :view do
  before(:each) do
    assign(:inventory_food, InventoryFood.create!(
      quantity: "",
      inventory: nil,
      food: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
