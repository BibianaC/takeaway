require 'customer'

describe Customer do
	
  let(:customer) {Customer.new}

  it 'should have an empty order when initialize' do
    expect(customer.order).to be_empty
  end


end