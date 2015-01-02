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
    dishes = { Tortilla: 2 }
    total_price = 8
    customer.add!(dishes, total_price)
    expect(customer.order).not_to be_empty
  end

  it 'should be able to delete all dishes from the order' do
    dishes = { Tortilla: 2 }
    total_price = 8
    customer.add!(dishes, total_price)
    customer.delete!(dishes, total_price)
    expect(customer.order).to be_empty
  end

  it 'should be able to delete one dish from the order' do
    customer.add!({ Tortilla: 2 }, 8)
    customer.delete!({ Tortilla: 1 }, 4)
    expect(customer.order).to eq({ Tortilla: 1 })
    expect(customer.total_price).to eq(4)
  end

  it 'should raise an error when the total price is incorrect' do
    expect(lambda { customer.add!({ Tortilla: 2 }, 9) }).to raise_error(RuntimeError, 'Total price is not correct')
  end

end