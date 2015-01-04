require 'yaml'

class Messenger

  attr_reader :account_sid, :auth_token

  def initialize(filename = 'twilio.yaml')
    twilio = File.open( filename ) { |yf| YAML::load( yf ) }
    @account_sid = twilio['sid']
    @auth_token = twilio['token']
  end

end