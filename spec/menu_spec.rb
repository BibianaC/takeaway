require 'menu'

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

class DishesList; include Menu; end

describe Menu do

  let(:menu) {DishesList.new}

  it 'should not be empty' do
    expect(menu.dishes_list).not_to be_empty
  end
	
  it 'should contain dishes' do
    expect(menu.dishes_names).not_to be_empty
  end

  it 'should contain prices' do
    expect(menu.dishes_prices).not_to be_empty
  end

end