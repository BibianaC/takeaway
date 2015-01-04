require 'yaml'

class Messenger

  attr_reader :account_sid, :auth_token, :sender_num, :receiver_num

  def initialize(filename = 'twilio.yaml')
    twilio = File.open( filename ) { |yf| YAML::load( yf ) }
    @account_sid = twilio['sid']
    @auth_token = twilio['token']
    @sender_num = twilio['from']
    @receiver_num = twilio['to']
  end

end