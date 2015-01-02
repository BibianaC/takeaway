require 'restaurant'

describe Restaurant do
	
  let(:restaurant) { Restaurant.new }

  it 'should have an empty order when initialized' do
    expect(restaurant.order).to be_empty
  end

end