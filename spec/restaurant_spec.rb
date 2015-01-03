require 'restaurant'

describe Restaurant do
	
  let(:menu) { DishesList.new }
  let(:restaurant) { Restaurant.new(menu) }
  let(:customer) { Customer.new(menu) }

  context 'when initialized' do

    it 'should have a menu' do
      expect(restaurant.menu.dishes_list).to eq(menu.dishes_list)
    end

    it 'should not have orders' do
      expect(restaurant).not_to have_orders
    end

    it 'should not have customers' do
      expect(restaurant.customers).to be_empty
    end

  end

  context 'Receiving customers and orders' do

    it 'should be able to have customers' do
      restaurant.receive!(customer)
      expect(restaurant.customers).not_to be_empty
    end

    it 'should be able to receive an order from the customer' do
      dishes = { Tortilla: 2 }
      total_price = 8
      restaurant.receive!(customer)
      customer.add!(dishes, total_price)
      expect(restaurant).to have_orders
    end

  end

end