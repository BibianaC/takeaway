require 'yaml'
require 'twilio-ruby'

class Messenger

  attr_reader :account_sid, :auth_token, :sender_num, :receiver_num

  def initialize(filename = 'twilio.yaml')
    twilio = File.open( filename ) { |yf| YAML::load( yf ) }
    @account_sid = twilio['sid']
    @auth_token = twilio['token']
    @sender_num = twilio['from']
    @receiver_num = twilio['to']
  end

  # def client
  #   @client.account
  # end

end

# set up a client to talk to the Twilio REST API 
# @client = Twilio::REST::Client.new account_sid, auth_token 
 
# @client.account.messages.create({
#   :from => '+441494372322', 
#   :to => '+447450267998', 
#   :body => 'test',  
# })