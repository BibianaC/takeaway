require 'customer'

describe Customer do
	
  let(:menu) {DishesList.new}
  let(:customer) { Customer.new(menu) }

  it 'should be able to view the menu' do
    expect(customer.menu.dishes_list).to eq(menu.dishes_list)
  end

  it 'should have an empty order when initialized' do
    expect(customer.order).to be_empty
  end

  it 'should be able to add dishes and total price to the order' do
    dishes = {Tortilla: 2}
    total_price = 8
    customer.add!(dishes, total_price)
    expect(customer.order).not_to be_empty
  end

  it 'should be able to delete all dishes from the order' do
    dishes = {Tortilla: 2}
    total_price = 8
    customer.add!(dishes, total_price)
    customer.delete!(dishes, total_price)
    expect(customer.order).to be_empty
  end
  
end