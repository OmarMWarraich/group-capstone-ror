require 'rails_helper'

RSpec.describe Recipe, type: :model do
  user = User.create(name: 'John')
  recipe = Recipe.create(name: 'Apple Pie', user_id: user.id, preparation_time: '10min', cooking_time: '20min',
                         description: 'A delicious apple pie', public: true)

  it 'should have a name' do
    expect(recipe.name).to eq('Apple Pie')
  end

  it 'should have a user' do
    expect(recipe.user_id).to eq(user.id)
  end

  it 'should have a preparation time' do
    expect(recipe.preparation_time).to eq('10min')
  end

  it 'should have a cooking time' do
    expect(recipe.cooking_time).to eq('20min')
  end

  it 'should have a description' do
    expect(recipe.description).to eq('A delicious apple pie')
  end

  it 'should be public' do
    expect(recipe.public).to eq(true)
  end
end
