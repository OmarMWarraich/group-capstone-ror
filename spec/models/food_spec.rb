require 'rails_helper'

RSpec.describe Food, type: :model do
  user = User.create(name: 'John')
  food = Food.create(name: 'Apple', price: 1, quantity: 1, measurement_unit: 'kg', user_id: user.id)

  it 'should have a name' do
    expect(food.name).to eq('Apple')
  end

  it 'should have a price' do
    expect(food.price).to eq(1)
  end

  it 'should have a quantity' do
    expect(food.quantity).to eq(1)
  end

  it 'should have a measurement unit' do
    expect(food.measurement_unit).to eq('kg')
  end

  it 'should have a user' do
    expect(food.user_id).to eq(user.id)
  end
end
