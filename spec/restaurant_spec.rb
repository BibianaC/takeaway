require 'restaurant'

describe Restaurant do
	
  let(:menu) {DishesList.new}
  let(:restaurant) { Restaurant.new }
  let(:customer) { Customer.new(menu) }

  it 'should have an empty order when initialized' do
    expect(restaurant.order).to be_empty
  end

  it 'should not have customers when initialized' do
    expect(restaurant.customers).to be_empty
  end

  xit 'should be able to receive an order from the customer' do
    dishes = { Tortilla: 2 }
    total_price = 8
    customer.add!(dishes, total_price)
    expect(restaurant.order).not_to be_empty
  end

end