require 'messenger'

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

describe Messenger do
	
  let(:messenger) { Messenger.new('test.yaml') }
  let(:twillio_messages) { mock(:messages) }

  it 'should load the configuration file' do
    expect(messenger.account_sid).to eq(123)
    expect(messenger.auth_token).to eq(456)
    expect(messenger.sender_num).to eq("+441")
    expect(messenger.receiver_num).to eq("+447")
  end

end
