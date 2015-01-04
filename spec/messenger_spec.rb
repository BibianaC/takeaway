require 'messenger'

describe Messenger do
	
  let(:messenger) { Messenger.new('test.yaml') }

  it 'should load the configuration file' do
    expect(messenger.account_sid).to eq(123)
    expect(messenger.auth_token).to eq(456)
  end


end