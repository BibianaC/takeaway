require 'menu'

class DishesList; include Menu; end

describe Menu do

  let(:menu) {DishesList.new}
	
  it 'should have dishes' do
    expect(menu).to have_dishes
  end

  it 'should have prices' do
    expect(menu).to have_prices
  end

end