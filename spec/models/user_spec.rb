require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.create(name: 'John')

  it 'should have a name' do
    expect(user.name).to eq('John')
  end
end
