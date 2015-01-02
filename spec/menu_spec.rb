require 'menu'

class DishesList; include Menu; end

describe Menu do

  let(:menu) {DishesList.new}

  it 'should not be empty' do
    expect(menu).not_to be_empty
  end
	
  it 'should contain dishes' do
    expect(menu).to have_dishes
  end

  it 'should contain prices' do
    expect(menu).to have_prices
  end

end